open Printf

exception Not_in_env of string

let tag_env : ((string * string list) list) ref = ref []

let type_env : ((string * Ntype.ntype) list) ref = ref []

let typing_env : ((string * Ntype.ntype) list) ref = ref []

let aux_ctr = ref 0

let reset_ctr () = aux_ctr := 0

let add_tagset name ts = tag_env := (name, ts)::!tag_env

let get_tagset () = !tag_env

let remove_tagset name = tag_env := List.remove_assoc name !tag_env

let lookup_tagset name = 
  try List.assoc name !tag_env
  with Not_found -> raise (Not_in_env (sprintf "tagset %s is not defined" name))

let lookup_tag tag =
  try fst (List.find (fun (_, ts) -> List.mem tag ts) !tag_env)
  with Not_found -> raise (Not_in_env (sprintf "tag %s is not defined" tag))

let mem_tag a ta = List.mem a (lookup_tagset ta)

let pos_of_tag a ta =
  let index e l =
    let rec idx i l' =
      match l' with
      | [] -> raise (Not_in_env (sprintf "tag %s not in tagset %s" a ta))
      | hd::tl -> if e = hd then i else idx (i+1) tl
    in idx 0 l in
  let ts = lookup_tagset ta in index a ts

let add_type t def = type_env := (t, def)::!type_env

let get_type () = !type_env

let remove_type name = type_env := List.remove_assoc name !type_env

let lookup_type name = 
  try List.assoc name !type_env
  with Not_found -> raise (Not_in_env (
    Printf.sprintf "type %s is not defined" name))

let lookup_variant ta = 
  try snd (List.find (fun (_, def) -> 
    match def with
    | Ntype.NMatch (ta1, _) -> ta = ta1
    | _ -> false) !type_env)
  with Not_found -> raise (Not_in_env (
    Printf.sprintf "variant with tagset %s is not defined" ta))

let add_typing x t = typing_env := (x,t)::!typing_env

let get_typing () = !typing_env