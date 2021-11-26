false && (2 / 0 > 0);;
(* 
  if false then (2 / 0 > 0) else false
  bool = false;
*)

true && (2 / 0 > 0);;
(* 
  if true then (2 / 0 > 0) else false
  ESPERADO: bool = true;
  RESULTADO: Exception: Division_by_zero                AL EFECTUARSE SIEMPRE LA OPERACIÓN, EL RESULTADO NO ES CALCULABLE
*)

true || (2 / 0 > 0);;
(* 
  if true then true else (2 / 0 > 0)
  bool = true;
*)

false || (2 / 0 > 0);;
(* 
  if false then true else (2 / 0 > 0)
  Exception: Division_by_zero
*)

let con b1 b2 = b1 && b2;;
(*
  val con b1 b2 : bool -> bool -> bool = <fun>          DECLARACIÓN DE FUNCIÓN
*)

let dis b1 b2 = b1 || b2;;
(*
  val cdis b1 b2 : bool -> bool -> bool = <fun>         DECLARACIÓN DE FUNCIÓN
*)

con (1 < 0) (2 / 0 > 0);;
(* 
  if (1 < 0) then (2 / 0 > 0) else false
  ESPERADO: bool = false;
  RESULTADO: Exception: Division_by_zero                EVALUA PRIMERO AMBOS PARÁMETROS INDIVIDUALMENTE
*)

(1 < 0) && (2 / 0 > 0);;
(* 
  if (1 < 0) then (2 / 0 > 0) else false
  bool = false;
*)

dis (1 < 0) (2 / 0 > 0);;
(* 
  if (1 < 0) then true else (2 / 0 > 0)
  Exception: Division_by_zero
*)

(1 < 0) || (2 / 0 > 0);;
(* 
  if (1 < 0) then true else (2 / 0 > 0)
  Exception: Division_by_zero
*)
