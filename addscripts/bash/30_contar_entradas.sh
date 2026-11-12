#!/bin/bash

# find revisa solo el nivel actual y emite un punto por cada resultado para contarlo.
echo "Ficheros: $(find . -maxdepth 1 -type f ! -name '.*' -printf '.' | wc -c)"
echo "Directorios: $(find . -mindepth 1 -maxdepth 1 -type d ! -name '.*' -printf '.' | wc -c)"
