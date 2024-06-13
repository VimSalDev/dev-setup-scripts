#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./update_system.sh
./install_git.sh
./configure_git.sh
./generate_ssh_key.sh
./configure_github_ssh.sh
./install_github_cli.sh

# Final message
echo "Process completed! You can now use Git and GitHub CLI with SSH authentication."