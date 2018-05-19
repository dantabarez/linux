#!/bin/bash

for programa in $(find . -iname "*.sh" 2> /dev/null ); do
  #statements
  echo "copiando el script: " $programa
  cp $programa /home/$(users)/Downloads/.
done
