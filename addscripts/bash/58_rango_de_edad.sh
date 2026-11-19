#!/bin/bash

read -p "Edad: " edad
if [ "$edad" -ge 16 ] && [ "$edad" -le 67 ]; then echo "Edad laboral"; else echo "Fuera del rango"; fi
