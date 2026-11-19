#!/bin/bash

read -p "Fichero: " f
tr -cd "aeiouAEIOU" < "$f" | wc -c
