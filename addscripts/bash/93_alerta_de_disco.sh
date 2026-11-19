#!/bin/bash

limite=${1:-80}
df -P | tail -n +2 | while read disco bloques usados libres porcentaje ruta; do
    uso=${porcentaje%%%}
    if [ "$uso" -gt "$limite" ]; then
        echo "Alerta: $ruta al $uso%" | tee -a alertas.log
    fi
done
