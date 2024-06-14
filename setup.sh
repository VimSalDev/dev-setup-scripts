#!/bin/bash

find . -type f -name "*.sh" -exec chmod +x {} \;

# Run all setup scripts
./system/setup.sh
./workspace/setup.sh
./system/update_system.sh
./git/setup.sh
./system/update_system.sh
./languages/setup.sh
./system/update_system.sh
./libraries/cuda-wsl.sh
./system/update_system.sh
./libraries/setup_opencv.sh
./system/update_system.sh

# Final message
echo "Process completed! dev-setup-script is ready."