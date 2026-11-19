#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then echo "Necesitas ser root"; exit 1; fi
echo "Eres root"
