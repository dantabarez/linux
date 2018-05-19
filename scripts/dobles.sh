#!/bin/bash
#uso de for como bucle infinito, creo parametros y termino con break

for (( ; ; )); do
  #statements
  read -p "ingrese un numereo (0 para salir): " NUMERO
  if [[ $NUMERO -eq 0 ]]; then
    #statements
    break
  else
    echo "........ el doble numero del numero es $[ $NUMERO * 2 ]"
  fi
done
echo "Hemos salido del bucle infinito y fin del programa, gracias :)"
