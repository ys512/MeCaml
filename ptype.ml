(*polymorphic type*)
type bop = GT | LT | EQ

type type_spec = 
  | PVar of string * type_spec list
  | PArg of string
  | PUnit 
	| PBool 
	| PInt
	| PTag of string
	| PMatch of string * (string * type_spec) list
	| PIf of pexpr * type_spec * type_spec
	| PRef of type_spec 
	| PAlign of type_spec
	| PProd of type_spec * type_spec 
	| PFun of type_spec * type_spec

and pexpr = Int of int | Size of type_spec | Bop of bop * pexpr * pexpr

type ptype = type_spec * string list