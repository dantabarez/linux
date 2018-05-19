#!/bin/bash

function doble() {
  #statements
  echo "Voy a doblar el valor de el numero"
  let NUMERO=NUMERO*2
}

NUMERO=3
echo "Numero vale: $NUMERO"
doble #llamando a funcion
echo "Ahora el numero vale: $NUMERO"
