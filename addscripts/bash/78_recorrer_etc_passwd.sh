#!/bin/bash

while IFS=: read -r usuario clave uid gid info casa shell; do printf "%-20s %s\n" "$usuario" "$shell"; done < /etc/passwd
