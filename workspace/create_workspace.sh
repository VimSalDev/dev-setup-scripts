#!/bin/bash

# Check for 'Documents' or 'Documentos' directory and navigate if found
if [ -d "Documents" ]; then
    cd Documents
elif [ -d "Documentos" ]; then
    cd Documentos
else
    echo "Neither 'Documents' nor 'Documentos' directory found."
    exit 1
fi

# Create 'Dev' directory if it doesn't exist and navigate to it
DEV_DIR="Dev"
if [ ! -d "$DEV_DIR" ]; then
    mkdir "$DEV_DIR"
    echo "'$DEV_DIR' directory created."
else
    echo "'$DEV_DIR' directory already exists."
fi
cd "$DEV_DIR"
