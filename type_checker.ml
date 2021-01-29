open Norm
open Expr
open Env

let eq t1 t2 = (t1 = t2)
	
let match_type t1 t2 = if t1 = t2 then t1 else failwith "incompatible types"
			
let rec check_comp c target typing_env =
	match c with
		| Unit -> match_type(target, NUnit)
		| Bool _ -> match_type(target, NBool)
		| Int _ -> match_type(target, NInt)
		| Var x -> match_type(target, find typing_env x "var")
		| Tag a -> 
			( match target with
			| NTag a' -> 
				let tagset = find tag_env a' "tag" in
				if List.mem a tagset then target else failwith (a ^ "not in tagset" ^ a')
			| _ -> failwith "incompatible types")
		| Align c' -> 
			( match target with
			| NAlign t' -> 
				let _ = check_comp c' t' typing_env in target
			| _ -> failwith "incompatible types")
		| Pair (c1, c2) -> 
			( match target with
			| NProd (t1, t2) ->
				let _ = check_comp c1 t1 typing_env in
				let _ = check_comp c2 t2 typing_env in target
			| NMatch (a, cases) ->
				let _ = check_comp c1 (NTag a) typing_env in
				let _ = check_comp c2 (List.assoc a cases) typing_env in target
			| _ -> failwith "incompatible types")	
			NProd (t1, t2)
		| New c1 -> 
			( match target with
			| NRef t' -> 
				let _ = check_comp c' t' typing_env in target
			| _ -> failwith "incompatible types")
		| Lambda (x, t, c1) -> 
			( match target with
			| NFun (t1, t2) -> 
				if t = t1 then
					let _ = check_comp c' t2 (x, t)::typing_env in target
				else
					failwith "incompatible types"
			| _ -> failwith "incompatible types")
		| Match (c, cases) ->
			check_match c cases target typing_env
		| App(c1, c2) ->
			( match c1 with
			| Lambda (_, t, _) -> 
				let _ = check_comp c1 NFun(t, target) typing_env in
				let _ = check_comp c2 t typing_env in
			 _ -> failwith "incompatible types")

and check_match c cases target typing_env = 
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
					check_comp result target (x, tx)::typing_env
				else undef "tag" tag
			| _ -> failwith "inconsistent match")
		| NTag ttag ->
			let tagset = List.assoc ttag tag_env in
			( match pattern with
			| Tag x ->
				if List.mem tag tagset 
				then
					check_comp result target typing_env
				else undef "tag" tag
			| _ -> failwith "inconsistent match")
		| NRef tx -> 
			( match pattern with
			| New x ->
				check_comp result target (x, tx)::typing_env
			| _ -> failwith "inconsistent match")
		| NAlign tx ->
			( match pattern with
			| Align x ->
				check_comp result target (x, tx)::typing_env
			| _ -> failwith "inconsistent match")
		| NProd(tx, ty) ->
			( match pattern with
			| Pair(x, y) -> 
				check_comp result target (x, tx)::(y::ty)::typing_env
			| _ -> failwith "inconsistent match")
		| _ -> failwith "match on malformed value" in
	let _ = List.map check_case cases in target