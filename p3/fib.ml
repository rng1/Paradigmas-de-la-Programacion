let rec fib n =
  if n <= 1 then n
  else fib (n-1) + fib (n-2);;

let print_fib n = 
  print_endline (string_of_int(fib n));;

let rec print_fib_rec n = 
  if n > 0 then print_fib_rec (n-1); print_fib n;;

let argsiz = 
  Array.length Sys.argv;;

let _ =
  if argsiz <> 2 then print_endline "Not enough arguments."
  else let n = 
    int_of_string(Array.get Sys.argv(1)) in print_fib_rec n;;