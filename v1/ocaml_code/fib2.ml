let n = 1000
let m = 200000

let rec fib n x y = 
  if n = 0 then x
  else 
    fib (n-1) (x+y) x
    
let rec bench x =
  let _ = fib n 1 1 in
  if x = 0 then ()
  else bench (x-1)
  
let _ = bench m

