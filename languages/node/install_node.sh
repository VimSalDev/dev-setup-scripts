#!/bin/bash
# install_node.sh
# Install Node.js

echo "Installing Node.js..."
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs