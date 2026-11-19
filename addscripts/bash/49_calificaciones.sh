#!/bin/bash

read -p "Nota (0-10): " n
if ! [[ "$n" =~ ^([0-9]|10)$ ]]; then echo "Nota no válida"; exit 1; fi
if [ "$n" -lt 5 ]; then echo Insuficiente; elif [ "$n" -eq 5 ]; then echo Suficiente; elif [ "$n" -eq 6 ]; then echo Bien; elif [ "$n" -le 8 ]; then echo Notable; else echo Sobresaliente; fi
