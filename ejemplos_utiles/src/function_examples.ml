(* Ejemplos del uso de "function", if-else, concatenación de strings y auxiliares *)

(* Forma típica con `function` (uso estilístico) *)
let incr = function x -> x + 1
let incr_2 x = x + 1

(* Como sustituir function por in *) (* (function x -> 2 * x) (2 + 1) *)
let result = let doble x = 2 * x in doble (2 + 1)

(* Pattern matching sobre option usando `function` *)
let describe_option = function
  | None -> "sin valor"
  | Some v -> Printf.sprintf "valor: %d" v