#!/bin/bash

if [ -r "$1" ]; then echo "Puede leerse"; else echo "No puede leerse"; fi
if [ -w "$1" ]; then echo "Puede escribirse"; else echo "No puede escribirse"; fi
if [ -x "$1" ]; then echo "Puede ejecutarse"; else echo "No puede ejecutarse"; fi
