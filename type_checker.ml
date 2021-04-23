open Util
open Ntype
open Norm
open Expr

let eq t1 t2 = (t1 = t2)
	
let match_type t1 t2 =
	match t1 with
	| Some t -> if eq t t2 then t else failwith "incompatible types"
	| None -> t2

let check_var x target typing_env = 
	(Tst.Var x,  match_type target (List.assoc x typing_env))

let check_tag a target = 
		match target with
		| Some (NTag ta) -> 
			let tagset = List.assoc ta !Env.tag_env in
			if List.mem a tagset then 
				(Tst.Tag a, NTag ta) 
			else failwith (a ^ "not in tagset" ^ ta)
		| None -> failwith "unable to determine tagset"
		| _ -> failwith "incompatible types"

(* Here could be improved, could combine env inference with typing checking, left as extension *)
let rec extract_pattern pattern target = 
	match pattern, target with
	| Pst.Tag a, _ -> []
	| Pst.Var x, _ -> [(x, target)]
	| Pst.Pair (c1, c2), NProd (t1, t2) -> extract_pattern c1 t1 @ extract_pattern c2 t2
	| Pst.Block (a, c) , NMatch (_, cases) -> let t = find a cases "tag" in extract_pattern c t
	| Pst.Align c, NAlign t -> extract_pattern c t
	| Pst.New c, NRef t -> extract_pattern c t
	| _ -> failwith "inconsistent match"

let rec check_match c cases target typing_env = 
	let cc, tc = check_comp c None typing_env in
	let check_case (pattern, result) target = 
		let e_pat = extract_pattern pattern tc in
		let c_pat = check_comp pattern (Some tc) e_pat in
		let c_res = check_comp result target (typing_env@e_pat) in
		(c_pat, c_res) in
	let rec check_cases cases target acc = 
		match cases with
		| [] -> 
			( match target with 
			| Some t -> (acc, t)
			| None -> failwith "match needs at least one case")			
		| head::tail -> 
			let checked_head = check_case head target in
			let t_head =  snd (snd checked_head) in
			check_cases tail (Some t_head) (checked_head::acc)
	in 
	let c_cases, t_cases = check_cases (List.rev cases) target [] in
	(Tst.Match ((cc, tc), c_cases), t_cases)

and check_align c target typing_env = 
	match target with
	| Some (NAlign t1) -> 
		let cc = check_comp c (Some t1) typing_env in
		(Tst.Align cc, NAlign t1)
	| None ->
		let (cc, tc) = check_comp c None typing_env in
		(Tst.Align (cc, tc), NAlign tc)
	| _ -> failwith "incompatible types"

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
	| _ -> failwith "incompatible types"

and check_block a c target typing_env = 
	match target with
	| Some (NMatch (ta, cases)) ->
		let ca = check_tag a (Some (NTag ta)) in 
		let cc = check_comp c (Some (List.assoc a cases)) typing_env in
		(Tst.Block (ca, cc), NMatch(ta, cases))
	| _ -> failwith "incompatible types"

and check_new c target typing_env = 
	match target with
	| Some (NRef t1) -> 
		let (cc, tc) = check_comp c (Some t1) typing_env in
		(Tst.New (cc, tc), NRef tc)
	| None ->
		let (cc, tc) = check_comp c None typing_env in
		(Tst.New (cc, tc), NRef tc)
	| _ -> failwith "incompatible types"

and check_lambda x t c target typing_env = 
	let tx = norm t in
	match target with
	| Some (NFun (tx', tc)) -> 
		if tx = tx' then
			let checked_c = check_comp c (Some tc) ((x, tx)::typing_env) 
			in (Tst.Lambda (x, checked_c), NFun (tx, tc))
		else
			failwith "incompatible types"
	| None -> 
		let (cc, tc) = check_comp c None ((x, tx)::typing_env) 
			in (Tst.Lambda (x, (cc, tc)), NFun (tx, tc))
	| _ -> failwith "incompatible types"

and check_app f arg target typing_env = 
	let (cf, tf) = check_comp f None typing_env in
	( match tf with
	| NFun (t_arg, t_body) ->
		let checked_arg = check_comp arg (Some t_arg) typing_env in
		(Tst.App ((cf, tf), checked_arg), match_type target t_body)
	| _ -> failwith "cannot apply with non functions")

and check_let x c1 c2 target typing_env = 
	let checked_c1 = check_comp c1 None typing_env in
	let checked_c2 = check_comp c2 target ((x, snd checked_c1)::typing_env) in
	Tst.Let (x, checked_c1, checked_c2), snd checked_c2

and	check_comp (c:Pst.comp) target (typing_env:(string * ntype) list):Tst.tcomp =
	match c with
		| Pst.Unit 						-> (Tst.Unit, 	match_type target NUnit)
		| Pst.Bool b 					-> (Tst.Bool b,	match_type target NBool)
		| Pst.Int n 					-> (Tst.Int n,  match_type target NInt)
		| Pst.Var x 					-> check_var x target typing_env
		| Pst.Tag a 					-> check_tag a target
		| Pst.Align c1 				-> check_align c1 target typing_env
		| Pst.Pair (c1, c2) 	-> check_pair c1 c2 target typing_env
		| Pst.Block (a, c1)   -> check_block a c1 target typing_env
		| New c1 							-> check_new c1 target typing_env
		| Let (x, c1, c2)			-> check_let x c1 c2 target typing_env
		| Lambda (x, t, c)		-> check_lambda x t c target typing_env
		| Match (c, cases) 		-> check_match c cases target typing_env
		| App(f, arg) 				-> check_app f arg target typing_env
		| Typed(c1, t1) 			-> check_comp c1 (Some (norm t1)) typing_env

let check_typed (c: Pst.comp) t = check_comp c (Some t) []

let check c = check_comp c None []






	(* let check_case (pattern, result) = 
		match t with
		| NMatch (ttag, tcases) ->
			let tagset = List.assoc ttag !tag_env in
			( match pattern with
			| Pair (Tag a, Var x) ->
				if List.mem a tagset 
				then
					let tx = find a tcases "tag" in
					check_comp result target ((x, tx)::typing_env)
				else undef "tag" a
			| _ -> failwith "inconsistent match")
		| NTag ttag ->
			let tagset = List.assoc ttag !tag_env in
			( match pattern with
			| Tag a ->
				if List.mem a tagset 
				then
					check_comp result target typing_env
				else undef "tag" a
			| _ -> failwith "inconsistent match")
		| NRef tx -> 
			( match pattern with
			| New (Var x) ->
				check_comp result target ((x, tx)::typing_env)
			| _ -> failwith "inconsistent match")
		| NAlign tx ->
			( match pattern with
			| Align (Var x) ->
				check_comp result target ((x, tx)::typing_env)
			| _ -> failwith "inconsistent match")
		| NProd (tx, ty) ->
			( match pattern with
			| Pair (Var x, Var y) -> 
				check_comp result target ((x, tx)::(y, ty)::typing_env)
			| _ -> failwith "inconsistent match")
		| _ -> failwith "match on malformed value" in *)