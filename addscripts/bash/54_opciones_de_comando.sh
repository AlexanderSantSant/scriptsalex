#!/bin/bash

case "$1" in -f) date;; -u) whoami;; -d) pwd;; -h) echo "Opciones: -f fecha, -u usuario, -d directorio, -h ayuda";; *) echo "Opción incorrecta";; esac
