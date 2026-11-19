#!/bin/bash

read -p "Primera cadena: " a
read -p "Segunda cadena: " b
if [ -z "$a" ]; then echo "La primera está vacía"; fi
if [ "$a" = "$b" ]; then echo "Iguales"; else echo "Distintas"; fi
