#!/bin/bash

if [ -z "$1" ]; then echo "Uso: $0 servicio"; exit 1; fi
if systemctl is-active --quiet "$1"; then echo "Activo"; else echo "Inactivo"; fi
