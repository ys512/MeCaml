(* Parsed Syntax Tree *)

type bop = GT | LT | EQ

type tag = string

type var = string

type type_expr = 
  | TUnit 
	| TInt 
	| TBool 
	
	| TVar of var 
	| TTag of var
	
	| TProd of type_expr * type_expr
	
	| TVarTag of string * string
	| TMatch of string * (string * type_expr) list

	| TFun of type_expr * type_expr
	
	| TRef of type_expr 
	| TAlign of type_expr
	| TIf of expr * type_expr * type_expr

and expr = Int of int | Size of type_expr | Bop of bop * expr * expr

type comp = 
  | Unit 
	| Int of int 
	| Bool of bool
	
	| Var of var
	| Tag of tag
	
	| Pair of comp * comp
	| Block of tag * comp
	
	| Lambda of var * type_expr * comp
	| App of comp * comp
	| Match of comp * (comp * comp) list 

	| New of comp
	| Align of comp
	| Typed of comp * type_expr

(* type comp_pattern = Int of int | Var of string | Tag of string  *)
	(* | Align of comp_pattern | Pair of comp_pattern * comp_pattern  *)
	(* | New of comp_pattern | Type of comp_pattern * metype *)

type tag_expr = Var of var | Tagset of tag list 
	| Sum of tag_expr * tag_expr | Prod of tag_expr * tag_expr

type tagdef = Tagdef of var * tag_expr
type typedef = Typedef of var * type_expr
type compdef = Compdef of var * type_expr * comp
type prog = tagdef list * typedef list * compdef list