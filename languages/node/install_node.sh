#!/bin/bash
# install_node.sh
# Install Node.js

echo "Installing Node.js..."
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt-get install -y nodejs