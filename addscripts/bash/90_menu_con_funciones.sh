#!/bin/bash

fecha() { date; }
disco() { df -h; }
usuarios() { who; }

op=1
while [ "$op" != 0 ]; do
    echo "1 Fecha  2 Disco  3 Usuarios  0 Salir"
    read op
    case "$op" in
        1) fecha ;;
        2) disco ;;
        3) usuarios ;;
        0) echo "Fin" ;;
        *) echo "Opción incorrecta" ;;
    esac
done
