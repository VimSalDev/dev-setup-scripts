#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./create_workspace.sh
./create_language_dirs.sh

# Final message
echo "Process completed! Your workspace is ready for use."