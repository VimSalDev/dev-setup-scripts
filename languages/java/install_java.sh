#!/bin/bash

# Instalar Java
java_version="22"
java_deb="jdk-${java_version}_linux-x64_bin.deb"
echo "Installing Java $java_version..."
wget "https://download.oracle.com/java/${java_version}/latest/$java_deb"
sudo dpkg -i "$java_deb"

# Limpiar el instalador de Java
rm "$java_deb"