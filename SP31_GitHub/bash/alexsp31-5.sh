#!/bin/bash
# Buscar error o fail en los archivos de /var/log
INFORME="$HOME/informe_errores.txt"
echo "INFORME DE ERRORES" > "$INFORME"

while IFS= read -r -d '' archivo; do
    if grep -qiE 'error|fail' "$archivo" 2>/dev/null; then
        echo "----------------------------" >> "$INFORME"
        echo "Archivo: $archivo" >> "$INFORME"
        grep -iE 'error|fail' "$archivo" >> "$INFORME" 2>/dev/null
    fi
done < <(find /var/log -type f -print0 2>/dev/null)
echo "Informe creado en $INFORME"
