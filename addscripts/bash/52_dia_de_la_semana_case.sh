#!/bin/bash

read -p "Día (1-7): " n
case "$n" in 1) echo Lunes;; 2) echo Martes;; 3) echo Miércoles;; 4) echo Jueves;; 5) echo Viernes;; 6) echo Sábado;; 7) echo Domingo;; *) echo "No válido";; esac
