#!/bin/bash

chmod +x *.sh

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/install_python.sh"

# Final message
echo "Process completed! Now you can program in Python"
