#!/bin/bash
# install_prerequisites.sh

echo "Installing prerequisites..."
sudo apt-get install -y software-properties-common

echo "Installing net-tools and wget..."
sudo apt-get install -y net-tools wget

echo "Installing tree..."
sudo apt-get install -y tree