(* ====== Funciones muy básicas, una por tipo ====== *)

(* Int -> Int *)
let doble n = 2 * n

(* Int -> Bool *)
let es_par n = n mod 2 = 0

(* Int -> Float *)
let mitad n = float_of_int n /. 2.0

(* Int -> String *)
let texto n = "El número es " ^ string_of_int n

(* Int -> Char *)
let letra n = Char.chr ((n mod 26) + Char.code 'a')

(* Int -> (int * float * bool) *)
let mezcla n = (n, float_of_int n, n > 10)
