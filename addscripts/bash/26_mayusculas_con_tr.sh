#!/bin/bash

read -p "Escribe una frase: " frase
echo "$frase" | tr "[:lower:]" "[:upper:]"
echo "$frase" | tr -d " "
