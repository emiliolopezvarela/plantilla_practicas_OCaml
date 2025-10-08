(* Ejemplos de funciones anónimas, currying y composición *)

let add x y = x + y

let add_curried = fun x -> fun y -> x + y

let apply_twice f x = f (f x)

let compose f g x = f (g x)

(* Un ejemplo práctico: incrementar dos veces usando apply_twice *)
let incr_twice = apply_twice (fun x -> x + 1)

(* Ejemplo que muestra auxiliar local y `fun` para construir transformaciones de strings *)
let shoutify s =
	let exclaim = fun t -> String.uppercase_ascii t ^ "!!!" in exclaim s