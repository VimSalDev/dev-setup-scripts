#!/bin/bash

# Ask the user if they have added the key to GitHub
while true; do
    read -p "Have you added the SSH key to GitHub? (yes/no): " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Please add the SSH key to GitHub and then type 'yes' to continue.";;
        * ) echo "Please answer yes or no.";;
    esac
done

# Test the SSH connection
ssh -T git@github.com

# Configure Git to use SSH
echo -e "\n[url \"git@github.com:\"]\n    insteadOf = https://github.com/" >> ~/.gitconfig

echo "GitHub SSH configuration completed."