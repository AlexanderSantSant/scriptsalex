#!/bin/bash

# tr cambia las letras ASCII a mayúsculas y -d borra los espacios.
IFS= read -r -p "Escribe una frase: " frase
mayusculas=$(printf '%s' "$frase" | tr '[:lower:]' '[:upper:]')
printf '%s\n' "$mayusculas"
printf '%s\n' "$mayusculas" | tr -d ' '
