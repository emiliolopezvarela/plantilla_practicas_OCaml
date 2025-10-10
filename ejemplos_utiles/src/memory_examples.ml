
(* Ejemplos: Comparación de implementaciones recursivas no tail vs tail-recursive *)

(* Funcion de suma: implementación no tail-recursive (Ineficiente en memoria) *)
let rec sum_to_in n =
  if n <= 0 then 0
  else n + sum_to_in (n - 1)

(* Funcion de suma: implementación tail-recursive usando acumulador (más eficiente en memoria) *)
(* Ejemplo 1 con IF ELSE *)
let rec aux acu k =
  if k <= 0 then acu
  else aux (acu + k) (k - 1)

let sum_to n = aux 0 n

(* Ejemplo 2 con Match Pattern -> function *)
let rec aux_2 acu = function
  | k when k <= 0 -> acu
  | k -> aux_2 (acu + k) (k - 1)

let sum_to_2 n = aux_2 0 n

(* Ejemplo 3 con Match Pattern -> match *)
let rec aux_3 acu k =
  match k with
  | _ when k <= 0 -> acu
  | _ -> aux_3 (acu + k) (k - 1)

let sum_to_3 n = aux_3 0 n