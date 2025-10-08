#!/usr/bin/env bash

# Terminar el script inmediatamente si existe un error
set -e

# Puedes fijar aquí una práctica (nombre de carpeta) y un test (nombre archivo .ml) para compilar y ejecutar:
PRACTICA="practica_4"    # Nombre carpeta (Eg -> practica_4 | ejemplos_utiles)
TEST="test"              # Nombre archivo sin .ml

# Comprobar si tienes instalado el ambiente virtual y activarlo
if command -v opam >/dev/null 2>&1; then
  eval "$(opam env)"
fi

# === CAMBIAR A LA CARPETA DE LA PRACTICA ===
cd "$PRACTICA"

# === COMPILAR ===
dune build

# === Opciomal -> Limitar memoria que puede utilizar OCAML en la ejecucion ===
export OCAMLRUNPARAM="l=8k" # 8k -> Cambiar por el valor de memoria que se quiera

# === EJECUTAR TEST ===
dune exec "tests/${TEST}.exe"
