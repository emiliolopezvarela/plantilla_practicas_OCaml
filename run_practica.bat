@echo off
REM ==============================
REM Configuración
REM ==============================
set PRACTICA=practica_4
set TEST=test

REM ==============================
REM Activar entorno de OCaml (si se usa opam)
REM ==============================
where opam >nul 2>nul
if %errorlevel%==0 (
    for /f "delims=" %%i in ('opam env --shell=cmd') do call %%i
)

REM ==============================
REM Cambiar a la carpeta de la práctica
REM ==============================
cd "%PRACTICA%"

REM ==============================
REM Compilar con dune
REM ==============================
dune build

REM ==============================
REM Limitar memoria de ejecución (opcional)
REM ==============================
set OCAMLRUNPARAM=l=8k

REM ==============================
REM Ejecutar test
REM ==============================
dune exec "tests/%TEST%.exe"

REM ==============================
REM Volver a la carpeta del proyecto
REM ==============================
cd ".."