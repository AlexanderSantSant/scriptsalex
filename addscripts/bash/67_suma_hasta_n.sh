#!/bin/bash

read -p "N: " n
i=1; suma=0
while [ "$i" -le "$n" ]; do suma=$((suma+i)); i=$((i+1)); done
echo "$suma"
