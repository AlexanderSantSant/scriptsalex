#!/bin/bash

read -p "Número: " n
if [ $((n % 2)) -eq 0 ]; then
    echo "Par"
else
    echo "Impar"
fi
