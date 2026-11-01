#!/bin/bash
# Prueba de estres y captura de CPU y memoria con sysstat
CARPETA="$HOME"
DATOS="$CARPETA/prueba_sysstat.sa"
HORAS="$CARPETA/horarios.txt"
JSON="$CARPETA/alexsp31-10.json"

# Tomar muestras cada 10 segundos durante 7 minutos
sar -u -r -o "$DATOS" 10 42 >/dev/null &
PID=$!
echo "INICIO=$(date '+%Y-%m-%d %H:%M:%S')" > "$HORAS"
sleep 60

echo "ESTRES_INICIO=$(date '+%Y-%m-%d %H:%M:%S')" >> "$HORAS"
stress-ng --cpu 2 --vm 1 --vm-bytes 25% --timeout 300s
echo "ESTRES_FIN=$(date '+%Y-%m-%d %H:%M:%S')" >> "$HORAS"

# Esperar a que termine la recogida de estadisticas
wait "$PID"

# Exportar las estadisticas en formato JSON
sadf -j "$DATOS" -- -u -r > "$JSON"
if jq empty "$JSON"; then
    echo "JSON valido: $JSON"
fi
cat "$HORAS"
