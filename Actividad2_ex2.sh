#!/bin/bash

read -p "Ingresa un número entero: " numero

if [ "$numero" -lt 0 ]; then
    echo "El número es negativo"
else 
    echo "El número no es negativo"
fi