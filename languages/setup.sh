#!/bin/bash

chmod +x *.sh

SCRIPT_DIR=$(dirname "$0")

# Run all setup scripts
"$SCRIPT_DIR/cpp-c/setup.sh"
"$SCRIPT_DIR/go/setup.sh"
"$SCRIPT_DIR/java/setup.sh"
"$SCRIPT_DIR/node/setup.sh"
"$SCRIPT_DIR/python/setup.sh"

# Final message
echo "Process completed! Now you can program :)"