#!/bin/bash
# Desinstalar programas indicados en programas.txt
CARPETA="$(cd "$(dirname "$0")" && pwd)"
FICHERO="$CARPETA/programas.txt"

if [ ! -f "$FICHERO" ]; then
    echo "No existe programas.txt"
    exit 1
fi

while IFS= read -r programa || [ -n "$programa" ]; do
    [ -z "$programa" ] && continue
    echo "Comprobando $programa"
    if dpkg -s "$programa" 2>/dev/null | grep -q 'Status: install ok installed'; then
        echo "Desinstalando $programa"
        sudo apt remove -y "$programa"
    else
        echo "$programa no esta instalado"
    fi
done < "$FICHERO"
echo "Proceso terminado"
