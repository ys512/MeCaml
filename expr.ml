open Mecaml
open Norm_type

type evalue = EInt of int | EBool of bool

let rec log x = if x = 1 then 0 else log (x/2) + 1

let word_size = 32

let bits x = if x = 1 then 1 else log (x-1) + 1

let size_tag tag tag_env = 
	size_tag (List.length (StringMap.find tag tag_env))

let size_cases cases type_env tag_env = 
	match cases with
	| [] -> 0
	| (_, t)::tail -> 
		let s1 = find_size t type_env tag_env in
		let s2 = size_cases tail type_env tag_env in
		max s1 s2
	
and rec find_size t type_env tag_env = 
	match t with
	| NUnit -> 0
	| NBool -> 1
	| NInt -> word_size
	| NRef _ -> word_size
	| NTag tag -> size_tag tag tag_env
	| NMatch(tag, cases) -> 
		let s_tag = size_tag tag tag_env in
		let s_cases = size_cases (StringMap.bindings cases) in
		s_tag + s_cases
	| NIf(e, t1, t2) ->
		let s1 = find_size t1 type_env tag_env in
		let s2 = find_size t2 type_env tag_env in
		max s1 s2
	| NAlign t -> find_size t type_env tag_env + word_size
	| NProd (t1, t2) ->
		let s1 = find_size t1 type_env tag_env in
		let s2 = find_size t2 type_env tag_env in
		s1 + s2
	| _ -> failwith "type cannot be sized"

let eval e type_env tag_env = 
	match e with
	| Int n -> EInt n
	| Size t -> EInt (find_size t type_env tag_env)
	| Bop (op, e1, e2) -> 
		let v1 = eval e1 type_env tag_env in
		let v2 = eval e2 type_env tag_env in
		match op, v1, v2 with 
			| GT, EInt n1, EInt n2 -> EBool (n1 > n2)
			| LT, EInt n1, EInt n2 -> EBool (n1 < n2)
			| EQ, EInt n1, EInt n2 -> EBool (n1 = n2)
			| _, _, _ -> failwith "error in expression evaluation"