#!/bin/bash
#comprobando mayoria de edad con uso de paso a parametros
function mayor_edad() {
  #statements
  if [[ $1 -ge 10 ]]; then
    #statements
    echo  "Si es mayor de edad"
  else
    echo  "NO, es menor de edad"
  fi
}

read -p "dime la edad: " EDAD
echo "comprobando... "
mayor_edad $EDAD
