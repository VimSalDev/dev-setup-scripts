#!/bin/bash

chmod +x *.sh

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/update_system.sh"
"$SCRIPT_DIR/install_prerequisites.sh"
"$SCRIPT_DIR/update_system.sh"

# Final message
echo "Process completed! all system update"