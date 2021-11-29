let f n = 
  if n mod 2 = 0 then n / 2 
  else 3 * n + 1
 
 
let rec orbit n = 
  if n > 1 then (Printf.printf("%d, ") n; 
                 orbit (f (n) ) ) 
  else print_endline "1";;


let rec length n = 
  if n == 1 then 0 
  else (1 + length(f(n)));;


let rec top n = 
  if n == 1 then 1  
  else (max(n)(top(f(n))));;


let length'n'top n = 
  if n == 1 then (0,1)
  else (1 + length(f(n)), max(n)(top(f(n))));;


let rec longest_in m n =
  if m <> n then
    if length m >= length n then longest_in m (n-1) 
    else longest_in (m+1) n  
  else m;;

let rec highest_in m n =
  if m <> n then
    if top m >= top n then highest_in m (n-1) 
    else highest_in (m+1) n  
  else m;;