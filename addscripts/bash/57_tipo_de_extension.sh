#!/bin/bash

case "$1" in *.txt) echo Texto;; *.sh) echo Script;; *.jpg|*.png) echo Imagen;; *) echo Desconocido;; esac
