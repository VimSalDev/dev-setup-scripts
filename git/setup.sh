#!/bin/bash

chmod +x *.sh

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/install_git.sh"
"$SCRIPT_DIR/configure_git.sh"
"$SCRIPT_DIR/generate_ssh_key.sh"
"$SCRIPT_DIR/configure_github_ssh.sh"
"$SCRIPT_DIR/install_github_cli.sh"

# Final message
echo "Process completed! You can now use Git and GitHub CLI with SSH authentication."