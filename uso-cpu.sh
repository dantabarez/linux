#!/bin/bash
# Script para mostrar el porcentaje de uso de la CPU en Linux

# Obteniendo el porcentaje de uso de la CPU utilizando 'top'
cpu_usage=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Mostrando el resultado
echo "Uso de la CPU: $cpu_usage%"

