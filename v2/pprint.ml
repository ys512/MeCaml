open Pst
open Ntype
open Printf

(* let rec str_expr (e:nexpr) = 
  match e with
  | Int x -> string_of_int x
  | Size t -> "size(" ^ (str_type t) ^ ")"
  | Bop (op, e1, e2) ->
    (str_expr e1) ^ 
    (match op with
    | GT -> ">"
    | LT -> "<"
    | EQ -> "=") ^
    (str_expr e2) *)

let rec str_type (t:ntype) = 
  match t with
  | NUnit -> "unit"
  | NBool -> "bool"
  | NInt -> "int"
  | NTag a -> "tag " ^ a
  | NMatch (a, cases) -> 
    let string_case (x, t') = sprintf "|%s->%s" x (str_type t') in
    sprintf "(match %s with %s )" a (String.concat " " (List.map string_case cases)) 
  (* | NIf (expr, t1, t2) ->
    let e_s = str_expr expr in
    let t1_s = str_type t1 in
    let t2_s = str_type t2 in
     "(if " ^ e_s ^ " then " ^ t1_s ^ " else " ^ t2_s ^ ")" *)
  | NRef t' ->
     "ref " ^ str_type t'
  (* | NAlign t' ->
    "align " ^ str_type t' *)
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
  sprintf "[%s]" (String.concat "" (List.map ppf l))

let print_type_env () = 
  printf "TYPE ENV: \n[%s]\n"
  (String.concat "\n" (List.map (fun (x, def) -> sprintf "%s: %s" x (str_type def)) (Env.get_type())))
  

let print_tag_env () = 
  printf "TAG ENV: \n[%s]\n"
  (String.concat "\n" (List.map (fun (x, def) -> sprintf "%s: %s" x (String.concat " " def)) (Env.get_tagset())))