let rec gcd a b = 
  if a mod b = 0 then b
  else gcd b (a mod b)

let n = 3000

let rec bench a b =
  let _ = gcd a b in
  if a = 1 then
    if b = 1 then ()
    else bench n (b-1)
  else bench (a-1) b

let _ = bench n n