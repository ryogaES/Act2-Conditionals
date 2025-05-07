#!/bin/bash

# Verificar que se pasaron exactamente 2 parámetros
if [ $# -ne 2 ]; then
    echo "Uso: $0 <ruta_del_directorio> <nombre_del_archivo.tar.gz>"
    exit 1
fi

DIRECTORIO="$1"
TARFILE="$2"

# Verificar si el directorio existe y si es un directorio
if [ ! -d "$DIRECTORIO" ]; then
    echo "Error: '$DIRECTORIO' no es un directorio válido o no existe."
    exit 1
fi

# Verificar si el archivo .tar.gz ya existe
if [ -e "$TARFILE" ]; then
    echo "El archivo '$TARFILE' ya existe."

    # Preguntar al usuario si desea sobrescribir el archivo
    read -p "¿Deseas sobrescribirlo? (s/n): " respuesta

    if [[ "$respuesta" != "s" && "$respuesta" != "S" ]]; then
        echo "No se sobrescribirá el archivo. El script se cierra."
        exit 1
    fi
fi

# Comprimir el directorio en un archivo .tar.gz
tar -czf "$TARFILE" -C "$(dirname "$DIRECTORIO")" "$(basename "$DIRECTORIO")"

echo "El directorio '$DIRECTORIO' ha sido comprimido en '$TARFILE'."

