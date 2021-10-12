(* Parsed Syntax Tree *)
type var = string
type tag_name = string
type type_name = string
type tag = string

type bop = ADD | SUB | MUL | DIV | MOD | GT | LT | EQ

type type_expr = 
  | TUnit 
	| TInt 
	| TShort
	| TChar
	| TBool 
	
	| TVar of type_name
	| TTag of tag_name
	
	| TProd of type_expr * type_expr
	
	| TVarTag of string * string
	| TMatch of string * (string * type_expr) list

	| TFun of type_expr * type_expr
	
	| TRef of type_expr
	| TIf of expr * type_expr * type_expr
	(* | TAlign of type_expr *)

and expr = Int of int | Size of type_expr | Bop of bop * expr * expr

type pattern = 
	| PTag of tag
	| PVar of var
	| PPair of pattern * pattern
	| PBlock of tag * pattern
	| PNew of pattern
	(* | Align of pattern *)

type comp = 
  | Unit 
	| Int of int 
	| Bool of bool
	
	| Var of var
	| Tag of tag
	
	| Bop of bop * comp * comp
	| If of comp * comp * comp

	| Pair of comp * comp
	| Block of tag * comp
	
	| Let of var * comp * comp
	| LetRec of var * (comp * type_expr) * comp
	| Lambda of var * type_expr * comp
	| App of comp * comp
	| Match of comp * (pattern * comp) list

	| New of comp
	| Typed of comp * type_expr
	(* | Align of comp *)

(* type comp_pattern = Int of int | Var of string | Tag of string  *)
	(* | Align of comp_pattern | Pair of comp_pattern * comp_pattern  *)
	(* | New of comp_pattern | Type of comp_pattern * metype *)

type tag_expr = Var of var | Tagset of tag list 
	| Sum of tag_expr * tag_expr | Prod of tag_expr * tag_expr

type tagdef = var * tag_expr
type typedef = var * type_expr
type compdef = var * comp
type prog = tagdef list * typedef list * compdef list