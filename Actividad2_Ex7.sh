#!/bin/bash

# Verificar si se pasó un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <rutaArchivo>"
    exit 1
fi

ARCHIVO="$1"

# Verificar si el archivo existe
if [ ! -e "$ARCHIVO" ]; then
    echo "El archivo no existe."
    exit 1
fi

# Mostrar los permisos usando ls -l
ls -l "$ARCHIVO"
