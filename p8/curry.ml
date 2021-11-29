let curry =  
  function f -> function a -> function b -> f (a,b);;
let curry f a b = 
  f (a,b);;

let uncurry =  
  function f -> function (a,b) -> f a b;;
let uncurry f(a,b) = f a b;;

uncurry (+);;
(* int * int -> int = <fun> *)

let sum = 
  (uncurry (+));;
(* val sum : int * int -> int = <fun> *)

(* sum 1;; *)
(* Error de tipo -- expresión de tipo int pero se esperaba de tipo (int * int) *)

sum (2, 1);;
(* int = 3 *)

let g = 
  curry (function p -> 2 * fst p + 3 * snd p);;
(* val g : int -> int -> int = <fun> *)

(* g (2, 5);; *)
(* Error de tipo -- expresión de tipo ('a * 'b) pero se esperaba de tipo int *)

let h = g 2;;
(* val h : int -> int = <fun> *)

h 1, h 2, h 3;;
(* int * int * int = (7, 10, 13) *)