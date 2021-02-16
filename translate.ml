open Syntax
open Util

let lay x bits offset = 


let index e l = 
  let rec idx i l' =
    match l' with
    | [] -> failwith "element not in list"
    | hd::tl -> if e = hd then i else idx (i+1) tl
  in idx 0 l

let translate comp t = 
  match comp with
  | Unit -> ""
  | Int x -> string_of_int x
  | Bool x -> if x then "1" else "0"
  | Var x -> "$_" ^ x
  | Tag a -> 
    ( match t with 
    | NTag ta -> 
      let ts = find ta !Env.tag_env in
      let pos = index a ts in
      (string_of_int pos)
    | _ -> failwith "translation error")
  | Prod (c1, c2) -> 