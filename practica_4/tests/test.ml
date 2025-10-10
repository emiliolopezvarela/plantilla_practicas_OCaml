(* Función auxiliar para mostrar el resultado de un test *)
let test name cond =
  if cond then Printf.printf "✅ [OK] %s\n" name
  else failwith (Printf.sprintf "❌ %s failed" name)

(* Probar funciones implementadas en los otros archivos .ml *)
let () =

  (* Podemos imprimir el resultado de aplicar nuestras funciones *)
  (* Printf.printf "Orbit (13) -> %s\n" (Practicas.Collatz.orbit 13); *)

  (* Podemos comprobar que nuestras funciones dan el resultado correcto *)
  (* test "Orbit (13)" (Practicas.Collatz.orbit 13 = "13, 40, 20, 10, 5, 16, 8, 4, 2, 1"); *)
  (* Printf.printf "\n\n"; *)

  
  (* Ejemplos de varios test de los ejercicios con print *)
  Printf.printf "Check_to 1000000 -> %b\n" (Practicas.Collatz.check_to 1000000);
  Printf.printf "\n";

  Printf.printf "Orbit 13 -> %s\n" (Practicas.Collatz.orbit 13);
  Printf.printf "\n";

  Printf.printf "Length 13 -> %d\n" (Practicas.Collatz.length 13);
  Printf.printf "Length 27 -> %d\n" (Practicas.Collatz.length 27);
  Printf.printf "Length 0 -> %d\n" (Practicas.Collatz.length 0);
  Printf.printf "Length -1 -> %d\n" (Practicas.Collatz.length (-1));
  Printf.printf "\n";

  Printf.printf "Top 13 -> %d\n" (Practicas.Collatz.top 13);
  Printf.printf "Top 27 -> %d\n" (Practicas.Collatz.top 27);
  Printf.printf "\n";


  let (len, top) = Practicas.Collatz_plus.length_and_top 13 in Printf.printf "Length and Top 13 -> (%d, %d)\n" len top;
  let (len, top) = Practicas.Collatz_plus.length_and_top 27 in Printf.printf "Length and Top 27 -> (%d, %d)\n" len top;
  Printf.printf "\n";
  
  test "Length and Top 27 Bien" (Practicas.Collatz_plus.length_and_top 27 = (27, 82));
  Printf.printf "\nTodos los tests de ejemplos han pasado.\n";

