#!/bin/bash

archivo="informe_$(hostname)_$(date +%F).txt"
echo "Sistema operativo:" > "$archivo"
head -2 /etc/os-release >> "$archivo"
echo "Kernel:" >> "$archivo"
uname -r >> "$archivo"
echo "IP:" >> "$archivo"
hostname -I >> "$archivo"
uptime >> "$archivo"
df -h >> "$archivo"
free -h >> "$archivo"
ps aux --sort=-%cpu | head -6 >> "$archivo"
echo "Guardado: $archivo"
