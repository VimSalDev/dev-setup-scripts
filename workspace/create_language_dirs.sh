#!/bin/bash

# Lista de lenguajes de programación
languages=("Java" "Python" "C" "C++" "JS" "Go")

# Crear subdirectorios para cada lenguaje
for lang in "${languages[@]}"; do
    if [ ! -d "$lang" ]; then
        mkdir "$lang"
        echo "Directorio para $lang creado."
    else
        echo "Directorio para $lang ya existe."
    fi
done
