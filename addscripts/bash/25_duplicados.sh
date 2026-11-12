#!/bin/bash

# sort -u ordena y elimina las líneas repetidas.
printf '%s\n' Marta Alex Sara Alex Marta > nombres.txt
sort -u nombres.txt
