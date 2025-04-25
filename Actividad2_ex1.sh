#!/bin/bash

read -p "Ingresa un número entero: " numero

if ["$numero" -gt 0]; then
	echo "El numero es positivo"
elif ["$numero" -lt 0]; then
	echo "El numero es negativo"
else 
	echo "El numero es cero"

fi