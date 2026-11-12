#!/bin/bash

# sed convierte las vocales con tilde y diéresis. tr conserva las vocales y wc las cuenta.
read -r -p "Nombre del fichero: " fichero
[ -f "$fichero" ] && [ -r "$fichero" ] || { echo "No se puede leer el fichero."; exit 1; }
sed 'y/áéíóúüÁÉÍÓÚÜ/aeiouuAEIOUU/' < "$fichero" | tr -cd 'aeiouAEIOU' | wc -m
