#!/bin/bash

# Instalar Go
go_version="1.22.4"
go_tarball="go${go_version}.linux-amd64.tar.gz"
echo "Installing Go $go_version..."
wget "https://go.dev/dl/$go_tarball"
sudo tar -C /usr/local -xzf "$go_tarball"

# Limpiar el instalador de Go
rm "$go_tarball"
