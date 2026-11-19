#!/bin/bash

read -p "Altura: " n
for ((i=1;i<=n;i++)); do for ((e=0;e<n-i;e++)); do printf " "; done; for ((j=0;j<2*i-1;j++)); do printf "*"; done; echo; done
