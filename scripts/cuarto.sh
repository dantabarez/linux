#!/bin/bash

#uso de operaciones matematicas con variables
#suma de dos numeros en shell scripts

NUM=4
echo $(($NUM+3))
echo $[$NUM+3]

#----------------
#otra forma para realizara las operaciones es con let

VAR=6
let SUMA=VAR+4
echo $SUMA
