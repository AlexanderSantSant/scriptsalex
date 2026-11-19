#!/bin/bash

log_msg() { echo "$(date +%F_%T) - $1" >> actividad.log; }
log_msg "Inicio"
echo "Trabajando..."
log_msg "Fin"
