#!/bin/bash

read -p "Primer número: " a
read -p "Segundo número: " b
if [ "$a" -gt "$b" ]; then echo "$a es mayor"; elif [ "$a" -lt "$b" ]; then echo "$b es mayor"; else echo "Son iguales"; fi
