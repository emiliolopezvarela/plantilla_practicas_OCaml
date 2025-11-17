(* Pon TU CODIGO aqui. Todas las funciones desarrolladas *)
(* Implementaciones Practica *)



(* Lista para pruebas *)
let l_prueba = [1; 2; 2; 2; 3; 4; 5; 5; 6]


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
let () =
  Printf.printf "\nEjercicio 3\n";
  Printf.printf "Front -> %s\n"
    (string_of_int_list (front l_prueba));

  Printf.printf "Compress -> %s\n"
    (string_of_int_list (compress l_prueba));