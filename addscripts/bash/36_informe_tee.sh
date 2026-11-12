#!/bin/bash

# En Ubuntu se usa el intervalo habitual de UID 1000–59999 para estimar las cuentas humanas.
usuarios=$(awk -F: '$3 >= 1000 && $3 <= 59999 {print $1}' /etc/passwd)
{
    echo "Máquina: $(hostname)"
    echo "Usuarios humanos:"
    printf '%s\n' "$usuarios"
    echo "Total: $(printf '%s\n' "$usuarios" | awk 'NF {total++} END {print total+0}')"
} | tee informe.txt
