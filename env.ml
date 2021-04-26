type tag_name = string

type tag = string

type type_name = string

type var = string

let tag_env : ((tag_name * tag list) list) ref = ref []

let type_env : ((type_name * Ntype.ntype) list) ref = ref []

let typing_env : ((var * Ntype.ntype) list) ref = ref []

let aux_ctr = ref 0

let reset_ctr () = aux_ctr := 0

let add_tag tag ts = tag_env := (tag, ts)::!tag_env

let get_tag () = !tag_env

let remove_tag tag = tag_env := List.remove_assoc tag !tag_env

let lookup_tag tag = 
  try List.assoc tag !tag_env
  with Not_found -> Printf.ksprintf failwith "tag %s is not defined" tag

let add_type t def = type_env := (t, def)::!type_env

let get_type () = !type_env

let remove_type t = type_env := List.remove_assoc t !type_env

let lookup_type t = 
  try List.assoc t !type_env
  with Not_found -> Printf.ksprintf failwith "type %s is not defined" t

let add_typing x t = typing_env := (x,t)::!typing_env

let get_typing () = !typing_env