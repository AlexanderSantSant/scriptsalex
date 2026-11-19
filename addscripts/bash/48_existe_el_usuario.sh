#!/bin/bash

read -p "Usuario: " u
if id "$u" >/dev/null 2>&1; then echo "Existe"; else echo "No existe"; fi
