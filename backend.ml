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

let singleton s = sprintf "(block (tag 0) %s )" s

let aux n = sprintf "$aux_%d" n

let var s = sprintf "$_%s" s

let field n b = sprintf "(field %d %s)" n b

let bind x cx c = sprintf "(let (%s %s) %s)" x cx c

let translate_unit = "(block (tag 0))"

let translate_int n = singleton (string_of_int n)

let translate_bool b = singleton (if b then "0" else "1")

let translate_var x = var x

let translate_tag a ta = 
  let ts = find ta !Env.tag_env "tag" in
    let pos = index a ts in
    singleton (string_of_int pos)

let rec translate ((comp, t):Tst.tcomp) = 
  match comp, t with
  | Unit, NUnit           -> translate_unit
  | Int n, NInt           -> translate_int n
  | Bool b, NBool         -> translate_bool b
  | Var x, _              -> translate_var x
  | Tag a, NTag ta        -> translate_tag a ta
  | New c, _              -> singleton(translate c)
  | Align c, _            -> translate c
  | Pair (c1, c2), NProd (t1, t2)     -> translate_pair c1 c2 t1 t2
  | Block (a, c), NMatch (ta, cases)  -> translate_block a c ta cases
  | Lambda (x, c), _      -> translate_lambda x c
  | App (c1, c2), _       -> translate_app c1 c2
  | Match (c1, cases), _  -> translate_match c1 cases
  | _                     -> failwith "translation error"

and translate_pair c1 c2 t1 t2 = 
  let w1, b1 = Util.bits_to_words (Expr.size_type t1) in
  let w2, b2 = Util.bits_to_words (Expr.size_type t2) in
  sprintf "(global $Mem $combine %s %d %d %s %d %d)" 
  (translate c1) w1 b1 (translate c2) w2 b2 

and translate_block a c ta cases =
  let tc = List.assoc a cases in
  translate_pair (Tag a, NTag ta) c (NTag ta) tc

and translate_lambda x c = 
  sprintf "(lambda %s %s)"
    (translate_var x) (translate c)

and translate_app c1 c2 = 
  sprintf "(apply %s %s)" 
    (translate c1) (translate c2)
    
and translate_match c cases = 
  bind (aux 0) (translate c) (
    let rec translate_cases cases =
      match cases with
      | [] -> "global $Stdlib $exit 1", 0
      | (pattern, res)::tail ->
        let str_res = translate res in
        let cont, count = translate_cases tail in
        translate_case (count+1) pattern str_res cont 
    in fst (translate_cases cases)
  )

and translate_case count pattern res cont = 
  match pattern with
  | Tst.Tag a, NTag ta -> 
    sprintf "(switch %s (%s %s) (_ %s))" 
      (field 0 (aux count)) (translate_tag a ta) res cont, count
  | Tst.Var x, _ ->
    bind (var x) (aux count) res, count
  | Tst.Align c, NAlign t ->
    fst (translate_case count c res cont), count
  | Tst.New c, NRef t -> 
    bind (aux (count+1)) (field 0 (aux count))
      (fst (translate_case (count+1) pattern res cont)), count
  | Tst.Pair (c1, c2), NProd (t1, t2) -> 
    let w1, b1 = Util.bits_to_words (Expr.size_type t1) in
    let w2, b2 = Util.bits_to_words (Expr.size_type t2) in
    let aux_1 = 
      sprintf "global $Mem $split %s %d %d %d %d" (aux count) w1 b1 w2 b2 
    in
    let aux_2 = field 0 (aux (count+1)) in
    let aux_3 = field 1 (aux (count+1)) in
    let res2, count2 = translate_case (count+2) c2 res cont in
    let res1, count1 = translate_case (count2+1) c1 res2 cont in
    bind (aux (count+1)) aux_1 (
      bind (aux (count2+1)) aux_2 (
        bind (aux (count+2)) aux_3 res1
      )
    ), count1
  | Tst.Block (a, c), NMatch (ta, cases) -> 
    let tc = List.assoc a cases in
    translate_case count 
      (Pair((Tag a, NTag ta), c), NProd(NTag ta, tc))
      res cont
  | _ -> failwith "unhandled"
