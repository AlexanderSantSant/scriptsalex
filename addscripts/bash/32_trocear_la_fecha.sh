#!/bin/bash

fecha=$(date +%d/%m/%Y)
echo "$fecha" | cut -d/ -f1
echo "$fecha" | cut -d/ -f2
echo "$fecha" | cut -d/ -f3
