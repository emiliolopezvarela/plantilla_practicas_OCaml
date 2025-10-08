(* Funcion basica conjetura de collatz *)
let f n = if n mod 2 = 0 then n / 2 else 3 * n + 1

(* Check iterativo de la conjetura *)
let rec check n =
  n = 1 || check (f n)


(* Check_to *)
let check_to n = check n

(* Orbit *)
let orbit n = string_of_int n

(* Length *)
let length n = f n

(* Top *)
let top n = n + 1