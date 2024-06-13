#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./install_java.sh
./configure_java.sh

# Final message
echo "Process completed! Now you can program in Java"