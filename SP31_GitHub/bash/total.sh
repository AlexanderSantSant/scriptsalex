#!/bin/bash
# Copia total mensual de /home
MES=$(LC_TIME=es_ES.UTF-8 date +%B-%Y)
DEST="/bacalex/CopTot-$MES"
mkdir -p "$DEST"
cp -a /home/. "$DEST/"
echo "Copia total realizada en $DEST"
