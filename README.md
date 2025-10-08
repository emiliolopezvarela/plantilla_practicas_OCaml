# 🧩 Plantilla para organizar y probar prácticas en OCaml

Os presento aquí una **plantilla base** para organizar las prácticas de la asignatura y facilitar las pruebas de vuestro código.  
Existen muchas formas de estructurar vuestro proyectos, esta solo es una de ellas. Intentar siempre **mantener cierta organización** en vuestros proyectos/prácticas para poder **probar fácilmente vuestras funciones** y **facilitar cualquier revisión** del código/trabajo en el futuro.

> 💡 En un proyecto más grande, normalmente existiría un archivo `main.ml` que importaría las librerías (`src/`) y las usaría, en lugar de centralizar todo en `tests/`.

> ⚠️ **Importante:** usar esta plantilla **no sustituye** las pruebas individuales que se pidan en cada ejercicio. Si se os pide compilar un archivo concreto de una forma o ejecutar un programa con argumentos por consola, **debeis probarlo igualmente.**

---

## 🗂️ Estructura general

La carpeta de `practicas` sigue este esquema general. Cada práctica (practica_4, practica_5, etc) sigue el esquema de **practica_X**. Además, el repositorio incluye un script `run_practica.sh` para **compilar y ejecutar rápidamente** la práctica seleccionada.

```
practicas               # Carpeta Principal
 ├── run_practica.sh        # Script para compilar y ejectuar (Ubuntu)
 ├── practica_X/
      ├── instrucciones/        # Enunciados, PDFs
      ├── src/                  # Código fuente (.ml, .mli) y (dune)
      ├── tests/                # Pruebas, asserts y printf (test.ml y dune)
      └── dune-project          # Configuración del proyecto (Muy básica)
```

---

## ▶️ Uso rápido del script

Podéis **editar las variables iniciales** del script para elegir qué práctica compilar y qué test ejecutar sin tener que cambiar comandos cada vez. Simplemente abrid el archivo con un editor de texto (vscode) y modificad el valor de:

```bash
PRACTICA="practica_4"    # Nombre de la carpeta (Eg -> practica_4)
```

Para usar el script, desde la raíz del repositorio:

```bash
chmod +x run_practica.sh   # solo la primera vez (agregar permiso de ejecucion)
./run_practica.sh
```

Este script:
- Activa el entorno de OCaml (si usas `opam`),
- Compila el proyecto con `dune build`,
- Y ejecuta los tests correspondientes (por defecto `tests/test.ml`).

---

## 📘 Qué incluir en cada carpeta

### `src/`
- Incluye aqui los archivos `.ml` e implementa las **funciones** pedidas
- Incluir archivos `.mli` para definir las interfaces públicas.
- Evita efectos como `print_endline` o `Printf.printf`: las pruebas deben estar en `tests/`.

### `tests/`
- Archivo `test.ml` que importa tus módulos de `src/` (Eg -> **Practicas.Collatz**).
- Añade `assert`, `test` o `printf` para verificar resultados sin modificar los archivos de entrega.

Ejemplo:
```ocaml
let () =
  Printf.printf "Check_to 1000000 -> %b\n" (Practicas.Collatz.check_to 1000000);
```

---

## 🛠️ Archivos Dune básicos

Los archivos `dune` son los que indican a Dune cómo compilar tu código.
Cada carpeta (`src/` y `tests/`) necesita su propio archivo dune porque cumplen papeles distintos:

- `src/dune` define la librería, es decir, el código que implementa las funciones y módulos que luego se van a probar o reutilizar en otros archivos `.ml`

- `tests/dune` define los ejecutables de prueba, que importan la librería y ejecutan los tests.

Sin estos archivos, Dune no sabría **qué compilar, qué depende de qué, ni qué ejecutables crear**.

**`src/dune`:**
```lisp
(library
 (name practicas)
 (modules :standard))
```

**`tests/dune`:**
```lisp
(executable
 (name test)
 (modules test)
 (libraries practicas))
```

Si defines un `.mli` sin su `.ml` correspondiente, Dune fallará al compilar.  
Para evitarlo durante el desarrollo, indícalo en `src/dune` en la liña `modules_without_implementation`:

```lisp
(library
 (name practicas)
 (modules :standard)
 (modules_without_implementation MiModuloPendiente))
```

---

## 💡 Errores comunes en VSCode

Si ves errores como `Unbound value` o `Unbound module`, es porque dune aún no ha hecho al compilación necesaria (dune build)

Simplemente ejecuta:

```bash
./run_practica.sh
```

Esto genera los archivos de compilación necesarios para que el servidor de lenguaje (`ocaml-lsp`) pueda resolver las referencias entre módulos.

---

## ✅ Buenas prácticas

- Lógica y definiciones en `src/*.ml` y `src/*.mli`.  
- Pruebas y salidas por pantalla en `tests/`.  
- Mantened los nombres de módulos coherentes entre `src/dune` y `tests/dune`.  
- Usad `modules_without_implementation` mientras un módulo esté en desarrollo.
