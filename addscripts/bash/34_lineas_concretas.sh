#!/bin/bash

# head toma las 10 primeras y tail conserva las 6 últimas. sed selecciona directamente el rango.
echo "Con head y tail"
head -n 10 /etc/passwd | tail -n +5
echo "Con sed"
sed -n '5,10p' /etc/passwd
