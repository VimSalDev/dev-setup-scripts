#!/bin/bash

cd $HOME/Dev

# List of programming languages
languages=("Java" "Python" "C" "C++" "JS" "Go")

# Create subdirectories for each language
for lang in "${languages[@]}"; do
    if [ ! -d "$lang" ]; then
        mkdir "$lang"
        echo "Directorio para $lang creado."
    else
        echo "Directorio para $lang ya existe."
    fi
done
