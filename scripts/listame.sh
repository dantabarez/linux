#!/bin/bash
#programa con uso de for

for NOMBRE in $( ls *.sh); do
  #statements
  echo existe script con nombre: $NOMBRE
done
