#!/bin/bash

# du mide las entradas del primer nivel de HOME, incluidas las ocultas. sort -h entiende K, M y G.
du -ah --max-depth=1 -- "$HOME" | head -n -1 | sort -hr | head -n 5
