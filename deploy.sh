#!/bin/bash

# Параметры для подключения к серверу
SERVER_USER="root"
SERVER_IP="162.0.211.138"
SERVER_PATH="/var/www/html"

# Локальная директория, которую будем синхронизировать
LOCAL_PATH="$(pwd)"

echo "Deploying static site to server..."

# Синхронизация файлов с сервером с использованием rsync
rsync -avz --delete $LOCAL_PATH/ $SERVER_USER@$SERVER_IP:$SERVER_PATH

echo "Deployment completed successfully!"
