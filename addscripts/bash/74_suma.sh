#!/bin/bash

suma=0
while true; do read -p "Número (0 para salir): " n; if [ "$n" -eq 0 ]; then break; fi; if [ "$n" -lt 0 ]; then continue; fi; suma=$((suma+n)); done
echo "Suma: $suma"
