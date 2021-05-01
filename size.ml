open Ntype

let rec log x = if x <= 1 then 0 else log (x/2) + 1

let bits x = if x <= 1 then 0 else log (x-1) + 1

let size_tag tag = 
	bits (List.length (Env.lookup_tag tag))

let rec add s1 s2 = 
	match s1, s2 with
	| SInt a, SInt b -> SInt (a+b)
	| SSum la, SSum lb -> 
		let a::tla = List.rev la in
		let b::tlb = lb in
		SSum (List.rev tla @ [add a b] @ tlb)
	| _, _ -> SSum [s1; s2]
	
and size_type t name = 
	match t with
	| NUnit -> SInt 0
	| NBool -> SInt 1
	| NInt -> SInt Sys.word_size
	| NTag tag -> SInt (size_tag tag)
	| NRef _ -> SInt Sys.word_size
  | NFun _ -> SInt Sys.word_size
  | NVar x -> if x=name then SVar x else Env.lookup_size x
	| NProd (t1, t2) ->
		let s1 = size_type t1 name in
		let s2 = size_type t2 name in
		add s1 s2
	| NMatch (ta, cases) ->
		SMatch (size_tag ta,
		List.map (fun (a, t) -> (Env.pos_of_tag a ta, size_type t name)) cases)
	| _ -> failwith "type cannot be sized"

let size_wild t = size_type t ""

let size_to_int t = 
	match size_wild t with
	| SInt n -> n
	| _ -> failwith "%s does not have a definite size" (Pprint.str_type t)