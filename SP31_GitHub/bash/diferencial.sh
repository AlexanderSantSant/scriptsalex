#!/bin/bash
# Copia semanal de archivos modificados en los ultimos 7 dias
SEMANA=$(date +%V)
DEST="/bacalex/CopDifSem-$SEMANA"
mkdir -p "$DEST"
find /home -type f -mtime -7 -exec cp --parents -p {} "$DEST"/ \;
echo "Copia semanal realizada en $DEST"
