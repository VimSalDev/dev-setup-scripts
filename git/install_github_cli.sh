#!/bin/bash

# Install GitHub CLI
sudo apt-get update -y
sudo apt-get install -y gh

# Authenticate with GitHub CLI
gh auth login

