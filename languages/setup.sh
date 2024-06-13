#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./cpp-c/setup.sh
./go/setup.sh
./java/setup.sh
./node/setup.sh
./python/setup.sh

# Final message
echo "Process completed! Now you can program :)"