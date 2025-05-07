#!/bin/bash

# Verificar que se haya pasado solo un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta_al_archivo>"
    exit 1
fi

ARCHIVO="$1"

# Verificar si el archivo existe
if [ ! -e "$ARCHIVO" ]; then
    echo "El archivo no existe."
    exit 1
fi

# Mostrar tipo de archivo
echo "Tipo de archivo:"
file "$ARCHIVO"

# Verificar permisos
echo "Permisos:"
[ -r "$ARCHIVO" ] && echo "- Legible" || echo "- No legible"
[ -w "$ARCHIVO" ] && echo "- Escribible" || echo "- No escribible"