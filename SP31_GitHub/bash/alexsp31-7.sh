#!/bin/bash
# Registrar particiones que superen el 80 por ciento
LOG="$HOME/espacio_disco.log"
UMBRAL=80

df -P | tail -n +2 | while read -r sistema tam usado libre porcentaje montaje; do
    uso=${porcentaje%%%}
    if [ "$uso" -gt "$UMBRAL" ]; then
        echo "$(date '+%d/%m/%Y %H:%M') - $sistema - $uso%" >> "$LOG"
    fi
done
