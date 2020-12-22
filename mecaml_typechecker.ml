(*
There are four kinds of hashmaps we will use:
type_env: 	string -> ntype
			type names to type defs
tag_env: 	string -> string list
			tag names to tag defs
value_env:	string -> value
			value names to values
typing_env: string -> ntype
			variable names to their types
*)

open Mecaml

(*normal type with matchings*)
type ntype = NTag of string
	| NMatch of string * mtype list
	| NRef of mtype | NAlign of mtype | NCast of mtype
	| NProd of mtype * mtype | NFun of mtype * mtype

(*well-defined types*)
type wtype = WTag of string
	| WRef of ntype | WAlign of ntype | WCast of ntype
	| WProd of ntype * ntype | WFun of ntype * ntype 

let undef field var = failwith (field ^ name ^ "undefined")

let rec match_case v cases = 
	match cases with
	| [] -> failwith "no match for case:" ^ v
	| case::tail -> if fst case = v then snd case else match_case v tail

let rec normalize t tag_env type_env value_env = 
	match t with
		| Var x -> find_type x
		| Tag a -> NTag a
		| Prod(VarTag(x, a), t2) -> 
			let tags = find_tag x
			let mk_case tag = (tag, t2)
			in NProd(NTag a, 
				normalize (Match x, List.map mk_case tags) tag_env type_env value_env
			)
		| Match(x, cases) ->  
			try 
				let v = Hashtbl.find value_env x
				in normalize (match_case v cases) tag_env type_env value_env
			with Not_found ->
				let sub (v, t) = 
					Hashtbl.add tag_env x v;
					normalize t tag_env type_env value_env;
					Hashtbl.remove tag_env x;
				in NMatch(x, List.map sub cases)
		
		| Ref t1 -> Ref (normalize t1 tag_env type_env value_env)
		| Align t1 -> Align (normalize t1 tag_env type_env value_env)
		| Cast t1 -> Cast (normalize t1 tag_env type_env value_env)
		| Prod(t1, t2) -> Product (normalize tag_env type_env value_env) (normalize t2 tag_env type_env value_env)
		| Fun t1 t2 -> Fun (normalize t1 tag_env type_env value_env) (normalize t2 tag_env type_env value_env)

let find_value x env =
	try Hashtbl.find env x
	with Not_found -> undef "var" x

let find_tag x env =
	try Hashtbl.find env x
	with Not_found -> undef "tag" x

let find_type x env =
	try Hashtbl.find env x
	with Not_found -> undef "type" x

let find_typing x env = 
	try Hashtbl.find env x
	with Not_found -> undef "typing for " x

let rec check_expr e env = 
	match e with
		| Var x -> (e, find_typing x)
		| Tag a -> (e, NTag a)
		| Size t -> NInt (*??*)
		| Gt e1 e2 -> 
			let t1 = check_expr e1
			and t2 = check_expr e2
			in 
				if t1 != Int32 
				then failwith "> expects int on LHS"
				else 
					if t2 != Int32
					then failwith "> expects int on RHS"
					else Bool
		| Eq e1 e2 ->
			let t1 = check_expr e1
			and t2 = check_expr e2
			in 
				if t1 != Int32 
				then failwith "= expects int on LHS"
				else 
					if t2 != Int32
					then failwith "= expects int on RHS"
					else Bool
		| If e1 e2 e3 ->
			let t1 = check_expr e1
			and t2 = check_expr e2
			and t3 = check_expr e3 
			in 
				if t1 != Bool
				then failwith "if statements begins with bool"
				else 
					if t2 != t3
					then failwith "if statements must have matching types"
					else t2
					
let check_comp c env =
	match c with
		(*| Int x -> Int32*)
		| Var x ->
			try Hashtbl.find env x
			with Not_found -> undef_var x
		| Tag a ->
			try Hashtbl.find env a
			with Not_found -> undef_tag a
		| Align c1 -> Align (typecheck_comp c1)
		| Pair c1 c2 -> Product (typecheck_comp c1) (typecheck_comp c2)
		| New c1 ->  