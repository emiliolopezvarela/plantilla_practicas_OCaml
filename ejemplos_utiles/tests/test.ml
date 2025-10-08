(* Función auxiliar para mostrar el resultado de un test *)
let test name cond =
  if cond then Printf.printf "✅ %s\n" name
  else failwith (Printf.sprintf "❌ %s failed" name)

(* Probar funciones implementadas en los otros archivos .ml *)
let () =
  (* Importar las funciones de la librería "practicas" (los módulos se refieren directamente) *)

  (* tests para fun_examples *)
  test "apply_twice (inc) 3 = 5" (Practicas.Fun_examples.apply_twice (fun x -> x + 1) 3 = 5);
  test "compose (x*2) (x+1) 3 = 8" (Practicas.Fun_examples.compose (fun x -> x * 2) (fun x -> x + 1) 3 = 8);
  test "shoutify hi = HI!!!" (Practicas.Fun_examples.shoutify "hi" = "HI!!!");

  (* tests para function_examples *)
  test "incr 1 = 2" (Practicas.Function_examples.incr 1 = 2);
  test "safe_div 4 2 = Some 2" (Practicas.Function_examples.safe_div 4 2 = Some 2);
  test "safe_div x 0 = None" (Practicas.Function_examples.safe_div 5 0 = None);
  test "describe_option Some 3" (Practicas.Function_examples.describe_option (Some 3) = "valor: 3");

  (* tests para pattern_examples *)
  test "is_zero 0 = true" (Practicas.Pattern_examples.is_zero 0 = true);
  test "sign 0 with msg" (Practicas.Pattern_examples.sign 0 "hola" = "cero hola");
  test "classify_pair (2,2) = equal" (Practicas.Pattern_examples.classify_pair (2,2) = "equal");
  test "classify_pair_if (0,1) = first zero, second 1" (Practicas.Pattern_examples.classify_pair_if (0,1) = "first zero, second 1");
  test "analyze_pair (3,2) = first greater" (Practicas.Pattern_examples.analyze_pair (3,2) = "first greater");
  test "describe_point (0,0) = origen" (Practicas.Pattern_examples.describe_point (0,0) = "origen");
  test "describe_point (0,0) = origen" (Practicas.Pattern_examples.describe_temp (-19) = "freezing");

  (* tests para memory_examples *)
  test "fact 5 = 120" (Practicas.Memory_examples.fact 5 = 120);
  test "fact_tail 5 = 120" (Practicas.Memory_examples.fact_tail 5 = 120);

  Printf.printf "\nTodos los tests de ejemplos han pasado.\n";

