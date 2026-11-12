#!/bin/bash

# wc usa -l para líneas, -w para palabras y -m para caracteres.
read -r -p "Nombre del fichero: " fichero
[ -f "$fichero" ] && [ -r "$fichero" ] || { echo "No se puede leer el fichero."; exit 1; }
echo "Líneas: $(wc -l < "$fichero")"
echo "Palabras: $(wc -w < "$fichero")"
echo "Caracteres: $(wc -m < "$fichero")"
