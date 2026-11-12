#!/bin/bash

# sort ordena numéricamente por el campo 3 y tail toma la última línea.
sort -t: -k3,3n /etc/passwd | tail -n 1
