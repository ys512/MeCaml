open Syntax
open Ntype

let rec str_expr (e:nexpr) = 
  match e with
  | Int x -> string_of_int x
  | Size t -> "size(" ^ (str_type t) ^ ")"
  | Bop (op, e1, e2) ->
    (str_expr e1) ^ 
    (match op with
    | GT -> ">"
    | LT -> "<"
    | EQ -> "=") ^
    (str_expr e2)

and str_type (t:ntype) = 
  match t with
  | NUnit -> "unit"
  | NBool -> "bool"
  | NInt -> "int"
  | NTag a -> "tag " ^ a
  | NMatch (a, cases) -> 
    let string_case s (x, t') = s ^ " |" ^ x ^ "->" ^ (str_type t') in
    List.fold_left string_case "(match a with" cases ^ ")"
  | NIf (expr, t1, t2) ->
    let e_s = str_expr expr in
    let t1_s = str_type t1 in
    let t2_s = str_type t2 in
     "(if " ^ e_s ^ " then " ^ t1_s ^ " else " ^ t2_s ^ ")"
  | NRef t' ->
     "ref " ^ str_type t'
  | NAlign t' ->
    "align " ^ str_type t'
  | NProd (t1, t2) ->
    let t1_s = str_type t1 in
    let t2_s = str_type t2 in
    "( " ^ t1_s ^ " * " ^ t2_s ^ " )"
  | NFun (t1, t2) ->
    let t1_s = str_type t1 in
    let t2_s = str_type t2 in
    "( " ^ t1_s ^ " -> " ^ t2_s ^ " )"
  | _ -> failwith "unsupported type!"

let rec str_list l ppf = 
  List.fold_left (fun s x -> s ^ (ppf x)) "[" l ^ "]"

let print_type_env () = 
  print_string "TYPE ENV: \n";
  print_string (str_list !Env.type_env (fun (x, t) -> x ^ ": " ^ (str_type t) ^ "\n"));
  print_newline ()

let print_tag_env () = 
  print_string "TAG ENV: \n";
  print_string (str_list !Env.tag_env (
    fun (a, ts) -> a ^ " : " ^ str_list ts (fun x -> x ^ " ") ^ "\n"));
  print_newline ()