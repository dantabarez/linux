#!/bin/bash

select RESP in Chiste Refran Poema Salir; do
  case $RESP in
    Chiste)
      echo "soy un indeciso o no ....";;
    Refran)
      echo "cria cuervos y te sacaran los ojos";;
    Poema)
      echo "tu corazon hace ton ton" ;;
    Salir)
      break
  esac
done
