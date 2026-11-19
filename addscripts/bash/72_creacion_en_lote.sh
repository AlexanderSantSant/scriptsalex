#!/bin/bash

for n in {1..10}; do f=$(printf "fich%02d.txt" "$n"); touch "$f"; done
echo "Creados: $(find . -maxdepth 1 -name "fich[0-9][0-9].txt" -type f | wc -l)"
