(* Función auxiliar para mostrar el resultado de un test *)
let test name cond =
  if cond then Printf.printf "✅ [OK] %s\n" name
  else failwith (Printf.sprintf "❌ %s failed" name)

(* Probar funciones implementadas en los otros archivos .ml *)
let () =
  (* Importar las funciones de la librería "practicas" (los módulos se refieren directamente) *)

  (* tests para fun_examples *)
  test "apply_twice (inc) 3 = 5" (Practicas.Fun_examples.apply_twice (fun x -> x + 1) 3 = 5);
  test "compose (x*2) (x+1) 3 = 8" (Practicas.Fun_examples.compose (fun x -> x * 2) (fun x -> x + 1) 3 = 8);
  test "shoutify hi = HI!!!" (Practicas.Fun_examples.shoutify "hi" = "HI!!!");
  Printf.printf "\n";

  (* tests para function_examples *)
  test "incr 1 = 2" (Practicas.Function_examples.incr 1 = 2);
  test "describe_option Some 3" (Practicas.Function_examples.describe_option (Some 3) = "valor: 3");
  Printf.printf "\n";

  (* tests para pattern_examples *)
  test "is_zero 0 = true" (Practicas.Pattern_examples.is_zero 0 = true);
  test "describe_temp (-19) = freezing" (Practicas.Pattern_examples.describe_temp (-19) = "freezing");
  Printf.printf "\n";

  (* tests para memory_examples *)
  (* No pasa si se limita la memoria -> Overflow!*)
  Printf.printf "sum_to_in 999999 -> %d\n" (Practicas.Memory_examples.sum_to_in 999999);
  (* La version eficient si pasa!*)
  Printf.printf "sum_to 999999 -> %d\n" (Practicas.Memory_examples.sum_to 999999);

  Printf.printf "\nTodos los tests de ejemplos han pasado.\n";

