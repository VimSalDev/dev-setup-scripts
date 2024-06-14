#!/bin/bash
cd $HOME

# Create 'Dev' directory if it doesn't exist and navigate to it
DEV_DIR="Dev"
if [ ! -d "$DEV_DIR" ]; then
    mkdir "$DEV_DIR"
    echo "'$DEV_DIR' directory created."
else
    echo "'$DEV_DIR' directory already exists."
fi
cd "$DEV_DIR"
