#!/bin/bash

f=${1:-/var/log/auth.log}
if [ ! -r "$f" ]; then echo "No puedo leer $f (prueba sudo)"; exit 1; fi
echo "Usuarios con fallos:"
grep "Failed password" "$f" | awk '{for(i=1;i<=NF;i++) if($i=="for") {if($(i+1)=="invalid") print $(i+3); else print $(i+1)}}' | sort | uniq -c | sort -nr | head -5
echo "IPs con fallos:"
grep "Failed password" "$f" | awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' | sort | uniq -c | sort -nr | head -5
