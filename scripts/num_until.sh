#!/bin/bash
#uso del bucle until

NUMERO=1
until [[ $NUMERO -gt 20 ]]; do
  #statements
  echo "Numero Vale: " $NUMERO
  let NUMERO=NUMERO+1
done
