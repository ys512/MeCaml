(*normal type*)
type ntype = NUnit | NBool | NInt | NTag of string
	| NMatch of string * (string * ntype) list
	| NIf of nexpr * ntype * ntype
	| NRef of ntype | NAlign of ntype
	| NProd of ntype * ntype | NFun of ntype * ntype

and nexpr = Int of int | Size of ntype | Bop of Syntax.bop * nexpr * nexpr
