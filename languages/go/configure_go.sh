#!/bin/bash

# Crear directorios de espacio de trabajo para Go
echo "Creating Go workspace directories..."
mkdir -p "$HOME/Dev/Go/{bin,pkg,src}"

# Configurar variables de entorno para Go
echo "Configuring Go environment variables..."
{
    echo "export GOROOT=/usr/local/go"
    echo "export PATH=\$PATH:/usr/local/go/bin"
    echo "export GOPATH=\$HOME/Dev/Go"
    echo "export GOBIN=\$HOME/Dev/Go/bin"
} >> "$HOME/.bashrc"

exec bash