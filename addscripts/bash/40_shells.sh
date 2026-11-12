#!/bin/bash

# cut extrae el campo 7, sort agrupa las shells y uniq -c las cuenta.
cut -d: -f7 /etc/passwd | sort | uniq -c
