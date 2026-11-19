#!/bin/bash

op=1
while [ "$op" != 0 ]; do echo "1 Fecha | 2 Usuarios | 3 Directorio | 0 Salir"; read -r op; case "$op" in 1) date;; 2) who;; 3) pwd;; 0) echo Adiós;; *) echo "Opción incorrecta";; esac; done
