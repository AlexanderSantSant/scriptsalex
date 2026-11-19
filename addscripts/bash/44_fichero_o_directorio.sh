#!/bin/bash

if [ -f "$1" ]; then echo "Es un fichero"; elif [ -d "$1" ]; then echo "Es un directorio"; else echo "No existe"; fi
