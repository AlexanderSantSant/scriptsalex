#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Ejecuta con sudo"
    exit 1
fi
read -p "Nombre de carpeta (solo letras y números): " nombre
if ! [[ "$nombre" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo "Nombre incorrecto"
    exit 1
fi
if ! command -v smbd >/dev/null; then
    apt update
    apt install -y samba || exit 1
fi
mkdir -p "/srv/$nombre"
chmod 777 "/srv/$nombre"
cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
echo "[$nombre]" >> /etc/samba/smb.conf
echo "path = /srv/$nombre" >> /etc/samba/smb.conf
echo "read only = no" >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
systemctl restart smbd
echo "Carpeta compartida"
