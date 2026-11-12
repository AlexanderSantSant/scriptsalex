#!/bin/bash

# awk muestra los campos 1 y 7 separados por una tabulación.
awk -F: '{print $1 "\t" $7}' /etc/passwd
