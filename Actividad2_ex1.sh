#!/bin/bash

read -p "Ingresa un número entero: " numero

if [ "$numero" -gt 0 ]; then
    echo "El número es positivo"
elif [ "$numero" -lt 0 ]; then
    echo "El número es negativo"
else 
    echo "El número es cero"
fi