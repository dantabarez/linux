#!/bin/bash -x

DIA=$( date +%d )
echo "hoy es $DIA del mes"

if [[ $DIA -lt 15 ]]; then
  #statements
  echo "Estamos en la primera quincena del mes"
else
  echo "Estamos en la segunda quincena del mes"
fi
