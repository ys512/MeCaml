let word_size = Sys.int_size

let size_obj x =
  if Obj.is_int x then 1
  else Obj.size x

let bits_to_words b = b/word_size, b mod word_size

let comb_len wx bx wy by = 
  if bx + by = 0 then
     wx + wy
  else 
    if bx + by < word_size then 
      wx + wy + 1 
    else 
      wx + wy + 2

let extract_bits x wx off len pos = 
  (* Printf.printf "off: %d, len: %d, pos: %d\n" off len pos; *)
  assert (off + len <= word_size);
  assert (pos + len <= word_size);
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
      let w', b' = bits_to_words (b_tot-ry) in
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
            ((Obj.obj (Obj.field y wy):int) lsr ry) lsl ry lxor
            ((Obj.obj (Obj.field x wx):int) lsl bx) lsr by
          ));
          for i = 1 to w do
            let left = (Obj.obj (Obj.field x (wx+i-1)):int) lsl (bx+ry) in
            let right = (Obj.obj (Obj.field x (wx+i)):int) lsr (by-bx) in
            Obj.set_field y (wy+i) (Obj.repr (left lxor right))
          done
        end
      else
        begin
          Obj.set_field y wy (Obj.repr (
            ((Obj.obj (Obj.field y wy):int) lsr ry lsl ry) lor
            ((Obj.obj (Obj.field x wx):int) lsl bx lsr by) lor
            ((Obj.obj (Obj.field x (wx+1)):int) lsr (bx-by))
          ));
          for i = 1 to w do
            let left = (Obj.obj (Obj.field x (wx+i)):int) lsl (by-bx) in
            let right = (Obj.obj (Obj.field x (wx+i+1)):int) lsr (bx+ry) in
            Obj.set_field y (wy+i) (Obj.repr (left lxor right))
          done
        end
      if bx + by < word_size then
        let residue = ((Obj.obj (Obj.field x (i-1))):int) lsl r in
        Obj.set_field y (wy + wx + 1) (Obj.repr residue);
      done *)

let combine x wx bx y wy by =
  (* Printf.printf "Comb: wx: %d, bx: %d, wy: %d, by: %d\n" wx bx wy by; *)
  let wo = comb_len wx bx wy by in
  let o = Obj.new_block 0 wo in
  copy x 0 0 o 0 0 wx bx; 
  copy y 0 0 o wx bx wy by; o

let split o wx bx wy by = 
  (* Printf.printf "Split: wx: %d, bx: %d, wy: %d, by: %d\n" wx bx wy by; *)
  let x = Obj.new_block 0 (if bx>0 then wx+1 else wx) in
  let y = Obj.new_block 0 (if by>0 then wy+1 else wy) in
  copy o 0 0 x 0 0 wx bx;
  copy o wx bx y 0 0 wy by;
  (x, y)