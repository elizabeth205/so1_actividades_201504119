#!/bin/bash

# Leer la variable GITHUB_USER
GITHUB_USER="elizabeth205"

# Consultar la API de GitHub y almacenar la respuesta en una variable
API_URL="https://api.github.com/users/$GITHUB_USER"
API_RESPONSE=$(curl -s "$API_URL")

# Extraer información de la respuesta JSON utilizando jq en una variable
LOG_ENTRY=$(echo "$API_RESPONSE" | jq -r '"Hola \(.name). User ID: \(.id). Cuenta fue creada el: \(.created_at)."')

# Imprimir el mensaje
echo "$LOG_ENTRY"

# Crear un log file en /tmp/<fecha>/saludos.log
LOG_DIR="/tmp/$(date +\%Y-\%m-\%d)"
LOG_FILE="$LOG_DIR/saludos.log"

# Crear el directorio si no existe y añadir la entrada al archivo de registro
mkdir -p "$LOG_DIR"
echo "$LOG_ENTRY" >> "$LOG_FILE"
