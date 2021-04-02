(* Typed Syntax Tree *)
type tag = string

type var = string

type tcomp = comp * Ntype.ntype

and comp = 
  | Unit 
  | Int of int 
  | Bool of bool

  | Var of var 
  | Tag of tag

  | Pair of tcomp * tcomp
  | Block of tag * tcomp
  
  | Lambda of var * tcomp
  | App of tcomp * tcomp
  | Match of tcomp * (tcomp * tcomp) list

  | Align of tcomp
  | New of tcomp
  