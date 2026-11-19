#!/bin/bash

ruta=${1:-.}
if [ ! -d "$ruta" ]; then
    echo "La carpeta no existe"
    exit 1
fi
find "$ruta" -type f \( -name "*.tmp" -o -name "*~" \) > /tmp/lista_temporales_$$
echo "Cantidad: $(wc -l < /tmp/lista_temporales_$$)"
echo "Espacio en bytes:"
cat /tmp/lista_temporales_$$ | while read fichero; do stat -c %s "$fichero"; done | awk '{total+=$1} END {print total+0}'
read -p "¿Borrar? (s/n): " respuesta
if [ "$respuesta" = s ]; then
    while read fichero; do rm -- "$fichero"; done < /tmp/lista_temporales_$$
fi
rm /tmp/lista_temporales_$$
