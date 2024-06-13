#!/bin/bash

# Navegar al directorio 'Documents' o 'Documentos'
if [ -d "Documents" ]; then
    cd Documents
elif [ -d "Documentos" ]; then
    cd Documentos
else
    echo "Neither 'Documents' nor 'Documentos' directory found."
    exit 1
fi

# Crear y navegar al directorio 'Dev'
DEV_DIR="Dev"
if [ ! -d "$DEV_DIR" ]; then
    mkdir "$DEV_DIR"
    echo "'$DEV_DIR' directory created."
else
    echo "'$DEV_DIR' directory already exists."
fi
cd "$DEV_DIR"
