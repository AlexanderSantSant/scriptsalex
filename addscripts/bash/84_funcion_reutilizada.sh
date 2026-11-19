#!/bin/bash

comprobar_fichero() { if [ -f "$1" ]; then echo "$1: fichero"; elif [ -d "$1" ]; then echo "$1: directorio"; else echo "$1: no existe"; fi; }
comprobar_fichero /etc/passwd
comprobar_fichero /tmp
comprobar_fichero /no_existe_ejemplo
