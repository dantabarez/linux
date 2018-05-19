#!/bin/bash
#programa que prueba si la letra es una vocal con el uso de case

read -n 1 -p "Ingrese una letra minuscula: " LETRA; echo

case $LETRA in
  a | e | i | o | u )
  echo "la letra es una vocal" ;;
  *)
  echo "la letra es una consonante" ;;

esac
