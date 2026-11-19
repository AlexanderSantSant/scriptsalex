#!/bin/bash

for f in *.txt; do [ -f "$f" ] || continue; mv -- "$f" "bak_$f"; done
