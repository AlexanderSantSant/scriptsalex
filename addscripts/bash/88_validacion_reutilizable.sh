#!/bin/bash

validar_numero() { [[ "$1" =~ ^-?[0-9]+$ ]]; }
read -p "Número 1: " a
read -p "Número 2: " b
if ! validar_numero "$a" || ! validar_numero "$b"; then echo "Solo enteros"; exit 1; fi
echo "Suma: $((a+b))"
