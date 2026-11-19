#!/bin/bash

read -p "Número: " n
i=1; resultado=1
while [ "$i" -le "$n" ]; do resultado=$((resultado*i)); i=$((i+1)); done
echo "$resultado"
