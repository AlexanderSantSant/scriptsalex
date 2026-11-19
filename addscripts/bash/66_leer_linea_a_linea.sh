#!/bin/bash

read -p "Fichero: " f
n=0
while IFS= read -r linea || [ -n "$linea" ]; do n=$((n+1)); echo "$n: $linea"; done < "$f"
