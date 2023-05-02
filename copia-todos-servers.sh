#!/bin/bash
# Script para copiar un archivo a varios servidores con scp y sshpass

# Configuración
#file_to_copy="libera-ram.sh"
file_to_copy="$1" #parametro enviado en la ejecucion luego del nombre del script
username="dtabarez"
password="$2" #segundo parametro contrasena
destination_path="/home/dtabarez/"

# Bucle para copiar el archivo a los servidores
for i in 21 22 23 24 31 32 41 42; do
  server="10.11.33.$i"
  echo "Copiando el archivo a $server..."
  #sshpass -p "$password" scp -o StrictHostKeyChecking=no "$file_to_copy" "$username@$server:$destination_path"
  sshpass -p "$password" scp -o StrictHostKeyChecking=no -oHostKeyAlgorithms=ssh-rsa "$file_to_copy" "$username@$server:$destination_path"
done

for i in 21 22 23 24 41 42; do
  server="10.12.33.$i"
  echo "Copiando el archivo a $server..."
  #sshpass -p "$password" scp -o StrictHostKeyChecking=no "$file_to_copy" "$username@$server:$destination_path"
  sshpass -p "$password" scp -o StrictHostKeyChecking=no -oHostKeyAlgorithms=ssh-rsa "$file_to_copy" "$username@$server:$destination_path"
done

echo "Archivo copiado a todos los servidores."

