#!/bin/bash

#crear parametros para funciones $1 $2 ....
#sh existe.sh [fichero para verificar su existencia]
#sh existe.sh numero.sh --- si existe el fichero
#sh existe.sh numerok.sh --- no existe el fichero

if [[ -a $1 ]]; then
  #statements
  echo  "el fichero indicado como $1 si existe"
else
  echo "el fichero $1 indicado no existe"
fi
