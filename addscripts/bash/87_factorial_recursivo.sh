#!/bin/bash

factorial() { if [ "$1" -le 1 ]; then echo 1; else anterior=$(factorial $(($1-1))); echo $(($1*anterior)); fi; }
read -p "Número: " n
echo "Factorial: $(factorial "$n")"
