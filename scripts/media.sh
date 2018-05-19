#!/bin/bash

read -p "Introduce la nota de ISO: " NOTAISO
read -p "Introduce la nota de PROG: " NOTAPROG
read -p "Introduce la nota de BD: " NOTABD

#sumando valor de tres notas intorucidas, media entera

SUMA=$[ $NOTAISO + $NOTAPROG + $NOTABD]
#MEDIA=$[ $SUMA / 3 ]
#echo "La media es $MEDIA"


#mostrar con 4 decimales
let MEDIA=SUMA/3
MEDIA=$(echo "scale=4; $SUMA/3" | bc -l)
echo "La media es $MEDIA"
