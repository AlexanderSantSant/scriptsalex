#!/bin/bash

buscar() {
    read -p "Fichero a buscar: " nombre
    fichero=$(find "$HOME" -type f -name "$nombre" -print -quit 2>/dev/null)
    if [ -f "$fichero" ]; then
        echo "Encontrado: $fichero"
        tr -cd 'aeiouAEIOU' < "$fichero" | wc -c
    else
        echo "No encontrado"
    fi
}
crear() {
    read -p "Nombre [nuevo.txt]: " nombre
    nombre=${nombre:-nuevo.txt}
    read -p "Tamaño en bytes [100]: " tam
    tam=${tam:-100}
    if [[ "$tam" =~ ^[0-9]+$ ]]; then
        head -c "$tam" /dev/zero > "$nombre"
        echo "Creado"
    else
        echo "Tamaño incorrecto"
    fi
}
compra() {
    read -p "Productos separados por espacios: " productos
    printf '%s
' $productos | sort -u > compra.txt
    cat compra.txt
    echo "Total: $(wc -l < compra.txt)"
}
op=1
while [ "$op" != 0 ]; do
    echo "1 Buscar  2 Crear  3 Compra  0 Salir"
    read op
    case "$op" in
        1) buscar ;;
        2) crear ;;
        3) compra ;;
        0) echo "Fin" ;;
        *) echo "Opción incorrecta" ;;
    esac
done
