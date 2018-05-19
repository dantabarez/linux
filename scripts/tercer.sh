#!/bin/bash
NUMERO=4 #No se debe dejar ningun espacio en la asignacion
echo $NUMERO+3

#---------------------

echo pwd #muestra en pantalla pwd
echo $(pwd) #muestra en pantalla el comando resultado de pwd

#---------------------

#creando un respaldo deacuerdo a la fecha actual

NOMBRE_FICHERO="red_"$(date +%d_%m_%y)".config"
echo $NOMBRE_FICHERO
cp /etc/sysconfig/network /home/dtabarez/Downloads/$NOMBRE_FICHERO

#---------------------

#comparacion entre el uso de $() y `` tildes invertidas para ejecucion de comandos en Shell, los dos hacen lo mismo

echo "Tenemos $(find . -iname "*.sh" | wc -l) scripts"
echo "Tenemos `find . -iname "*.sh" | wc -l` scripts"
