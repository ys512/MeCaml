let word_size = Sys.int_size

let size_obj x =
  if Obj.is_int x then 1
  else Obj.size x

let bits_to_words b = (b-1)/word_size + 1

let comb_len wx bx wy by = 
  if bx + by = 0 then
     wx + wy
  else 
    if bx + by < word_size then 
      wx + wy + 1 
    else 
      wx + wy + 2

let autobox x = 
  if Obj.is_block x then x
  else 
    let y = Obj.new_block 0 1 in
    Obj.set_field y 0 (Obj.repr x); y

let extract_bits x wx off len pos = 
  (* Printf.printf "off: %d, len: %d, pos: %d\n" off len pos; *)
  (* assert (off + len <= word_size);
  assert (pos + len <= word_size); *)
  (((Obj.obj (Obj.field x wx):int) lsr off) lsl (word_size-len)) lsr (word_size-pos-len)

(* Copy from one block to another;
Parameters:
x: block to copy from;
wx, bx: position to start copy from;
y: block to copy to;
wy, by: position to start copy to;
w, b: number of words and bits to copy *)

let rec aligned_copy x wx bx y wy w b = 
  let rx = word_size - bx in
  if w <= 0 then
    if b <= 0 then ()
    else
      let rb = word_size - b in
      let x_copy = 
        if b < rx then
          extract_bits x wx bx b 0
        else
          extract_bits x wx bx rx 0 lxor
          extract_bits x (wx+1) 0 (b-rx) rx in
      let y_copy = extract_bits y wy b rb b in
      Obj.set_field y wy (Obj.repr (x_copy lxor y_copy))      
  else
    begin
      Obj.set_field y wy (Obj.repr (
        extract_bits x wx bx rx 0 lxor
        extract_bits x (wx+1) 0 bx rx
      ));
      aligned_copy x (wx+1) bx y (wy+1) (w-1) b
    end

let copy x wx bx y wy by w b = 
  (* Printf.printf "wx: %d, bx: %d, wy: %d, by:%d\n" wx bx wy by; *)
  (* let sx = Obj.size x in
  let sy = Obj.size y in
  if comb_len wx bx w b > sx then 
    failwith "too much content to copy from" 
  else
  if comb_len wy by w b > sy then
    failwith "too much content to copy to" 
  else *)
    let ry = word_size - by in
    let rx = word_size - bx in
    let b_tot = w * word_size + b in
    if b_tot < ry then
      let y_copy = 
        extract_bits y wy 0 by 0 lxor
        extract_bits y wy (by+b_tot) (ry-b_tot) (by+b_tot) in
      let x_copy = 
        if b_tot <= rx then
          extract_bits x wx bx b_tot by
        else
          extract_bits x wx bx rx by lxor
          extract_bits x (wx+1) 0 (b_tot-rx) (by+rx) in
      Obj.set_field y wy (Obj.repr (y_copy lxor x_copy))
    else
      let b_rem = b_tot-ry in
      let w' = b_rem/word_size in
      let b' = b_rem mod word_size in
      let y_copy = extract_bits y wy 0 by 0 in
      if ry <= rx then
        begin
          let x_copy = extract_bits x wx bx ry by in
          Obj.set_field y wy (Obj.repr (x_copy lxor y_copy));
          aligned_copy x wx (bx+ry) y (wy+1) w' b'
        end
      else
        begin
          let x_copy =
            extract_bits x wx bx rx by lxor
            extract_bits x (wx+1) 0 (ry-rx) (by+rx) in
          Obj.set_field y wy (Obj.repr (x_copy lxor y_copy));
          aligned_copy x (wx+1) (ry-rx) y (wy+1) w' b'
        end

let rec copy_words x wx y wy w = 
  if w = 0 then ()
  else
    begin
      Obj.set_field y wy (Obj.field x wx);
      copy_words x (wx+1) y (wy+1) (w-1)
    end

let combine x wx bx y wy by = 
  let wo = comb_len wx bx wy by in
  if Obj.is_int x && Obj.is_int y && wo <= 1 then
    let nx = (Obj.obj x:int) in
    let ny = (Obj.obj y:int) in
    let rx = word_size - bx in
    let ry = word_size - by in
    Obj.repr (
      (nx lsl rx) lsr rx lxor
      (ny lsl ry) lsr (ry-bx)
    )
  else
    let o = Obj.new_block 0 wo in
    copy (autobox x) 0 0 o 0 0 wx bx; 
    copy (autobox y) 0 0 o wx bx wy by; o

let extract x wx bx wy by = 
  if Obj.is_int x then
    let n = (Obj.obj x:int) in
    Obj.repr ((n lsl (word_size-by-bx)) lsr (word_size-by))
  else
    if wy = 0 then
      if bx + by <= word_size then
        Obj.repr (extract_bits x wx bx by 0)
      else
        let rx = word_size - bx in
        Obj.repr (
          extract_bits x wx bx rx 0 lxor
          extract_bits x (wx+1) 0 (by-rx) rx 
        )
    else
      let y = Obj.new_block 0 (if by>0 then wy+1 else wy) in
      copy x wx bx y 0 0 wy by; y

let resize x b = 
  let wy = bits_to_words b in
  let y = Obj.new_block 0 wy in
  let wx = Obj.size x in
  copy_words x 0 y 0 wx; y

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