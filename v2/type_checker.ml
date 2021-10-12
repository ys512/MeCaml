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

let inconsistent_types t1 t2 =
	sprintf "inconsistent types:\n  %s,\n  %s" (Pprint.str_type t1) (Pprint.str_type t2)

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
	(* | NProd(a1, b1), NProd(a2, b2) -> a1 << a2 && b1 << b2 *)
	| NFun(a1, b1), NFun(a2, b2) -> a2 << a1 && b1 << b2
	| _ -> t1 = t2

let maxt t1 t2 =
	if t1 << t2 then t2 else 
	if t2 << t1 then t1 else
	fail_typechecker (inconsistent_types t1 t2)

let match_type t1 t2 =
	if t1 << t2 then t2 else fail_typechecker (inconsistent_types t1 t2)

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
	| Pst.MOD -> Tst.MOD
	| Pst.LT 	-> Tst.LT
	| Pst.GT 	-> Tst.GT
	| Pst.EQ 	-> Tst.EQ
	
let cast (c, t) t' = 
	let t = match_type t t' in (c, t), t

let check_var x env = 
	try	
		let t = List.assoc x env in
		(Tst.Var x, t), t
	with Not_found -> ksprintf fail_typechecker "undefined variable %s" x

let check_int n =
	let len = Size.clog n in
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
	
let check_typed_tag a ta = 
	try
		if Env.mem_tag a ta then (Tst.Tag a, NTag ta), NTag ta 
		else ksprintf fail_typechecker "tag %s not in tagset %s" a ta
	with Env.Not_in_env m -> fail_typechecker m

let make_bop (op:Tst.bop) (c1, t1) (c2, t2) =
	if num_type t1 && num_type t2 then
	let t = 
	match op with
	| ADD | SUB | MUL | DIV | MOD	-> maxt t1 t2
	| GT  | LT  | EQ 							-> NBool in
	(Tst.Bop (op, c1, c2), t), t
	else
		fail_typechecker "binary ops have to be performed on numeric types"

let make_if (c1, t1) (c2, t2) (c3, t3) = 
	match t1 with
	| NBool -> (let t = maxt t2 t3 in (Tst.If (c1, c2, c3), t), t)
	| _ -> fail_typechecker "predicate must be boolean"

	
let make_pair (c1, t1) (c2, t2) = 
	let t = NProd (t1, t2) in 
	(Tst.Pair (c1, c2), t), t

let make_new (c, t) = 
	let t = NRef t in (Tst.New c, t), t

let make_lambda (x, tx) (c, tc) = 
	let t = NFun (tx, tc) in (Tst.Lambda (x, c), t), t

let make_let x (c1, t1) (c2, t2) = (Tst.Let (x, c1, c2), t2), t2

let make_letrec f (c1, t1) (c2, t2) = (Tst.LetRec (f, c1, c2), t2), t2

let rec	check (c:Pst.comp) (env:(string * ntype) list) =
	match c with
	| Unit 										-> (Tst.Unit, 	NUnit), NUnit
	| Bool b 									-> (Tst.Bool b,	NBool), NBool
	| Int n 									-> check_int n
	| Tag a										-> check_tag a
	| Var x 									-> check_var x env
	| Bop (op, c1, c2)				-> make_bop (convert_bop op) (check c1 env) (check c2 env)
	| If (c1, c2, c3)					-> make_if (check c1 env) (check c2 env) (check c3 env)
	| Pair (c1, c2) 					-> make_pair (check c1 env) (check c2 env)
	| Block (a, c1)   				-> ( 
		try
			let ta = Env.lookup_tag a in
			let t = Env.lookup_variant ta in
			check_typed c t env
		with Env.Not_in_env m -> fail_typechecker m)
	| New c1 									-> make_new (check c1 env)
	| Match (c, cases) 				-> check_match c cases env
	| Let (x, c1, c2)					-> 	
		let c1, t1 = check c1 env in
		let c2, t2 = check c2 ((x, t1)::env) in
		make_let x (c1, t1) (c2, t2)
	| LetRec (f, (c1, t), c2)	-> 
		let t = norm t in
		let c1 = check_typed c1 t ((f,t)::env) in
		let c2 = check c2 ((f,t)::env) in
		make_letrec f c1 c2
	| Lambda (x, t, c)				-> 
		let e = (x, norm t) in
		let c = check c (e::env) in
		make_lambda e c
	| App(f, arg) 						-> check_app f arg env
	| Typed(c1, t1) 					-> check_typed c1 (norm t1) env
	(* | Pst.Align c1 				-> check_align c1 env *)

(* and check_align c env = 
		let (cc, tc) = check c env in
		(Tst.Align (check c env), NAlign tc) *)

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

and check_app f arg env = 
	let (cf, tf) = check f env in
	( match tf with
	| NFun (t_arg, t_body) ->
		let cx, tx = check arg env in
		if tx << t_arg then (Tst.App (cf, cx), t_body), t_body
		else fail_typechecker (inconsistent_types tx t_arg)
	| _ -> fail_typechecker "cannot apply with non functions")	

and check_typed c t env = 
	match c, t with
	| Tag a, NTag ta										-> check_typed_tag a ta
	| If (c1, c2, c3), _								-> make_if (check c1 env) (check_typed c2 t env) (check_typed c3 t env)
	| Pair (c1, c2), NProd (t1, t2)			-> make_pair (check_typed c1 t1 env) (check_typed c2 t2 env) 
	| Block (a, c1), NMatch (ta, cases)	-> make_pair (check_typed_tag a ta) (check_typed c1 (List.assoc a cases) env)
	| New c1, NRef t1										-> make_new (check_typed c1 t1 env)
	| Match (c, cases), _ 							-> check_typed_match c cases t env
	| Let (x, c1, c2), _								-> 	
		let c1, t1 = check c1 env in
		let c2, t2 = check_typed c2 t ((x, t1)::env) in
		make_let x (c1, t1) (c2, t2)
	| LetRec (f, (c1, t), c2), _				-> 
		let t = norm t in
		let c1 = check_typed c1 t ((f,t)::env) in
		let c2 = check_typed c2 t ((f,t)::env) in
		make_letrec f c1 c2
	| Lambda (x, t, c), NFun (tx, ty)		-> 
		let e = (x, match_type (norm t) tx) in
		let c = check_typed c ty (e::env) in
		make_lambda e c
	| _ 																-> cast (fst (check c env)) t

and check_typed_match c cases t env = 
	let cc, tc = check c env in
	let check_case (pattern, result) = 
		let p, e = Pattern.check_pattern pattern tc in
		let c, _ = check_typed result t (e @ env) in (p, c) in
	(Tst.Match (cc, List.map check_case cases), t), t