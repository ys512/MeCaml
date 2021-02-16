open Util
open Syntax
open Ntype
open Norm
open Expr
open Env

let eq t1 t2 = (t1 = t2)
	
let match_type t1 t2 =
	match t1 with
	| Some t -> if t = t2 then t else failwith "incompatible types"
	| None -> t2
			
let rec check_comp (c:comp) target (typing_env:(string * ntype) list):ntype =
	match c with
		| Unit -> match_type target NUnit
		| Bool _ -> match_type target NBool
		| Int _ -> match_type target NInt
		| Var x -> match_type target (find x typing_env "var")
		| Tag a -> 
			( match target with
			| Some (NTag a') -> 
				let tagset = find a' !tag_env "tag" in
				if List.mem a tagset then (NTag a') else failwith (a ^ "not in tagset" ^ a')
			| None -> failwith "unable to determine tagset"
			| _ -> failwith "incompatible types")
		| Align c' -> 
			( match target with
			| Some (NAlign t') -> 
				check_comp c' (Some t') typing_env
			| None ->
				check_comp c' None typing_env
			| _ -> failwith "incompatible types")
		| Pair (c1, c2) -> 
			( match target with
			| Some (NProd (t1, t2)) ->
				let _ = check_comp c1 (Some t1) typing_env in
				let _ = check_comp c2 (Some t2) typing_env in NProd(t1, t2)
			| Some (NMatch (a, cases)) ->
				let _ = check_comp c1 (Some (NTag a)) typing_env in
				(match c1 with
				| Tag a' -> let _ = check_comp c2 (Some (List.assoc a' cases)) typing_env in NMatch(a, cases)
				| _ -> failwith "c1 must be a tag")
			| None -> 
				let t1 = check_comp c1 None typing_env in
				let t2 = check_comp c2 None typing_env in NProd(t1, t2)
			| _ -> failwith "incompatible types")
		| New c' -> 
			( match target with
			| Some (NRef t') -> 
				NRef (check_comp c' (Some t') typing_env)
			| None ->
				NRef (check_comp c' None typing_env)
			| _ -> failwith "incompatible types")
		| Lambda (x, t, c1) -> 
			let t' = normalize t [] in
			( match target with
			| Some (NFun (t1, t2)) -> 
				if t' = t1 then
					let _ = check_comp c1 (Some t2) ((x, t')::typing_env) in NFun (t1, t2)
				else
					failwith "incompatible types"
			| None -> let t2 = check_comp c1 None ((x, t')::typing_env) in NFun (t', t2)
			| _ -> failwith "incompatible types")
		| Match (c, cases) ->
			check_match c cases target typing_env
		| App(c1, c2) ->
			( match c1 with
			| Lambda (_, t, _) -> 
				let t' = normalize t [] in
				( match target with
				| Some t'' -> 
					let _ = check_comp c1 (Some (NFun(t', t''))) typing_env in
					let _ = check_comp c2 (Some t') typing_env in t''
				| None ->
					let t1 = check_comp c1 None typing_env in
					let t2 = check_comp c2 None typing_env in
					( match t1 with 
					| NFun(t3, t4) -> if t2 = t3 then t4 else failwith "application with wrong type"
					| _ -> failwith "incompatible types"))
			| _ -> failwith "cannot apply with non functions")

and check_match c cases target typing_env = 
	let t = check_comp c None typing_env in
	let check_case (pattern, result) = 
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
		| _ -> failwith "match on malformed value" in
	let rec check_cases cases = 
		match cases with
		| [case] -> check_case case
		| case::tail -> 
			let t_case = check_case case in
			if (check_cases tail) = t_case then t_case
			else failwith "inconsistent match"
	in check_cases cases
		