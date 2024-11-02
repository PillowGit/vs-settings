#!/usr/bin/env bash

OS_NAME=$(uname -s)

echo "Detected OS: $OS_NAME"

# Ensure os is either Darwin, linux, or windows
if [ "$OS_NAME" != "Darwin" ]; then
  echo "This was only made for MacOS. Exiting..."
  exit 1
fi

# Prompt user, let them know their vscode settings and extensions will be overwritten completely
echo "This script will overwrite your current vscode settings and extensions. Continue? (y/n)"
read -r CONTINUE

if [ "$CONTINUE" != "y" ]; then
  echo "Exiting..."
  exit 1
fi

rm -rf ~/.vscode/extensions
mv extensions ~/.vscode

rm ~/Library/Application\ Support/Code/User/{settings.json, keybindings.json}
mv keybindings.json ~/Library/Application\ Support/Code/User
mv settings.json ~/Library/Application\ Support/Code/User
