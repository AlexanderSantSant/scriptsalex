#!/bin/bash

for f in "$@"; do if [ -f "$f" ]; then echo "$f: fichero existente"; else echo "$f: no es fichero existente"; fi; done
