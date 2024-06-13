#!/bin/bash
# install_python.sh
# Find and install the latest version of Python 3.x

echo "Finding and installing the latest version of Python 3.x..."
latest_python=$(apt-cache search --no-version python3.* | grep -Eo 'python3\.[0-9]+' | tail -1)
if [ -n "$latest_python" ]; then
    sudo apt-get install -y "$latest_python" "${latest_python}-venv"
    echo "$latest_python and ${latest_python}-venv installed successfully."
else
    echo "No Python 3.x version found."
fi
