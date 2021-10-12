let word_size = Sys.int_size

let size_obj x =
  if Obj.is_int x then 1
  else Obj.size x

let bits_to_words b = (b-1)/word_size + 1

let comb_len wx bx wy by = 
  let sx = wx * word_size + bx in
  let sy = wy * word_size + by in
  bits_to_words (sx + sy)

let autobox x = 
  if Obj.is_block x then x
  else 
    let y = Obj.new_block 0 1 in
    Obj.set_field y 0 (Obj.repr x); y

let autounbox x =
  if Obj.is_block x && Obj.size x = 1 && Obj.is_int (Obj.field x 0) then
    Obj.field x 0
  else x

let shift_bits x off len pos = 
  if len < 0 then 0 
  else if len > word_size then x
  else ((x lsr off) lsl (word_size-len)) lsr (word_size-pos-len)

let extract_bits x off len = shift_bits x off len off

(* Copy from one block to another;
Parameters:
x: block to copy from;
wx, bx: position to start copy from;
y: block to copy to;
wy, by: position to start copy to;
w, b: number of words and bits to copy *)

let rec aligned2_copy x wx y wy w = 
  if w <= 0 then ()
  else (
    Obj.set_field y wy (Obj.field x wx);
    aligned2_copy x (wx+1) y (wy+1) (w-1))

let rec aligned_copy x wx y wy by w b = 
  let ry = word_size - by in
  if w <= 0 then
    if b <= 0 then ()
    else
      let rb = word_size - b in
      let fx0 = (Obj.obj (Obj.field x wx):int) in
      let fy0 = (Obj.obj (Obj.field y wy):int) in
      if b < ry then
        Obj.set_field y wy
        (Obj.repr (
          shift_bits fx0 0 b by lxor 
          extract_bits fy0 0 by))
      else
        let fy1 = (Obj.obj (Obj.field y (wy+1)):int) in
        Obj.set_field y wy
        (Obj.repr (
          shift_bits fx0 0 ry by lxor 
          extract_bits fy0 0 by));
        Obj.set_field y (wy+1)
        (Obj.repr (
          shift_bits fx0 ry (b-ry) 0 lxor
          extract_bits fy1 (b-ry) (rb+ry)))      
  else
    begin
      if Obj.is_block (Obj.field x wx) then
        let wy = wy + if by = 0 then 0 else 1 in
        Obj.set_field y wy (Obj.field x wx);
        aligned2_copy x (wx+1) y (wy+1) (w-1);
        aligned_copy x (wx+w) y (wy+w) 0 0 by
      else
        let fx0 = (Obj.obj (Obj.field x wx):int) in
        let fy0 = (Obj.obj (Obj.field y wy):int) in
        let fy1 = (Obj.obj (Obj.field y (wy+1)):int) in
        Obj.set_field y wy
        (Obj.repr (
          shift_bits fx0 0 ry by lxor
          extract_bits fy0 0 by));
        Obj.set_field y (wy+1)
        (Obj.repr (
          shift_bits fx0 ry by 0 lxor
          extract_bits fy1 by ry));
        aligned_copy x (wx+1) y (wy+1) by (w-1) b
    end

let copy x wx bx y wy by w b = 
    let ry = word_size - by in
    let rx = word_size - bx in
    let b_tot = w * word_size + b in
    if b_tot < rx then
      if b_tot < ry then
        let fx0 = (Obj.obj (Obj.field x wx):int) in
        let fy0 = (Obj.obj (Obj.field y wy):int) in
        Obj.set_field y wy (Obj.repr (
          extract_bits fy0 0 by lxor
          shift_bits fx0 bx b_tot by lxor
          extract_bits fy0 (by+b_tot) (ry-b_tot)))
      else
        let fx0 = (Obj.obj (Obj.field x wx):int) in
        let fy0 = (Obj.obj (Obj.field y wy):int) in
        let fy1 = (Obj.obj (Obj.field y (wy+1)):int) in
        Obj.set_field y wy (Obj.repr (
          extract_bits fy0 0 by lxor
          shift_bits fx0 bx ry by));
        Obj.set_field y (wy+1) (Obj.repr (
          shift_bits fx0 (bx+ry) (b_tot-ry) 0 lxor
          extract_bits fy1 (b_tot-ry) (word_size-b_tot+ry)))
    else
      let b_rem = b_tot-ry in
      let w' = b_rem/word_size in
      let b' = b_rem mod word_size in
      if ry > rx then (
        let fx0 = (Obj.obj (Obj.field x wx):int) in
        let fy0 = (Obj.obj (Obj.field y wy):int) in
        Obj.set_field y wy (Obj.repr (
          extract_bits fy0 0 by lxor
          shift_bits fx0 bx rx by lxor
          extract_bits fy0 (by+rx) (ry-rx)));
        aligned_copy x wx y wy (by+rx) w' b')
      else (
        let fx0 = (Obj.obj (Obj.field x wx):int) in
        let fy0 = (Obj.obj (Obj.field y wy):int) in
        let fy1 = (Obj.obj (Obj.field y (wy+1)):int) in
        Obj.set_field y wy (Obj.repr (
          extract_bits fy0 0 by lxor
          shift_bits fx0 bx ry by));
        Obj.set_field y (wy+1) (Obj.repr (
          shift_bits fx0 (bx+ry) (rx-ry) 0 lxor
          extract_bits fy1 (rx-ry) (bx+ry)));
        aligned_copy x wx y (wy+1) (rx-ry) w' b')

let combine x sx y sy =
  let wx, bx = sx/word_size, sx mod word_size in
  let wy, by = sy/word_size, sy mod word_size in
  let wo = bits_to_words (sx+sy) in
  let o = Obj.new_block 0 wo in
  copy (autobox x) 0 0 o 0 0 wx bx;
  copy (autobox y) 0 0 o wx bx wy by; autounbox o

let extract x wx bx wy by = 
  let y = Obj.new_block 0 (if by>0 then wy+1 else wy) in
  copy (autobox x) wx bx y 0 0 wy by; autounbox y

let resize x b = 
  let wy = bits_to_words b in
  let y = Obj.new_block 0 wy in
  let wx = Obj.size x in
  aligned2_copy x 0 y 0 wx; y

let rec str_field x pos acc = 
  if pos < 0 then acc
  else
    Printf.ksprintf (str_field x (pos-1)) "%d | %s" (Obj.obj (Obj.field x pos):int) acc

let debug x = 
  if Obj.is_int x then
    Printf.printf "Int: %d\n" (Obj.obj x:int)
  else
    Printf.printf "Block: %d | %s\n" (Obj.tag x)
    (str_field x (Obj.size x - 1) "")