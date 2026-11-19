#!/bin/bash

printf 'Windows 10\nUso Windows\nWindows y Linux\n' > sistemas.txt
sed 's/Windows/Linux/g' sistemas.txt
