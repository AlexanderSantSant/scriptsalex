#!/bin/bash

# grep -F busca texto literal, -c cuenta líneas y -n muestra sus números.
read -r -p "Palabra: " palabra
read -r -p "Nombre del fichero: " fichero
[ -f "$fichero" ] && [ -r "$fichero" ] || { echo "No se puede leer el fichero."; exit 1; }
echo "Líneas encontradas: $(grep -Fc -- "$palabra" < "$fichero")"
grep -Fn -- "$palabra" < "$fichero" || [ "$?" -eq 1 ]
