(* Typed Syntax Tree *)
type tag = string

type var = string

type scomp = comp * int

and comp = 
  | Unit 
  | Int of int 
  | Bool of bool

  | Var of var 
  | Tag of tag

  | Pair of scomp * scomp
  | Block of scomp * scomp
  
  | Let of var * scomp * scomp
  | LetRec of var * scomp * scomp
  | Lambda of var * scomp
  | App of scomp * scomp
  | Match of scomp * (scomp * scomp) list

  | Align of scomp
  | New of scomp