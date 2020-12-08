type metype = Bool | Char | Short | Int32 | Int64
	| Var of string | Tag of string * string
	| Ref of metype | Align of metype | Cast of metype
	| Product of metype * metype | Fun of metype * metype
	| Match of expr * (expr * metype) list

and expr = Int of int | Var of string | Tag of string
	| Size of metype | Gt of expr * expr | Eq of expr * expr
	| If of expr * expr * expr
	
(* type expr_pattern = Int of int | Var of string | Tag of string *)

type comp = Int of int | Var of string | Tag of string
	| Align of comp | Pair of comp * comp
	| New of comp | Fun of string * metype * comp
	| Match of comp * (comp * comp) list | App of comp * comp
	| Type of comp * metype

(* type comp_pattern = Int of int | Var of string | Tag of string  *)
	(* | Align of comp_pattern | Pair of comp_pattern * comp_pattern  *)
	(* | New of comp_pattern | Type of comp_pattern * metype *)

type tag = Var of string | Tagset of string list | Sum of tag * tag | Product of tag * tag

type typedef = Typebind of string * metype
type tagdef = Tagbind of string * tag