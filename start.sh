#!/bin/bash 

# Diretório correto do Pterodactyl
export N8N_HOME=/home/container/.n8n
mkdir -p "$N8N_HOME"

# Outros diretórios importantes
export N8N_USER_FOLDER="$N8N_HOME"
export N8N_CONFIG_FILES="$N8N_HOME/config"

mkdir -p "$N8N_CONFIG_FILES"

# Porta usada pelo Pterodactyl
export N8N_PORT={{SERVER_PORT}}

# Ambiente obrigatório
export N8N_ENCRYPTION_KEY=$(openssl rand -hex 16)

# Logs mais limpos
export N8N_LOG_LEVEL=debug

cd /home/container

# Iniciar o n8n
n8n start
