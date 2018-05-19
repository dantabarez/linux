#!/bin/bash

DIA=$( date +%A )

echo "Hoy es "$DIA

if [[ $DIA = "Friday" ]]; then
  #statements
  echo "TGIF!!!! ya es Viernes!!! "

fi
