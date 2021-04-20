let tag_env : ((string * string list) list) ref = ref []

let type_env : ((string * Ntype.ntype) list) ref = ref []

let aux_ctr = ref 0

let reset_ctr () = aux_ctr := 0