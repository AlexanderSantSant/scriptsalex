#!/bin/bash

numero=$((RANDOM%100+1))
intento=0
while [ "$intento" -ne "$numero" ]; do read -p "Adivina (1-100): " intento; if [ "$intento" -lt "$numero" ]; then echo "Es mayor"; elif [ "$intento" -gt "$numero" ]; then echo "Es menor"; fi; done
echo "¡Acertaste!"
