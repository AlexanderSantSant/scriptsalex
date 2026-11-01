#!/bin/bash
# Eliminar solo las carpetas de copias diferenciales
find /bacalex -mindepth 1 -maxdepth 1 -type d -name 'CopDifSem-*' -print -exec rm -rf -- {} +
echo "Limpieza terminada"
