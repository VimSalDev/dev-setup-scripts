#!/bin/bash

# Ask for the name and save it in a temporary variable
read -p "Enter your name to configure git: " git_user_name
git config --global user.name "$git_user_name"

# Ask for the email and save it in a temporary variable
read -p "Enter your email to configure git: " git_user_email
git config --global user.email "$git_user_email"
