#!/usr/bin/env bash

OS_NAME=$(uname -s)

echo "Detected OS: $OS_NAME"

# Ensure os is either Darwin, linux, or windows
if [ "$OS_NAME" != "Darwin" ]; then
  echo "This was only made for MacOS. Exiting..."
  exit 1
fi

# If an extensions folder exists here, remove it
if [ -d extensions ]; then
  rm -rf extensions
fi
mkdir extensions
cp -r ~/.vscode/extensions .

# If settings.json and keybindings.json exist here, remove them
cp ~/Library/Application\ Support/Code/User/settings.json .
cp ~/Library/Application\ Support/Code/User/keybindings.json .

echo "Settings and extensions copied to current directory."
