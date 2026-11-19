#!/bin/bash

read -p "Año: " a
if (( a%400==0 || (a%4==0 && a%100!=0) )); then echo Bisiesto; else echo "No bisiesto"; fi
