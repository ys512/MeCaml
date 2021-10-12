let rec fib x = 
  if x = 0 then 1
  else 
    if x = 1 then 1
    else fib (x-1) + fib (x-2)

let y = print_int (fib 40)