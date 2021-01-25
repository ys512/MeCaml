open Norm
open Expr
open Env

let eq t1 t2 tag_env type_env = 
	let t1' = normalize t1 tag_env type_env [] in
	let t2' = normalize t2 tag_env type_env [] in
	t1' = t2'
			
let rec check_comp c typing_env =
	match c with
		| Unit -> NUnit
		| Bool _ -> NBool
		| Int _ -> NInt
		| Var x -> find typing_env x "var"
		| Tag a -> find tag_env a "tag"; NTag a
		| Align c1 -> NAlign (check_comp c1)
		| Pair (c1, c2) -> 
			let t1 = check_comp c1 typing_env in
			let t2 = check_comp c2 typing_env in
			NProd (t1, t2)
		| New c1 -> NRef (check_comp c1)
		| Lambda (x, t, c1) -> 
			let t' = check_comp c1 (x, t)::typing_env 
			in NFun (t, t')
		| Match (c, cases) ->
			check_match c cases typing_env
		| App(c1, c2) ->
			let t1 = check_comp c1 typing_env in
			let t2 = check_comp c2 typing_env in
			( match t1 with
			| NFun(t3, t4) -> if t2 = t3 then t4 else failwith "application with argument of wrong type"
			| _ -> failwith "cannot apply with non-functions")
		| 

and check_match c cases typing_env = 
	let t = check_comp c typing_env in
	let check_case (pattern, result) = 
		match t with
		| NMatch(ttag, tcases) ->
			let tagset = List.assoc ttag tag_env in
			( match pattern with
			| Pair(tag, Var x) ->
				if List.mem tag tagset 
				then
					let tx = find tag tcases in
					find check_comp result (x, tx)::typing_env
				else undef "tag" tag
			| _ -> failwith "inconsistent match")
		| NTag ttag ->
			let tagset = List.assoc ttag tag_env in
			( match pattern with
			| Tag x ->
				if List.mem tag tagset 
				then
					find check_comp result typing_env
				else undef "tag" tag
			| _ -> failwith "inconsistent match")
		| NRef tx -> 
			( match pattern with
			| New x ->
				find check_comp result (x, tx)::typing_env
			| _ -> failwith "inconsistent match")
		| NAlign tx ->
			( match pattern with
			| Align x ->
				find check_comp result (x, tx)::typing_env
			| _ -> failwith "inconsistent match")
		| NProd(tx, ty) ->
			( match pattern with
			| Pair(x, y) -> 
				find check_comp result (x, tx)::(y::ty)::typing_env
			| _ -> failwith "inconsistent match")
		| _ -> failwith "match on malformed value" in
	let check_cases cases =
		match cases with
		| [case] -> check_case case
		| case::tail -> 
			let tcase = check_case case in
			if tcase = check_cases tail then tcase
			else failwith "inconsistent match" in
	check_cases tcases