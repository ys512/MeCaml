type bop = GT | LT | EQ

type metype = TUnit | TInt | TBool | TVar of string 
	| TTag of string | TVarTag of string * string
	| TRef of metype | TAlign of metype | TCast of metype
	| TProd of metype * metype | TFun of metype * metype
	| TIf of expr * metype * metype
	| TMatch of string * (string * metype) list

and expr = Int of int | Size of metype | Bop of bop * expr * expr
	
(* type expr_pattern = Int of int | Var of string | Tag of string *)

type comp = Unit | Int of int | Bool of bool
	| Var of string | Tag of string
	| Align of comp | New of comp 
	| Pair of comp * comp | Lambda of string * metype * comp
	| Match of string * (comp * comp) list | App of comp * comp

(* type comp_pattern = Int of int | Var of string | Tag of string  *)
	(* | Align of comp_pattern | Pair of comp_pattern * comp_pattern  *)
	(* | New of comp_pattern | Type of comp_pattern * metype *)

type tag = Var of string | Tagset of string list 
	| Sum of tag * tag | Prod of tag * tag

type tagdef = Tagdef of string * tag
type typedef = Typedef of string * metype
type compdef = Compdef of string * comp