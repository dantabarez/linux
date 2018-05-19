#!/bin/bash

#Verificando variables globales y locales, no se alteran

function saludo() {
  #statements
  local NOMBRE="BERLIN"
  echo "Hola Senor $NOMBRE encantado de conocerle"
}

NOMBRE="TOKIO"
echo "saludo mi nombre es $NOMBRE"
saludo
