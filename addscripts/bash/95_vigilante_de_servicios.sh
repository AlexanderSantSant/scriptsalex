#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Ejecuta con sudo"
    exit 1
fi
if [ -z "$1" ]; then
    echo "Indica un servicio"
    exit 1
fi
if systemctl is-active --quiet "$1"; then
    mensaje="$1 está activo"
else
    systemctl restart "$1"
    mensaje="$1: intento de reinicio"
fi
echo "$(date) $mensaje" | tee -a /var/log/vigilante.log
