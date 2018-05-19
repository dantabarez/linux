#!/bin/bash -x
# necesita chmod +x

#comparacion de numero para ver si es mayor o menor

read -p "Introduce numero entero: " NUMERO


#uso dos ifs comparativos

if [[ $NUMERO -gt 5 ]]; then
  #statements
  echo "El numero mayor que 5"
fi

if [[ $NUMERO -lt 5 ]]; then
  #statements
  echo "el numero es menor que 5"
fi
