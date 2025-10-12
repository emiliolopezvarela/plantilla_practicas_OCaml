# ==============================
# Configuración
# ==============================
$Practica = "practica_X"
$Test = "test"

# ==============================
# Activar entorno de OCaml (si se usa opam)
# ==============================
if (Get-Command opam -ErrorAction SilentlyContinue) {
    (& opam env) -split '\r?\n' | ForEach-Object { Invoke-Expression $_ }
}

# ==============================
# Cambiar a la carpeta de la práctica
# ==============================
Set-Location $Practica

# ==============================
# Compilar con dune
# ==============================
dune build

# ==============================
# Limitar memoria de ejecución (opcional)
# ==============================
$env:OCAMLRUNPARAM = "l=8k"

# ==============================
# Ejecutar test
# ==============================
dune exec "tests/$Test.exe"

# ==============================
# Volver a la carpeta del proyecto
# ==============================
Set-Location ..

