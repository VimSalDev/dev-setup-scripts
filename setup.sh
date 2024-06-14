#!/bin/bash

find . -type f -name "*.sh" -exec chmod +x {} \;

# Run all setup scripts
./system/setup.sh
./workspace/setup.sh
./git/setup.sh
./languages/setup.sh
./libraries/setup.sh

# Final message
echo "Process completed! dev-setup-script is ready."