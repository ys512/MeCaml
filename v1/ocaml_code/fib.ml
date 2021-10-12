let n = 40

let _ = 
  let rec fib x = 
    if x = 0 then 1
    else 
      if x = 1 then 1
      else fib (x-1) + 
           fib (x-2)
  in fib n