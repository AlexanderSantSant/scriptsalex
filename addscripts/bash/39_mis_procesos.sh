#!/bin/bash

# ps selecciona el usuario actual y ordena los resultados por PID.
ps -u "$(id -un)" -o pid,comm --sort=pid
