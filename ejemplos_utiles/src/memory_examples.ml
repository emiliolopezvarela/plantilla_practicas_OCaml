
(* Ejemplos: Comparación de implementaciones recursivas no tail vs tail-recursive *)

(* Factorial: implementación no tail-recursive *)
let rec fact n =
  if n <= 1 then 1 else n * fact (n - 1)

(* Factorial: implementación tail-recursive usando acumulador (más eficiente en memoria) *)
let fact_tail n =
  let rec aux acc i =
    if i > n then acc else aux (acc * i) (i + 1)
  in
  aux 1 1