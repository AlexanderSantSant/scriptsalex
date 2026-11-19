#!/bin/bash

read -p "Número 1: " a
read -p "Número 2: " b
read -p "Operación (+ - x /): " op
case "$op" in +) echo $((a+b));; -) echo $((a-b));; x) echo $((a*b));; /) if [ "$b" -eq 0 ]; then echo "No se puede dividir por cero"; else echo $((a/b)); fi;; *) echo "Operación desconocida";; esac
