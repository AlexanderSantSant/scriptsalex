#!/bin/bash

# Se quita la cabecera de ps, se ordena por la columna 4 y se muestran tres campos.
printf 'USUARIO\tPID\t%%MEM\n'
ps aux | tail -n +2 | sort -k4,4nr | head -n 5 | awk '{print $1 "\t" $2 "\t" $4}'
