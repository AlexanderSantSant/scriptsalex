#!/bin/bash

# ls -lA incluye ocultos y awk suma el campo 5 de los ficheros regulares.
LC_ALL=C ls -lAb | awk '/^-/ {total += $5} END {printf "Total: %.0f bytes\n", total}'
