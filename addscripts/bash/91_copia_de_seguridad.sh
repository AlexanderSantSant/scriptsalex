#!/bin/bash

if [ ! -d "$1" ]; then
    echo "Indica una carpeta existente"
    exit 1
fi
mkdir -p ~/backups
nombre=$(basename "$1")
tar -czf ~/backups/${nombre}_$(date +%F).tar.gz "$1"
find ~/backups -name "*.tar.gz" -mtime +7 -delete
echo "Copia realizada"
