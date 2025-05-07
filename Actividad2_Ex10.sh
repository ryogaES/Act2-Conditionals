
#!/bin/bash

# Verificar que se hayan pasado exactamente 2 parámetros
if [ $# -ne 2 ]; then
    echo "Uso: $0 <nombre_del_archivo> <protocolo>"
    exit 1
fi

ARCHIVO="$1"
PROTOCOLO="$2"

# Verificar si el archivo existe y tiene extensión .txt o .csv
if [ ! -e "$ARCHIVO" ]; then
    echo "Error: El archivo '$ARCHIVO' no existe."
    exit 1
fi

if [[ ! "$ARCHIVO" =~ \.txt$ && ! "$ARCHIVO" =~ \.csv$ ]]; then
    echo "Error: El archivo debe ser de tipo .txt o .csv."
    exit 1
fi

# Contar las líneas que contienen el protocolo sin distinguir mayúsculas y minúsculas
MATCHES=$(grep -i "$PROTOCOLO" "$ARCHIVO" | wc -l)

# Verificar si se encontraron coincidencias
if [ "$MATCHES" -gt 0 ]; then
    echo "Se encontraron $MATCHES líneas que contienen el protocolo '$PROTOCOLO'."
else
    echo "No se encontraron líneas con el protocolo '$PROTOCOLO'."
fi
