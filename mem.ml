let word_size = 32

let size_obj x =
  if Obj.is_int x then 1
  else Obj.size x

let comb_len wx bx wy by = 
  if bx + by = 0 then
     wx + wy
  else 
    if bx + by < word_size then 
      wx + wy + 1 
    else 
      wx + wy + 2

(* Copy from one block to another;
Parameters:
x: block to copy from;
wx, bx: position to start copy from;
y: block to copy to;
wy, by: position to start copy to;
w, b: number of words and bits to copy *)

let rec aligned_copy x wx bx y wy w b = 
  if w <= 0 then
    if b <= 0 then ()
    else
      if bx + b < word_size then
        Obj.set_field y wy (Obj.repr (
          (Obj.magic (Obj.field x wx):int) lsl bx
        ))
      else
        aligned_copy x wx bx y wy 1 0
  else
    begin
      let rx = word_size - bx in
      Obj.set_field y wy (Obj.repr (
        (Obj.magic (Obj.field x wx):int) lsl bx lxor
        ((Obj.magic (Obj.field x (wx+1)):int) lsr rx) lsl bx
      ));
      aligned_copy x (wx+1) bx y (wy+1) (w-1) b
    end

let copy x wx bx y wy by w b = 
  let sx = Obj.size x in
  let sy = Obj.size y in
    if comb_len wx bx w b > sx then 
      failwith "too much content to copy from" 
    else
    if comb_len wy by w b > sy then
      failwith "too much content to copy to" 
    else
      let ry = word_size - by in
      let rx = word_size - bx in
      let b_tot = w * word_size + b in
      let w' = (b_tot - ry) / word_size in
      let b' = (b_tot - ry) mod word_size in
      if bx < by then (
        Obj.set_field y wy (Obj.repr (
          ((Obj.magic (Obj.field y wy):int) lsr ry) lsl ry lxor
          ((Obj.magic (Obj.field x wx):int) lsl bx) lsr by
        ));
        aligned_copy x wx (bx+ry) y (wy+1) w' b'
      )
      else 
        if rx > b_tot then(
          Obj.set_field y wy (Obj.repr (
            ((Obj.magic (Obj.field y wy):int) lsr ry) lsl ry lxor
            ((Obj.magic (Obj.field x wx):int) lsl bx) lsr by
          )))
        else(
          Obj.set_field y wy (Obj.repr (
            ((Obj.magic (Obj.field y wy):int) lsr ry lsl ry) lxor
            ((Obj.magic (Obj.field x wx):int) lsl bx lsr by) lxor
            ((Obj.magic (Obj.field x (wx+1)):int) lsr (rx+by))
          ));
          aligned_copy x (wx+1) (ry-rx) y (wy+1) w' b')


(* let copy x wx bx y wy by w b = 
  let sx = Obj.size x in
  let sy = Obj.size y in
    if comb_len wx bx w b > sx then 
      failwith "too much content to copy from" 
    else
    if comb_len wy by w b > sy then
      failwith "too much content to copy to" 
    else
      let ry = word_size - by in
      if bx < by then
        begin
          Obj.set_field y wy (Obj.repr (
            ((Obj.magic (Obj.field y wy):int) lsr ry) lsl ry lxor
            ((Obj.magic (Obj.field x wx):int) lsl bx) lsr by
          ));
          for i = 1 to w do
            let left = (Obj.magic (Obj.field x (wx+i-1)):int) lsl (bx+ry) in
            let right = (Obj.magic (Obj.field x (wx+i)):int) lsr (by-bx) in
            Obj.set_field y (wy+i) (Obj.repr (left lxor right))
          done
        end
      else
        begin
          Obj.set_field y wy (Obj.repr (
            ((Obj.magic (Obj.field y wy):int) lsr ry lsl ry) lor
            ((Obj.magic (Obj.field x wx):int) lsl bx lsr by) lor
            ((Obj.magic (Obj.field x (wx+1)):int) lsr (bx-by))
          ));
          for i = 1 to w do
            let left = (Obj.magic (Obj.field x (wx+i)):int) lsl (by-bx) in
            let right = (Obj.magic (Obj.field x (wx+i+1)):int) lsr (bx+ry) in
            Obj.set_field y (wy+i) (Obj.repr (left lxor right))
          done
        end
      if bx + by < word_size then
        let residue = ((Obj.magic (Obj.field x (i-1))):int) lsl r in
        Obj.set_field y (wy + wx + 1) (Obj.repr residue);
      done *)

let combine x wx bx y wy by =
  let wo = comb_len wx bx wy by in
  let o = Obj.new_block 0 wo in
  copy x 0 0 o 0 0 wx bx; 
  copy y 0 0 o wx bx wy by; o

let split o wx bx wy by = 
  let x = Obj.new_block 0 (if bx>0 then wx+1 else wx) in
  let y = Obj.new_block 0 (if by>0 then wy+1 else wy) in
  copy o 0 0 x 0 0 wx bx;
  copy o wx bx y 0 0 wy by;
  (x, y)
