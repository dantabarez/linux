#!/bin/bash
# necesita chmod +x


read -p "Introduce cuantos hijos tienes: " NUMERO_HIJOS

if [[ $NUMERO_HIJOS -eq 1 ]]; then
  #statements
  echo "Tienes un hijo unico"
elif [[ $NUMERO_HIJOS -eq 2 ]]; then
  #statements
  echo "Tienes dos hijos"
elif [[ $NUMERO_HIJOS -ge 3 ]]; then
  #statements
  echo "tienes 3 o mas hijos, que paso!!!"
else
  echo "no tienes hijos"
fi
