open Util
open Ntype
open Norm
open Expr
open Printf

exception Inconsistent_types

let rec eq t1 t2 = 
	if t1 = t2 then true
	else false
		(* match t1, t2 with
		| NVar t, _ -> eq (Env.lookup_type t) t2
		| _, NVar t -> eq t1 (Env.lookup_type t)
		| NRef ta, NRef tb -> eq ta tb
		| NAlign ta, NAlign tb -> eq ta tb
		| NProd (t1a, t1b), NProd (t2a, t2b) -> 
			(eq t1a t2a) && (eq t1b t2b)
		| NFun (t1a, t1b), NFun (t2a, t2b) -> 
			(eq t1a t2a) && (eq t1b t2b)
		| NMatch (ta1, cases1), NMatch (ta2, cases2) ->
			(ta1 = ta2 && try 
				List.for_all2
				(fun (a, t1a) (b, t2b)-> a = b && eq t1a t2b) 
				cases1 cases2
			with Invalid_argument _ -> false)
		| _ -> false *)

let fail_typechecker msg = ksprintf failwith "Type_checker Error: %s\n" msg

let constructor_mismatch t constr = 
	sprintf "constructor mismatch: expecting type %s, given constructor %s" (Pprint.str_type t) constr

let type_mismatch t1 t2 =
	sprintf "type mismatch:\nexpecting type %s,\n given type %s" (Pprint.str_type t1) (Pprint.str_type t2)

let num_type t = 
	match t with
	| NChar | NShort | NInt -> true
	| _ -> false

let rec (<<) t1 t2 =
	match t1, t2 with
	| NShort, NInt
	| NChar, NInt
	| NChar, NShort -> true
	| NRef a, NRef b -> a << b
	(* | NAlign a, NAlign b -> a << b *)
	| NProd(a1, b1), NProd(a2, b2) -> a1 << a2 && b1 << b2
	| NFun(a1, b1), NFun(a2, b2) -> a2 << a1 && b1 << b2
	| _ -> t1 = t2

let maxt t1 t2 =
	if t1 << t2 then t2 else 
	if t2 << t1 then t1 else
		raise Inconsistent_types

let match_type t1 t2 =
	match t1 with
	| Some t -> if eq t t2 then t 
		else fail_typechecker (type_mismatch t t2)
	| None -> t2

let match_variant t a = 
	match t with
	| NMatch (ta, cases) -> ( 
		try List.assoc a cases
		with Not_found -> 
			ksprintf fail_typechecker "tag %s does not belong to variant %s" a (Pprint.str_type t))
	| _ -> ksprintf fail_typechecker "type %s is not a variant" (Pprint.str_type t)

let convert_bop op =
	match op with
	| Pst.ADD -> Tst.ADD
	| Pst.SUB -> Tst.SUB
	| Pst.MUL -> Tst.MUL
	| Pst.DIV -> Tst.DIV

let convert_cop op =
	match op with
	| Pst.LT -> Tst.LT
	| Pst.GT -> Tst.GT
	| Pst.EQ -> Tst.EQ

let check_var x env = 
	try	
		let t = List.assoc x env in
		(Tst.Var x, t), t
	with Not_found -> ksprintf fail_typechecker "undefined variable %s" x

let check_int n =
	let len = Size.bits n in
	let t = 
		if len > 16 then NInt 
		else if len > 8 then NShort 
		else NChar in
	(Tst.Int n, t), t


let check_tag a = 
	try 
		let ta = Env.lookup_tag a in
		(Tst.Tag a, NTag ta), NTag ta 
	with Env.Not_in_env m -> fail_typechecker m

let check_typed (c: Pst.comp) t env = (Tst.Unit, Ntype.NUnit), Ntype.NUnit

let rec	check (c:Pst.comp) (env:(string * ntype) list) =
	match c with
		| Pst.Unit 						-> (Tst.Unit, 	NUnit), NUnit
		| Pst.Bool b 					-> (Tst.Bool b,	NBool), NBool
		| Pst.Int n 					-> check_int n
		| Pst.Tag a						-> check_tag a
		| Pst.Var x 					-> check_var x env
		(* | Pst.Align c1 				-> check_align c1 env *)
		| Pst.Bop (op, c1, c2)-> check_bop op c1 c2 env
		| Pst.If (c1, c2, c3)	-> check_if c1 c2 c3 env
		| Pst.Pair (c1, c2) 	-> check_pair c1 c2 env
		| New c1 							-> check_new c1 env
		| Match (c, cases) 		-> check_match c cases env
		| Let (x, c1, c2)			-> check_let x c1 c2 env
		| LetRec (f, (c1, t), c2)	-> check_letrec f t c1 c2 env
		| Lambda (x, t, c)		-> check_lambda x t c env
		| App(f, arg) 				-> check_app f arg env
		| Typed(c1, t1) 			-> check_typed c1 t1 env
		| _ 									-> fail_typechecker "unable to typecheck, need more information"
		(* | Pst.Block (a, c1)   -> check_block a c1 env *)

(* and check_align c env = 
		let (cc, tc) = check c env in
		(Tst.Align (check c env), NAlign tc) *)

and check_bop op c1 c2 env = 
		let cc1, tc1 = check c1 env in
		let cc2, tc2 = check c2 env in
		if num_type tc1 && num_type tc2 then
			let t = maxt tc1 tc2 in
			(Tst.Bop (convert_bop op, cc1, cc2), t), t
		else
			fail_typechecker "arithmetics have to be performed on numeric types"

and check_cop op c1 c2 env = 
	let cc1, tc1 = check c1 env in
	let cc2, tc2 = check c2 env in
	if num_type tc1 && num_type tc2 then
		(Tst.Bop (convert_bop op, cc1, cc2), NBool), NBool
	else
		fail_typechecker "comparisons have to be performed on numeric types"

and check_if c1 c2 c3 env = 
	let cc1, tc1 = check c1 env in
	match tc1 with
	| NBool -> (
		let cc2, tc2 = check c2 env in
		let cc3, tc3 = check c3 env in
		try let tc = maxt tc2 tc3 in
				(Tst.If (cc1, cc2, cc3), tc), tc
		with Inconsistent_types ->
			ksprintf fail_typechecker "if statement has inconsistent types: %s and %s" 
				(Pprint.str_type tc2) (Pprint.str_type tc3))
	| _ -> fail_typechecker "predicate must be boolean"

and check_pair c1 c2 env = 
	let (cc1, tc1) = check c1 env in
	let (cc2, tc2) = check c2 env in
	let t = NProd (tc1, tc2) in 
	(Tst.Pair (cc1, cc2), t), t
	
and check_block a c target env = 
		try
			let ta = Env.lookup_tag a in
			let tv = Env.lookup_variant ta in
			let tc = match_variant tv a in
			let cc, _ = check_typed c tc env in
			let t = NProd (NTag ta, tc) in
			(Tst.Pair ((Tst.Tag a, NTag ta), cc), t), t
		with Env.Not_in_env m -> fail_typechecker m

and check_new c env = 
		let cc, tc = check c env in
		let t = NRef tc in
		(Tst.New cc, t), t

and check_match c cases env = 
	let cc, tc = check c env in
	let check_case (pattern, result) = 
		let p, e = Pattern.check_pattern pattern tc in
		let c, t = check result (e @ env) in
		(p, c), t in
	let rec check_cases cases = 
		match cases with
		| [case] -> 
			let case, t = check_case case in [case], t
		| case::cases -> 
			(let cases, t = check_cases cases in
			let case, t' = check_case case in
			try case::cases, maxt t t' with
			Inconsistent_types ->
				ksprintf fail_typechecker "type mismatch between cases: \n%s \n%s"
				(Pprint.str_type t) (Pprint.str_type t'))
		| _ -> fail_typechecker "match expressions need at least one case"
	in 
	let cases, t = check_cases cases in
	(Tst.Match (cc, cases), t), t

and check_lambda x t_arg c env = 
	let tx = norm t_arg in
	let (cc, tc) = check c ((x, tx)::env) in
	let t = NFun (tx, tc) in
	(Tst.Lambda (x, cc), t), t

and check_app f arg env = 
	let (cf, tf) = check f env in
	( match tf with
	| NFun (t_arg, t_body) ->
		let cx, tx = check arg env in
		if tx << t_arg then (Tst.App (cf, cx), t_body), t_body
		else fail_typechecker (type_mismatch tx t_arg)
	| _ -> fail_typechecker "cannot apply with non functions")

and check_let x c1 c2 env = 
	let c1, t1 = check c1 env in
	let c2, t2 = check c2 ((x, t1)::env) in
	(Tst.Let (x, c1, c2), t2), t2

and check_letrec f t c1 c2 env = 
	let t = norm t in
	let c1, t1 = check c1 ((f,t)::env) in
	let c2, t2 = check c2 ((f,t)::env) in
	(Tst.LetRec (f, c1, c2), t2), t2