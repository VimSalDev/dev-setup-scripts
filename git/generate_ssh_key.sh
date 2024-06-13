#!/bin/bash

# Obtain the email from Git configuration
git_user_email=$(git config --global user.email)

# Check if the email is set
if [ -z "$git_user_email" ]; then
  echo "No email found in Git configuration. Please configure your Git email first using 'git config --global user.email your_email@example.com'"
  exit 1
fi

# Generate a new SSH key
ssh-keygen -t ed25519 -C "$git_user_email" -f ~/.ssh/id_ed25519 -N ""

# Start the SSH agent
eval "$(ssh-agent -s)"

# Add the SSH key to the agent
ssh-add ~/.ssh/id_ed25519

# Display the public key and instruct the user to add it to GitHub
cat ~/.ssh/id_ed25519.pub
echo "Copy the SSH key above and add it to your GitHub account."
