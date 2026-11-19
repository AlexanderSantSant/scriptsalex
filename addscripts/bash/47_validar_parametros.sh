#!/bin/bash

if [ "$#" -ne 2 ]; then echo "Uso: $0 dato1 dato2"; exit 1; fi
echo "Primero: $1"
echo "Segundo: $2"
