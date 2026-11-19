#!/bin/bash

echo "Ficheros:"; find . -maxdepth 1 -type f ! -name ".*" | wc -l
echo "Directorios:"; find . -mindepth 1 -maxdepth 1 -type d ! -name ".*" | wc -l
