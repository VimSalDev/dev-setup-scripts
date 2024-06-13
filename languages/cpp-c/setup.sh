#!/bin/bash

chmod +x *.sh

# Run all setup scripts
./install_c_cpp_tools.sh
./install_cmake.sh

# Final message
echo "Process completed! Now you can program in C/C++"