#!/bin/bash

read -p "Letra: " letra
if ! [[ "$letra" =~ ^[a-zA-Z]$ ]]; then echo "Introduce una sola letra"; exit 1; fi
case "$letra" in [aeiouAEIOU]) echo Vocal;; *) echo Consonante;; esac
