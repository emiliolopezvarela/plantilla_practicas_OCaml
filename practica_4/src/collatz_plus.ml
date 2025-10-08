(* Funcion basica conjetura de collatz *)
let f n = if n mod 2 = 0 then n / 2 else 3 * n + 1

(* Top and Length *)
let length_and_top n = (n, f (n))