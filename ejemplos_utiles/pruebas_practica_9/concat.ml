(* Pon TU CODIGO aqui. Todas las funciones desarrolladas *)
(* Implementaciones Practica *)



(* Listas para pruebas *)
let l_prueba = [1; 2; 3]
let l_prueba_2 = [1; 2; 2; 2; 3; 4; 5; 5; 6]
let l_prueba_3 = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]]
let l_prueba_grande = List.init 50_000 (fun i -> [i])
(* let l_prueba_grande_2 = List.init 25 (fun i -> i) *)


(* Funcion Crono *)
let crono f x =
 let t = Sys.time () in
 let _ = f x in
 Sys.time ()-. t


(* Funciones accesorias que convierten
  lista -> string
  Lista Lista -> string
  *)
let string_of_int_list lst =
  "[" ^ (String.concat "; " (List.map string_of_int lst)) ^ "]"

let string_of_int_list_list lst =
  "[" ^ (String.concat "; " (List.map string_of_int_list lst)) ^ "]"



(* Main *)
(* Aqui se hace test de todas las funciones que implementasteis *)
let () =
  Printf.printf "\nEjercicio 1\n";
  Printf.printf "Concat' -> %s\n"
    (string_of_int_list (concat' l_prueba_3));

  Printf.printf "Concat'' -> %s\n"
    (string_of_int_list (concat'' l_prueba_3));

  Printf.printf "Concat' largo-> %f\n"
    (crono (fun () -> concat' l_prueba_grande) ());

  Printf.printf "Concat'' largo-> %f\n"
    (crono (fun () -> concat'' l_prueba_grande) ());


  Printf.printf "\nEjercicio 2\n";
  Printf.printf "Sublists'' -> %s\n"
    (string_of_int_list_list (sublists l_prueba));

  (* Printf.printf "Sublists'' largo-> %f\n"
    (crono (fun () -> Practicas.Concat.sublists l_prueba_grande_2) ()); *)