#!/bin/bash

# sed usa g para cambiar todas las apariciones en cada línea.
printf '%s\n' 'Uso Windows.' 'Windows y Windows.' 'Aprendo con Windows.' > sistemas.txt
sed 's/Windows/Linux/g' sistemas.txt
