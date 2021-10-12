open Ntype

(* Basic Size *)
type bsize = 
  | SInt of int
	| SRef
	| SMatch of int * (int * size) list

(* General Size *)
and size = bsize list

let rec log x = if x <= 1 then 0 else log (x/2) + 1

let clog x = if x <= 1 then 0 else log (x-1) + 1

let size_tag tag = 
	clog (List.length (Env.lookup_tagset tag))

let rec add s1 s2 = 
	match List.rev s1, s2 with
	| SInt a::l1, SInt b::l2 -> List.rev l1 @ SInt (a+b)::l2
	| _, _ -> s1 @ s2
	
and size t = 
	match t with
	| NUnit								-> [SInt 0]
	| NBool								-> [SInt 1]
	| NInt								-> [SInt Sys.int_size]
	| NTag tag						-> [SInt (size_tag tag)]
	| NRef _							-> [SRef]
  | NFun _							-> [SRef]
	| NProd (t1, t2)			-> add (size t1) (size t2)
	| NMatch (ta, cases)	-> [SMatch (size_tag ta, 
		List.map (fun (a, t) -> (Env.pos_of_tag a ta, size t)) cases)]
	| _ -> failwith "type cannot be sized"

let size_to_int t = 
	match size t with
	| [SInt n] -> n
	| _ -> Printf.ksprintf failwith "%s is not sizable at compile time" (Pprint.str_type t)