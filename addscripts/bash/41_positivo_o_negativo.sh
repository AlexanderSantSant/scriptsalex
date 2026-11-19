#!/bin/bash

read -p "Número: " n
if [ "$n" -gt 0 ]; then
    echo "Positivo"
elif [ "$n" -lt 0 ]; then
    echo "Negativo"
else
    echo "Cero"
fi
