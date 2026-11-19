#!/bin/bash

{ echo "Máquina: $(hostname)"; echo 'Usuarios:'; awk -F: '$3>=1000 && $3<65534 {print $1}' /etc/passwd; echo 'Total:'; awk -F: '$3>=1000 && $3<65534 {n++} END {print n+0}' /etc/passwd; } | tee informe.txt
