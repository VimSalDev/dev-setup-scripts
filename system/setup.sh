#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./install_prerequisites.sh
./update_system.sh

# Final message
echo "Process completed! all system update"