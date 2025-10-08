
(* Ejemplos de pattern matching con "match with" y con "function" *)

(* Usando `function` para hacer pattern matching en enteros *)
let is_zero = function
  | 0 -> true
  | _ -> false

(* Clasificación de números usando `match` con multiples argumentos *)
let sign n message =
  match n with
  | 0 -> "cero " ^ message
  | n when n > 0 -> "positivo " ^ message
  | _ -> "negativo " ^ message

(* Ejemplo que usa pattern matching sobre tuplas *)
let classify_pair = function
  | (0, 0) -> "both zero"
  | (0, y) -> Printf.sprintf "first zero, second %d" y
  | (x, 0) -> Printf.sprintf "first %d, second zero" x
  | (x, y) when x = y -> "equal"
  | _ -> "different"

(* Mismo ejemplo con if-else encadenados (misma semántica, distinto estilo) *)
let classify_pair_if (x, y) =
  if x = 0 then
    if y = 0 then "both zero"
    else Printf.sprintf "first zero, second %d" y
  else if y = 0 then
    Printf.sprintf "first %d, second zero" x
  else if x = y then
    "equal"
  else
    "different"

(* Ejemplo que encadena pattern matching varios pasos: analizar un par y luego aplicar if-else *)
let analyze_pair (x, y) =
  match (x, y) with
  | (0, 0) -> "both zero"
  | (a, b) when a > b -> "first greater"
  | (a, b) when a < b -> "second greater"
  | _ ->
    (* fallback con if-else encadenados para mostrar la sintaxis equivalente *)
    if x = y then "equal"
    else "unknown"

(* Ejemplo que encadena varios pattern matching y if-else usando auxiliares *)
let describe_point p =
  (* helper local para convertir coordenadas a string *)
  let coord_to_str (x, y) = Printf.sprintf "(%d,%d)" x y in
  match p with
  | (0, 0) -> "origen"
  | (0, y) when y > 0 -> "eje Y positivo: " ^ coord_to_str p
  | (0, y) when y < 0-> "eje Y negativo o cero: " ^ coord_to_str p
  | (x, 0) when x > 0 -> "eje X positivo: " ^ coord_to_str p
  | (x, 0) when x < 0 -> "eje X negativo: " ^ coord_to_str p
  | (x, y) when x = y -> "linea x=y: " ^ coord_to_str p
  | (x, y) -> (* fallback: usar if-else para clasificar por cuadrante *)
      if x > 0 then
        if y > 0 then "cuadrante I: " ^ coord_to_str p
        else "cuadrante IV: " ^ coord_to_str p
      else
        if y > 0 then "cuadrante II: " ^ coord_to_str p
        else "cuadrante III: " ^ coord_to_str p


(* Ejemplo de pattern matching múltiple y recursivo con guardas e if-else *)
let rec describe_temp n =
  match n with
  | x when x < 0 ->
      if x < -10 then "freezing"
      else "cold"
  | x when x = 0 -> "neutral"
  | x when x > 0 && x <= 10 ->
      if x mod 2 = 0 then "warm even"
      else "warm odd"
  | x when x > 10 ->
      (* si la temperatura es muy alta, "enfriamos" recursivamente *)
      "too hot → " ^ describe_temp (x - 10)
  | _ -> "undefined"