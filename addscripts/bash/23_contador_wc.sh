#!/bin/bash

read -p "Nombre del fichero: " f
echo "Líneas:"; wc -l < "$f"
echo "Palabras:"; wc -w < "$f"
echo "Caracteres:"; wc -m < "$f"
