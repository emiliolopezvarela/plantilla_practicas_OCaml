(* Función auxiliar para mostrar el resultado de un test *)
(* let test name cond =
  if cond then Printf.printf "✅ [OK] %s\n" name
  else failwith (Printf.sprintf "❌ %s failed" name) *)

(* Probar funciones implementadas en los otros archivos .ml *)
let () =

  (* Podemos imprimir el resultado de aplicar nuestras funciones *)
  (* Printf.printf "Orbit (13) -> %s\n" (Practicas.Collatz.orbit 13); *)

  (* Podemos comprobar que nuestras funciones dan el resultado correcto *)
  (* test "Orbit (13)" (Practicas.Collatz.orbit 13 = "13, 40, 20, 10, 5, 16, 8, 4, 2, 1"); *)
  (* Printf.printf "\n\n"; *)

  (* Ejemplos de print usando los distintos tipos de datos *)
  Printf.printf "\n=== Pruebas básicas de tipos ===\n";

  (* int *)
  Printf.printf "doble 4 -> %d\n" (Practicas.Prueba.doble 4);

  (* bool *)
  Printf.printf "es_par 7 -> %B\n" (Practicas.Prueba.es_par 7);
  Printf.printf "es_par 8 -> %B\n" (Practicas.Prueba.es_par 8);

  (* float *)
  Printf.printf "mitad 9 -> %f\n" (Practicas.Prueba.mitad 9);

  (* string *)
  Printf.printf "texto 12 -> %s\n" (Practicas.Prueba.texto 12);

  (* char *)
  Printf.printf "letra 5 -> %c\n" (Practicas.Prueba.letra 5);

  (* tupla *)
  let (a, b, c) = Practicas.Prueba.mezcla 15 in Printf.printf "mezcla 15 -> (%d, %.2f, %B)\n" a b c;

  Printf.printf "=== Fin de pruebas ===\n\n"

