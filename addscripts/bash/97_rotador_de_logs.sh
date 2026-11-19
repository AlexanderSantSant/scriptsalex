#!/bin/bash

ruta=${1:-.}
max=${2:-100}
mkdir -p "$ruta/antiguos"
for fichero in "$ruta"/*.log; do
    [ -f "$fichero" ] || continue
    tam=$(du -k "$fichero" | cut -f1)
    if [ "$tam" -gt "$max" ]; then
        gzip -c "$fichero" > "$ruta/antiguos/$(basename "$fichero")_$(date +%F_%H%M%S).gz"
        > "$fichero"
    fi
done
