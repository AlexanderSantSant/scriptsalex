#!/bin/bash

head -10 /etc/passwd | tail -6
echo "Otra forma:"
sed -n '5,10p' /etc/passwd
