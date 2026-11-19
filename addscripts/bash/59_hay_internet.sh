#!/bin/bash

ping -c 1 -W 2 8.8.8.8 >/dev/null 2>&1
if [ "$?" -eq 0 ]; then echo "Hay conexión"; else echo "No responde el ping"; fi
