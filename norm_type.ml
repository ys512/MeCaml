(*normal type*)
type ntype = NUnit | NBool | NInt | NTag of string
	| NMatch of string * (string * ntype) list
	| NIf of Syntax.expr * ntype * ntype
	| NRef of ntype | NAlign of ntype | NCast of ntype
	| NProd of ntype * ntype | NFun of ntype * ntype
