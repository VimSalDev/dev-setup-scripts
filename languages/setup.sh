#!/bin/bash

# Ensure all setup scripts are executable
find . -name "*.sh" -exec chmod +x {} \;

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/cpp-c/setup.sh"
"$SCRIPT_DIR/java/setup.sh"
"$SCRIPT_DIR/node/setup.sh"
"$SCRIPT_DIR/python/setup.sh"
"$SCRIPT_DIR/go/setup.sh"

# Final message
echo "Process completed! Now you can program :)"