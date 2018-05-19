#!/bin/bash
#doble del numero con while
read -p "Ingrese un numero (0 para salir) : " NUMERO

while [[ $NUMERO -ne 0 ]]; do
  #statements
  echo "El doble de $NUMERO es :" $(($NUMERO*2))
  read -p "Ingrese un numero (0 para salir): " NUMERO
done
