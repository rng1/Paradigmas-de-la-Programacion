let rec mcd (x, y) = 
  if (x mod y > 0) then mcd (y, (x mod y)) 
  else y;; 
