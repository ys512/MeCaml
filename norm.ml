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
open Util
open Env
open Pst
open Ntype

let norm_bop op = 
	match op with
	| Pst.GT -> Ntype.GT
	| Pst.LT -> Ntype.LT
	| Pst.EQ -> Ntype.EQ

let rec normalize name t value_env = 
	match t with
		| TUnit -> NUnit
		| TInt -> NInt
		| TBool -> NBool
		| TVar x -> if x = name then (NVar x) else Env.lookup_type x
		| TTag a -> NTag a
		| TProd(TVarTag(x, a), t2) -> 
			let tags = Env.lookup_tag "tag" in
			let make_case tag = (tag, normalize name t2 ((x, tag)::value_env)) in
			NMatch(a, List.map make_case tags)
		| TMatch(x, cases) ->
			let v = find x value_env "value" in
			let t' = find v cases "case" in
			normalize name t' value_env
		| TIf(e, t1, t2) -> 
			let t1' = normalize name t1 value_env in
			let t2' = normalize name t2 value_env in
			let b = Expr.eval_bool e in
			if b then t1' else t2'
		| TRef t1 -> NRef (normalize name t1 value_env)
		| TAlign t1 -> NAlign (normalize name t1 value_env)
		| TProd(t1, t2) -> NProd (normalize name t1 value_env, normalize name t2 value_env)
		| TFun (t1, t2) -> NFun (normalize name t1 value_env, normalize name t2 value_env)
		| _ -> failwith "could not normalize"

and norm_expr (e:expr) value_env = 
	match e with
	| Int x -> Ntype.Int x
	|	Size t -> Ntype.Size (normalize "" t value_env)
	| Bop (op, e1, e2) -> 
		let ne1 = norm_expr e1 value_env in
		let ne2 = norm_expr e2 value_env in
		Ntype.Bop (norm_bop op, ne1, ne2)

let norm_named name t = normalize name t []

let norm_wild t = normalize "" t []