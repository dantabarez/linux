#!/bin/bash
#parametros.sh - script para uso de parametros

echo "el primer parametro enviado fue: " $1
echo "el tercer parametro enviado fue: " $3
echo "el conjunto de todos los parametros enviados es: " $*
echo "me enviaste un total de " $# "parametros"
echo "el parametro 0 es : " $0
