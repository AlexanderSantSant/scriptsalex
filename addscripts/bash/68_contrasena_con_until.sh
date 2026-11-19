#!/bin/bash

clave=""; intentos=0
until [ "$clave" = "secreto" ]; do read -s -p "Contraseña: " clave; echo; intentos=$((intentos+1)); done
echo "Correcta en $intentos intentos"
