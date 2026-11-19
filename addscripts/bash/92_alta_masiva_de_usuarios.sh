#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Ejecuta con sudo"
    exit 1
fi
if [ ! -f "$1" ]; then
    echo "Indica el fichero de usuarios"
    exit 1
fi
creados=0
while IFS=: read -r usuario grupo; do
    if ! id "$usuario" >/dev/null 2>&1; then
        getent group "$grupo" >/dev/null || groupadd "$grupo"
        useradd -m -g "$grupo" "$usuario"
        creados=$((creados+1))
    fi
done < "$1"
echo "Creados: $creados"
