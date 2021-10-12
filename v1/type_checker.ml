open Util
open Ntype
open Norm
open Expr
open Printf

let rec eq t1 t2 = 
	if t1 = t2 then true
	else false

let fail_typechecker msg = ksprintf failwith "Type_checker: %s: %s\n" (Env.get_current_var ()) msg

let constructor_mismatch t constr = 
	sprintf "constructor mismatch: expecting type %s, given constructor %s" (Pprint.str_type t) constr

let type_mismatch t1 t2 =
	sprintf "inconsistent types: %s and %s" (Pprint.str_type t1) (Pprint.str_type t2)

let num_type t = 
	match t with
	| NChar | NShort | NInt -> true
	| _ -> false	

let rec (<<) t1 t2 =
	match t1, t2 with
	| NShort, NInt
	| NChar, NInt
	| NChar, NShort -> true
	| _ -> t1 = t2

let match_type t1 t2 =
	match t2 with
	| Some t2 -> if t1 << t2 then t2 
		else fail_typechecker (type_mismatch t1 t2)
	| None -> t1

let maxt t1 t2 =
	if t1 << t2 then t2 else 
	if t2 << t1 then t1 else
	fail_typechecker (type_mismatch t1 t2)

let convert_bop op =
	match op with
	| Pst.ADD -> Tst.ADD
	| Pst.SUB -> Tst.SUB
	| Pst.MUL -> Tst.MUL
	| Pst.DIV -> Tst.DIV
	| Pst.MOD -> Tst.MOD

let convert_cop op =
	match op with
	| Pst.LT -> Tst.LT
	| Pst.GT -> Tst.GT
	| Pst.EQ -> Tst.EQ

let check_int n target =
	let len = Expr.clog n in
	let t = 
		if len > 16 then NInt 
		else if len > 8 then NShort 
		else NChar in
	(Tst.Int n, match_type t target)

let check_var x target typing_env = 
	try
		let tx = List.assoc x typing_env in
		(Tst.Var x, match_type tx target)
	with Not_found -> ksprintf fail_typechecker "undefined variable %s" x

let check_tag a target = 
		match target with
		| Some (NTag ta) -> 
			let tagset = Env.lookup_tagset ta in
			if List.mem a tagset then 
				(Tst.Tag a, NTag ta)
			else failwith (a ^ "not in tagset" ^ ta)
		| None -> ksprintf fail_typechecker "unable to determine tagset of tag %s\n" a
		| Some t -> fail_typechecker (constructor_mismatch t "Tag")

(* Here could be improved, could combine env inference with typing checking, left as extension *)
let rec extract_pattern pattern target = 
	match pattern, target with
	| Pst.Tag a, _ -> []
	| Pst.Var x, _ -> [(x, target)]
	| Pst.Pair (c1, c2), NProd (t1, t2) -> extract_pattern c1 t1 @ extract_pattern c2 t2
	| Pst.Block (a, c) , NMatch (_, cases) -> let t = find a cases "tag" in extract_pattern c t
	| Pst.New c, NRef t -> extract_pattern c t
	(* | Pst.Align c, NAlign t -> extract_pattern c t *)
	| _ -> fail_typechecker "malformed pattern in match expression"



let rec	check_comp (c:Pst.comp) target (typing_env:(string * ntype) list):Tst.tcomp =
	match c with
		| Pst.Unit 						-> (Tst.Unit, 	match_type NUnit target)
		| Pst.Bool b 					-> (Tst.Bool b,	match_type NBool target)
		| Pst.Int n 					-> check_int n target
		| Pst.Var x 					-> check_var x target typing_env
		| Pst.Tag a 					-> check_tag a target
		| Pst.Cop (op, c1, c2)-> check_cop op c1 c2 target typing_env
		| Pst.Bop (op, c1, c2)-> check_bop op c1 c2 target typing_env
		| Pst.If (c1, c2, c3)	-> check_if c1 c2 c3 target typing_env
		| Pst.Pair (c1, c2) 	-> check_pair c1 c2 target typing_env
		| Pst.Block (a, c1)   -> check_block a c1 target typing_env
		| New c1 							-> check_new c1 target typing_env
		| Match (c, cases) 		-> check_match c cases target typing_env
		| Let (x, c1, c2)			-> check_let x c1 c2 target typing_env
		| LetRec (f, (c1, t), c2)	-> check_letrec f t c1 c2 target typing_env
		| Lambda (x, t, c)		-> check_lambda x t c target typing_env
		| App(f, arg) 				-> check_app f arg target typing_env
		| Typed(c1, t1) 			-> check_comp c1 (Some (norm t1)) typing_env
		(* | Pst.Align c1 				-> check_align c1 target typing_env *)

(* and check_align c target typing_env = 
	match target with
	| Some (NAlign t1) -> 
		let cc = check_comp c (Some t1) typing_env in
		(Tst.Align cc, NAlign t1)
	| None ->
		let (cc, tc) = check_comp c None typing_env in
		(Tst.Align (cc, tc), NAlign tc)
	| Some t -> fail_typechecker (constructor_mismatch t "Align") *)

and check_cop op c1 c2 target typing_env =
	let checked_c1 = check_comp c1 None typing_env in
	let checked_c2 = check_comp c2 None typing_env in
	if num_type (snd checked_c1) && num_type (snd checked_c2) then
		(Tst.Bop (convert_cop op, checked_c1, checked_c2), NBool)
	else
		fail_typechecker "comparisons can only be performed between numeric types"	

and check_bop op c1 c2 target typing_env = 
	let (c1, t1) = check_comp c1 target typing_env in
	let (c2, t2) = check_comp c2 target typing_env in
	(Tst.Bop (convert_bop op, (c1, t1), (c2, t2)), match_type (maxt t1 t2) target)

and check_if c1 c2 c3 target typing_env = 
	let checked_c1 = check_comp c1 (Some NBool) typing_env in
	let checked_c2 = check_comp c2 target typing_env in
	let checked_c3 = check_comp c3 target typing_env in
	(Tst.If (checked_c1, checked_c2, checked_c3), snd checked_c2)

and check_pair c1 c2 target typing_env = 
	match target with
	| Some (NProd (t1, t2)) ->
		let (cc1, tc1) = check_comp c1 (Some t1) typing_env in
		let (cc2, tc2) = check_comp c2 (Some t2) typing_env in 
		(Tst.Pair ((cc1, tc1), (cc2, tc2)), NProd(tc1, tc2))
	| None -> 
		let (cc1, tc1) = check_comp c1 None typing_env in
		let (cc2, tc2) = check_comp c2 None typing_env in 
		(Tst.Pair ((cc1, tc1), (cc2, tc2)), NProd(tc1, tc2))
	| Some t -> fail_typechecker (constructor_mismatch t "Pair")

and check_block a c target typing_env = 
	match target with
	| Some (NMatch (ta, cases)) ->
		let ca = check_tag a (Some (NTag ta)) in 
		let cc = check_comp c (Some (List.assoc a cases)) typing_env in
		(Tst.Block (ca, cc), NMatch(ta, cases))
	| Some t -> fail_typechecker (constructor_mismatch t "Block")
	| None -> ksprintf fail_typechecker "unable to determine tagset of tag %s" a

and check_new c target typing_env = 
	match target with
	| Some (NRef t1) -> 
		let (cc, tc) = check_comp c (Some t1) typing_env in
		(Tst.New (cc, tc), NRef tc)
	| None ->
		let (cc, tc) = check_comp c None typing_env in
		(Tst.New (cc, tc), NRef tc)
	| Some t -> fail_typechecker (constructor_mismatch t "New")


and check_match c cases target typing_env = 
	let cc, tc = check_comp c None typing_env in
	let check_case (pattern, result) = 
		let e_pat = extract_pattern pattern tc in
		let c_pat = check_comp pattern (Some tc) e_pat in
		let c_res = check_comp result target (e_pat@typing_env) in
		(c_pat, c_res), snd c_res in
	let rec check_cases cases = 
		match cases with
		| [case] -> 
			let case, t = check_case case in [case], t
		| case::cases -> 
			let cases, t = check_cases cases in
			let case, t' = check_case case in
			case::cases, maxt t t'
		| _ -> fail_typechecker "match needs at least one case"
	in 
	let c_cases, t_cases = check_cases (List.rev cases) in
	(Tst.Match ((cc, tc), c_cases), t_cases)

and check_lambda x t_arg c target typing_env = 
	let tx = norm t_arg in
	match target with
	| Some (NFun (tx', tc)) -> 
		if tx = tx' then
			let checked_c = check_comp c (Some tc) ((x, tx)::typing_env) 
			in (Tst.Lambda (x, checked_c), NFun (tx, tc))
		else
			fail_typechecker (type_mismatch tx tx')
	| None -> 
		let (cc, tc) = check_comp c None ((x, tx)::typing_env) 
			in (Tst.Lambda (x, (cc, tc)), NFun (tx, tc))
	| Some t -> fail_typechecker (constructor_mismatch t "Lambda")

and check_app f arg target typing_env = 
	let (cf, tf) = check_comp f None typing_env in
	( match tf with
	| NFun (t_arg, t_body) ->
		let checked_arg = check_comp arg (Some t_arg) typing_env in
		(Tst.App ((cf, tf), checked_arg), match_type t_body target)
	| _ -> ksprintf fail_typechecker "cannot apply with non functions - %s" (Pprint.str_type tf))

and check_let x c1 c2 target typing_env = 
	let checked_c1 = check_comp c1 None typing_env in
	let checked_c2 = check_comp c2 target ((x, snd checked_c1)::typing_env) in
	Tst.Let (x, checked_c1, checked_c2), snd checked_c2

and check_letrec f t c1 c2 target typing_env = 
	let nt = norm t in
	let checked_c1 = check_comp c1 (Some nt) ((f,nt)::typing_env) in
	let checked_c2 = check_comp c2 target ((f,nt)::typing_env) in
	Tst.LetRec (f, checked_c1, checked_c2), snd checked_c2


let check_typed (c: Pst.comp) t = check_comp c (Some t) []

let check c = check_comp c None []