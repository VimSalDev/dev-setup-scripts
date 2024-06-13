#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./install_go.sh
./configure_go.sh

# Final message
echo "Process completed! Now you can program in Go"