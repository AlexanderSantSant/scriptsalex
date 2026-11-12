#!/bin/bash

# Se muestra la primera dirección que devuelve hostname -I. Puede variar si hay varias interfaces.
hostname -I | awk '{print $1}'
