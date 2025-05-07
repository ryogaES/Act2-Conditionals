#!/bin/bash

# Verificar si se pasó un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <rutaArchivoOdirectorio>"
    exit 1
fi

RUTA="$1"

# Verificar si es un directorio
if [ -d "$RUTA" ]; then
    echo "Es un directorio."
# Verificar si es un archivo regular
elif [ -f "$RUTA" ]; then
    EXTENSION="${RUTA##*.}"
    echo "Es un archivo. Extensión: $EXTENSION"
else
    echo "No es un archivo ni un directorio válido."
    exit 1
fi
