#!/bin/bash
SUMA=0

for NUM in $( seq 1 100); do
  #statements
  let SUMA=SUMA+NUM
done

echo "La suma de los numeros de 1 al 100 es $SUMA"
