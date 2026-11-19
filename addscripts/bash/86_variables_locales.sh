#!/bin/bash

nombre="Global"
mostrar() { local nombre="Local"; echo "Dentro: $nombre"; }
echo "Antes: $nombre"
mostrar
echo "Después: $nombre"
