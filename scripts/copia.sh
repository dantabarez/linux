#!/bin/bash
#creacion de respaldo, usando copias recursivas con for.
# redireccionamiento shell script

for programa in $(find . -iname "*.sh" 2> /dev/null ); do
  #statements
  echo "copiando el script: " $programa
  cp $programa /home/$(users)/Downloads/.
done
