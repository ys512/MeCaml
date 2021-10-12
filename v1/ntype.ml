(*normal type*)
type bop = GT | LT | EQ

type ntype = 
  | NUnit 
	| NBool 
	| NInt
	| NShort
	| NChar
	| NTag of string
	| NMatch of string * (string * ntype) list
	| NRef of ntype 
	(* | NAlign of ntype *)
	| NProd of ntype * ntype 
	| NFun of ntype * ntype

and nexpr = Int of int | Size of ntype | Bop of bop * nexpr * nexpr