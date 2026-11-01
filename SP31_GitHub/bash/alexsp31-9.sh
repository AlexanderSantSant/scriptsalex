#!/bin/bash
# Sincronizar el directorio personal con una copia espejo
ORIGEN="/home/alex/"
DESTINO="/bacalex/espejo/"
mkdir -p "$DESTINO"
rsync -av --delete "$ORIGEN" "$DESTINO"
echo "Sincronizacion realizada: $(date '+%d/%m/%Y %H:%M:%S')"
