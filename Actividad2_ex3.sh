#!/bin/bash

read -p "Ingresa un número entero: " numero

if [ "$numero" -eq 0 ]; then
    echo "El número es 0"
else 
    echo "El número no es 0"
fi