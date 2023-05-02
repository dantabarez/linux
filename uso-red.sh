#!/bin/bash
# Script para mostrar el porcentaje de uso de la red en Linux

# Configuración
interface="wlo1"
max_speed=1000 # Velocidad máxima de la interfaz en Mbps

# Obteniendo el uso actual de la red utilizando 'ip' y 'grep'
rx_bytes_prev=$(ip -s link show "$interface" | grep "RX:" | awk '{print $2}')
tx_bytes_prev=$(ip -s link show "$interface" | grep "TX:" | awk '{print $2}')

# Espera un segundo para obtener una medida precisa
sleep 1

rx_bytes_next=$(ip -s link show "$interface" | grep "RX:" | awk '{print $2}')
tx_bytes_next=$(ip -s link show "$interface" | grep "TX:" | awk '{print $2}')

# Calculando el uso de la red en Mbps
rx_speed=$(echo "scale=2;(($rx_bytes_next - $rx_bytes_prev) * 8) / 1000000" | bc)
tx_speed=$(echo "scale=2;(($tx_bytes_next - $tx_bytes_prev) * 8) / 1000000" | bc)

# Calculando el porcentaje de uso de la red
rx_usage=$(echo "scale=2;($rx_speed / $max_speed) * 100" | bc)
tx_usage=$(echo "scale=2;($tx_speed / $max_speed) * 100" | bc)

# Mostrando el resultado
echo "Uso de la red en la interfaz $interface:"
echo "Velocidad de recepción: $(numfmt --to=si $rx_speed) Mbps ($rx_usage%)"
echo "Velocidad de transmisión: $(numfmt --to=si $tx_speed) Mbps ($tx_usage%)"
