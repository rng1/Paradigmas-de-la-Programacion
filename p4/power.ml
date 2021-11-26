let rec power x y = 
  if (y > 0) then x * power x (y - 1) 
  else 1;;

let rec power' x y = 
  if (y > 0) then 
    if (y mod 2 = 0) then power' (x*x) (y/2) 
    else x * power' (x*x) (y/2) 
  else 1;;
(* 
  power' is faster in the way that one part of the product
  is already being made when calling recursively this function.

  power' es más rápida gracias a que una parte del producto
  ya se realiza cuando se llama a la función recursivamente, y
  a que al ser int los exponentes siempre quedan truncados a
  un valor más sencillo de analizar.
  
  Por ejemplo, con power, power 2 5 sería de la forma
    2⁵
    2 * 2⁴
    2 * 2 * 2³
    2 * 2 * 2 * 2²
    2 * 2 * 2 * 2 * 2¹
    2 * 2 * 2 * 2 * 2 * 2⁰
    2 * 2 * 2 * 2 * 2 * 1 = 32

  mientras que con power', power' 2 5 sería de la forma
    2⁵
    2 * 4²
    2 * 16¹
    2 * 16 * 32⁰
    2 * 16 * 1 = 32
*)

let rec powerf x y =    
  if (y > 0) then 
    if (y mod 2 = 0) then powerf (x*.x) (y / 2) 
    else x *. powerf (x*.x) (y / 2) 
  else 1.;;

