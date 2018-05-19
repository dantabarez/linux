#!/bin/bash
<<<<<<< HEAD
#creacion de respaldo, usando copias recursivas con for.
# redireccionamiento shell script
=======
>>>>>>> 919d33bb4c24fe0d61842bf00027c05baddc45a6

for programa in $(find . -iname "*.sh" 2> /dev/null ); do
  #statements
  echo "copiando el script: " $programa
  cp $programa /home/$(users)/Downloads/.
done
