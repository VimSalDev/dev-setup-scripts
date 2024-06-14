#!/bin/bash

chmod +x *.sh

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/create_workspace.sh"
"$SCRIPT_DIR/create_language_dirs.sh"

# Final message
echo "Process completed! Your workspace is ready for use."