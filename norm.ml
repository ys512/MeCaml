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

open Syntax
open Norm_type


let undef field name = failwith (field ^ ": " ^ name ^ "undefined")

let find x env name =
	try List.assoc x env
	with Not_found -> undef name x

let rec normalize t value_env = 
	match t with
		| TVar x -> find x !Env.type_env "type"
		| TTag a -> NTag a
		| TProd(TVarTag(x, a), t2) -> 
			let tags = find x tag_env "tag" in
			let make_case tag = (tag, normalize t2 (x, tag)::value_env) in
			NMatch(a, List.map make_case tags)
		| TMatch(x, cases) ->
			let v = find x value_env "value" in
			let t' = find v cases "case" in
			normalize t' value_env
		| TIf(e, t1, t2) -> 
			let t1' = normalize t1 value_env in
			let t2' = normalize t2 value_env in
			NIf(e, t1', t2')
		| TRef t1 -> NRef (normalize t1 value_env)
		| TAlign t1 -> NAlign (normalize t1 value_env)
		| TCast t1 -> NCast (normalize t1 value_env)
		| TProd(t1, t2) -> NProd (normalize value_env, normalize t2 value_env)
		| TFun (t1, t2) -> NFun (normalize t1 value_env, normalize t2 value_env)
