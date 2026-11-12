#!/bin/bash

# grep filtra las líneas cuya shell termina en /bash y -c las cuenta.
grep -E ':(.*/)?bash$' /etc/passwd | cut -d: -f1
echo "Total: $(grep -Ec ':(.*/)?bash$' /etc/passwd)"
