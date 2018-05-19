#!/bin/bash
#doble del numero con until
read -p "Ingrese un numero (0 para salir) : " NUMERO

until [[ $NUMERO -eq 0 ]]; do
  #statements
  echo "El doble de $NUMERO es :" $(($NUMERO*2))
  read -p "Ingrese un numero (0 para salir): " NUMERO
done
