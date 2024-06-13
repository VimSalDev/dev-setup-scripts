#!/bin/bash

# Check if git is installed, and install it if it's not
if ! command -v git &> /dev/null
then
    echo "git is not installed. Installing git..."
    sudo apt-get install -y git
else
    echo "git is already installed."
fi
