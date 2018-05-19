#!/bin/bash
DIA=$( date +%A )
if [[ $DIA="friday" ]]; then
  #statements
  echo "TGIF!!!! ya es Viernes!!! "
  echo $DIA
fi
