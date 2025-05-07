#!/bin/bash

# Verificar que se pasen exactamente 3 parametros
if [ $# -ne 3 ]; then
    echo "Uso: $0 <operacion> <numero1> <numero2>"
    echo "Operaciones válidas: sumar, restar, multiplicar, dividir"
    exit 1
fi

OP="$1"
NUM1="$2"
NUM2="$3"

# Verificar que NUM1 y NUM2 sean enteros
if ! [[ "$NUM1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: El primer número no es entero válido."
    exit 1
fi

if ! [[ "$NUM2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: El segundo número no es entero válido."
    exit 1
fi

# Validar operación y realizar cálculo
if [ "$OP" = "sumar" ]; then
    echo "Resultado: $((NUM1 + NUM2))"

elif [ "$OP" = "restar" ]; then
    echo "Resultado: $((NUM1 - NUM2))"

elif [ "$OP" = "multiplicar" ]; then
    echo "Resultado: $((NUM1 * NUM2))"

elif [ "$OP" = "dividir" ]; then
    if [ "$NUM2" -eq 0 ]; then
        echo "Error: No se puede dividir entre cero."
        exit 1
    fi
    echo "Resultado: $((NUM1 / NUM2))"

else
    echo "Error: Operación no válida. Usa sumar, restar, multiplicar o dividir."
    exit 1
fi
