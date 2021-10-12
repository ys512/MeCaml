(*
There are four kinds of hashmaps we will use:
type_env: 	string -> ntype
			type names to type defs
tag_env: 	string -> string list
			tag names to tag defs
value_env:	string -> value
			variable names to values
typing_env: string -> ntype
			variable names to their types
*)
open Env
open Pst
open Ntype

let norm_cop op = 
	match op with
	| Pst.GT -> Ntype.GT
	| Pst.LT -> Ntype.LT
	| Pst.EQ -> Ntype.EQ
	| _ -> failwith "unsupported bop in type definition"

let rec normalize t env = 
	match t with
		| TUnit 	-> NUnit
		| TInt 		-> NInt
		| TShort 	-> NShort
		| TChar 	-> NChar
		| TBool 	-> NBool
		| TVar x 	-> Env.lookup_type x
		| TTag a 	-> NTag a
		| TProd(TVarTag(x, a), t2) -> 
			let tagset = Env.lookup_tagset a in
			let make_case tag = (tag, normalize t2 ((x, tag)::env)) in
			NMatch(a, List.map make_case tagset)
		| TMatch(x, cases) ->
			let v = Util.find x env "value" in
			let t' = Util.find v cases "case" in
			normalize t' env
		| TIf(e, t1, t2) -> 
			let t1' = normalize t1 env in
			let t2' = normalize t2 env in
			let b = Expr.eval_expr (norm_expr e) in
			if b then t1' else t2'
		| TRef t1 -> NRef (normalize t1 env)
		(* | TAlign t1 -> NAlign (normalize t1 env) *)
		| TProd(t1, t2) -> NProd (normalize t1 env, normalize t2 env)
		| TFun (t1, t2) -> NFun (normalize t1 env, normalize t2 env)
		| _ -> failwith "could not normalize"

and norm_expr e = 
	match e with
	| Int x -> Ntype.Int x
	|	Size t -> Ntype.Size (norm t)
	| Bop (op, e1, e2) -> 
		let ne1 = norm_expr e1 in
		let ne2 = norm_expr e2 in
		Ntype.Bop (norm_cop op, ne1, ne2)

and norm t = 
	normalize t []