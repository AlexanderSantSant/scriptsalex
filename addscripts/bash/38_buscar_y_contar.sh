#!/bin/bash

read -p "Palabra: " palabra
read -p "Fichero: " f
echo "Líneas encontradas:"
grep -ic "$palabra" "$f"
grep -in "$palabra" "$f"
