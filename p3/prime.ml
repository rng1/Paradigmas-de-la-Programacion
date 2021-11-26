let is_prime n = 
  let rec check_from i = 
    i >= n ||
    (n mod i <> 0 && check_from (i + 1))
  in check_from 2;;

let rec next_prime n = 
  (function true -> n + 1 | false -> next_prime (n + 1)) 
  (is_prime(n+1));;

let rec last_prime_to n = 
  (function true -> n | false -> last_prime_to (n - 1)) 
  (is_prime(n));;

let is_prime2 n = 
  let root = 
    truncate(sqrt(float_of_int(n))) + 1 
  in let rec check i = 
    (i > root) || (n mod i <> 0 && check (i+1)) 
  in check 2;;
