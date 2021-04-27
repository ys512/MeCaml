open Printf
open Tst
open Ntype
open Util

let index e l =
  let rec idx i l' =
    match l' with
    | [] -> failwith "element not in list"
    | hd::tl -> if e = hd then i else idx (i+1) tl
  in idx 0 l

let singleton s = sprintf "(block (tag 0) %s)" s

let aux n = sprintf "$_aux_%d" n

let new_aux_ctr () = 
  let ctr = !Env.aux_ctr + 1 in 
  (Env.aux_ctr := ctr; ctr)

let new_aux () = 
  aux (new_aux_ctr ())
 let var s = if s = "_" then "_" else sprintf "$%s" s

let field n b = sprintf "(field %d %s)" n b

let bind x cx c = sprintf "(let (%s %s) %s)" x cx c

let pos_of_tag a ta = 
  let ts = find ta !Env.tag_env "tag" in
  index a ts

let translate_unit = "(block (tag 0))"

let translate_int n = singleton (string_of_int n)

let translate_bool b = singleton (if b then "0" else "1")

let translate_var x = var x

let translate_tag a ta = 
    singleton (string_of_int (pos_of_tag a ta))

let rec translate ((comp, t):Tst.tcomp) = 
  match comp, t with
  | Unit, NUnit           -> translate_unit
  | Int n, NInt           -> translate_int n
  | Bool b, NBool         -> translate_bool b
  | Var x, _              -> translate_var x
  | Tag a, NTag ta        -> translate_tag a ta
  | New c, _              -> singleton(translate c)
  | Align c, _            -> translate c
  | Pair (c1, c2), _      -> translate_pair c1 c2
  | Block (a, c), _       -> translate_block a c
  | Let (x, c1, c2), _    -> translate_let x c1 c2
  | Lambda (x, c), _      -> translate_lambda x c
  | App (c1, c2), _       -> translate_app c1 c2
  | Match (c1, cases), _  -> translate_match c1 cases
  | _                     -> failwith "translation error"

and translate_pair (c1, t1) (c2, t2) = 
  let w1, b1 = Util.bits_to_words (Expr.size_type t1) in
  let w2, b2 = Util.bits_to_words (Expr.size_type t2) in
  sprintf "(apply (global $Mem $combine) %s %d %d %s %d %d)" 
  (translate (c1, t1)) w1 b1 (translate (c2, t2)) w2 b2 

and translate_block a c = translate_pair a c

and translate_let x c1 c2 = bind (var x) (translate c1) (translate c2)

and translate_lambda x c = 
  sprintf "(lambda (%s) %s)"
    (translate_var x) (translate c)

and translate_app c1 c2 = 
  sprintf "(apply %s %s)" 
    (translate c1) (translate c2)
    
and translate_match c cases = 
  let aux_c = new_aux () in
  bind aux_c (translate c) (
    let rec translate_cases cases =
      match cases with
      | [] -> "(apply (global $Stdlib $exit) 1)"
      | (pattern, res)::tail ->
        let s_res = translate res in
        let cont = translate_cases tail in
        translate_case aux_c pattern s_res cont 
    in translate_cases cases
  )

and translate_case comp pattern res cont = 
  match pattern with
  (* need fixing *)
  | Tst.Tag a, NTag ta -> 
    sprintf "(switch %s (%s %s) (_ %s))" 
      (field 0 comp) (string_of_int (pos_of_tag a ta)) res cont
  | Tst.Var x, _ ->
    bind (var x) comp res
  | Tst.Align c, _ ->
    translate_case comp c res cont
  | Tst.New c, _ -> 
    let aux_c = new_aux () in
    bind aux_c (field 0 comp)
      (translate_case aux_c pattern res cont)
  | Tst.Pair (c1, c2), _ -> 
    let tc1 = snd c1 in
    let tc2 = snd c2 in
    let w1, b1 = Util.bits_to_words (Expr.size_type tc1) in
    let w2, b2 = Util.bits_to_words (Expr.size_type tc2) in
    let aux_1_2 = new_aux () in
    let aux_1 = new_aux () in
    let aux_2 = new_aux () in
    let comp_1_2 = 
        sprintf "(apply (global $Mem $split) %s %d %d %d %d)" comp w1 b1 w2 b2 
    in
    let comp_1 = field 0 aux_1_2 in
    let comp_2 = field 1 aux_1_2 in
    let res_2 = translate_case aux_2 c2 res cont in
    let res_1 = translate_case aux_1 c1 res_2 cont in
    bind aux_1_2 comp_1_2 (
      bind aux_1 comp_1 (
        bind aux_2 comp_2 res_1
      )
    )
  | Tst.Block (a, c), t -> 
    translate_case comp (Tst.Pair(a, c), t) res cont
  | _ -> failwith "translation error"

let translate_compdef (x, c) = 
  Env.reset_ctr (); sprintf "(%s %s)" (var x) (translate c)

let mk_export seq = 
  List.filter_map 
    (fun (x, _) -> if x="_" then None else Some (var x))
    seq

let translate_seq seq = 
  sprintf "(module
  %s
  (_ (apply (global $Stdlib $print_int) (field 0 $w)))
  (_ (apply (global $Stdlib $print_endline) \"\"))
(export %s))"
  (String.concat "\n  " (List.map translate_compdef seq))
  (String.concat " " (mk_export seq))