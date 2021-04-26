open Util
open Env
open Ntype

type evalue = EInt of int | EBool of bool

let rec log x = if x <= 1 then 0 else log (x/2) + 1

let word_size = 64

let bits x = if x <= 1 then 1 else log (x-1) + 1

let size_tag tag = 
	bits (List.length (find tag !tag_env "tag"))

let rec size_cases cases = 
	let size_case s (_, t) = max (size_type t) s in
	List.fold_left size_case 0 cases
	
and size_type t = 
	match t with
	| NUnit -> 0
	| NBool -> 1
	| NInt -> word_size
	| NRef _ -> word_size
	| NTag tag -> size_tag tag
	| NProd (t1, t2) ->
		let s1 = size_type t1 in
		let s2 = size_type t2 in
		s1 + s2
	| _ -> failwith "type cannot be sized"

let rec eval (ne:nexpr) = 
	match ne with
	| Int n -> EInt n
	| Size t -> EInt (size_type t)
	| Bop (op, e1, e2) -> 
		let v1 = eval e1 in
		let v2 = eval e2 in
		match op, v1, v2 with 
			| GT, EInt n1, EInt n2 -> EBool (n1 > n2)
			| LT, EInt n1, EInt n2 -> EBool (n1 < n2)
			| EQ, EInt n1, EInt n2 -> EBool (n1 = n2)
			| ADD, EInt n1, EInt n2 -> EInt (n1 + n2)
			| SUB, EInt n1, EInt n2 -> EInt (n1 - n2)
			| MUL, EInt n1, EInt n2 -> EInt (n1 * n2)
			| DIV, EInt n1, EInt n2 -> EInt (n1 / n2)
			| _, _, _ -> failwith "bop error in expression evaluation"

let eval_bool ne =
	match eval ne with
	| EBool b -> b
	| _ -> failwith "expression must evaluate to bool"