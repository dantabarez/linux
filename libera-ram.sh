#!/bin/bash
# Script para liberar memoria RAM en Linux

# Verificando si el usuario es root
if [ "$(id -u)" != "0" ]; then
   echo "Este script debe ser ejecutado como root" 1>&2
   exit 1
fi

# Sincronizando los datos en disco y liberando la memoria caché
echo "Sincronizando los datos en disco..."
sync

# Mostrando información de memoria libre antes de la operación
echo "Memoria libre antes de la operación:"
free -h

# Liberando memoria caché
echo "Liberando memoria caché..."
echo 3 > /proc/sys/vm/drop_caches

# Mostrando información de memoria libre después de la operación
echo "Memoria libre después de la operación:"
free -h

echo "Operación completada."

