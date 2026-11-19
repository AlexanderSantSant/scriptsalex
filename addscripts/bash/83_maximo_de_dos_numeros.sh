#!/bin/bash

maximo() { if [ "$1" -gt "$2" ]; then echo "$1"; else echo "$2"; fi; }
es_par() { if [ $(($1%2)) -eq 0 ]; then return 0; else return 1; fi; }
echo "Mayor: $(maximo 4 7)"
es_par 8
if [ "$?" -eq 0 ]; then echo "Es par"; else echo "Es impar"; fi
