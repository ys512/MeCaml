open Syntax
open Ntype
open Util

let size_obj x =
  if Obj.is_int x then 1
  else Obj.size x

let copy x wx bx y wy by = 
  let sy = size_obj y in
    if wx + wy + (if bx + by < word_size then 1 else 0) > sy then 
      failwith "block copy overflow"
    else
      let r = word_size - by in
      Obj.set_field y wy (Obj.repr (
        (((Obj.magic (Obj.field y wy)):int) lsr r lsl r) lor 
        (((Obj.magic (Obj.field x 0)):int) lsr by)));
      for i = 1 to wx do
        let left = ((Obj.magic (Obj.field x (i-1))):int) lsl r in
        let right = ((Obj.magic (Obj.field x i)):int) lsr by in
        Obj.set_field y (wy+i) (Obj.repr (left lor right));
      if bx + by < word_size then
        let residue = ((Obj.magic (Obj.field x (i-1))):int) lsl r in
        Obj.set_field y (wy + wx + 1) (Obj.repr residue);
      done

let combine x wx bx y wy by =
  let wo = wx + wy + if bx + by < word_size then 1 else 0 in
  let o = Obj.new_block 0 wo in
  copy x wx bx o 0 0; 
  copy y wy by o wx bx; o


let index e l = 
  let rec idx i l' =
    match l' with
    | [] -> failwith "element not in list"
    | hd::tl -> if e = hd then i else idx (i+1) tl
  in idx 0 l

let singleton x = 
  "(block (tag 0)" ^ (string_of_int x) ^ ")"

let rec translate ((comp, t):Tst.tcomp) = 
  match comp with
  | Unit -> "(block (tag 0))"
  | Int x -> singleton x
  | Bool x -> singleton (if x then 0 else 1)
  | Var x -> "$_" ^ x
  | Tag a -> 
    ( match t with 
    | NTag ta -> 
      let ts = find ta !Env.tag_env "tag" in
      let pos = index a ts in
      singleton pos
    | _ -> failwith "translation error")
  | Pair (c1, c2) -> 
    "(apply $combine" ^ (translate c1 NUnit) ^ (translate c2 NUnit) ^ ")"
  | Lambda (x, _, c) ->
    "(lambda ($_" ^ x ^ ")" ^ (translate c NUnit) ^ ")"
  | App (c1, c2) ->
    "(apply " ^ (translate c1 NUnit) ^ (translate c2 NUnit) ^ ")"
  | Match (c1, cases) ->
    "(switch c1"