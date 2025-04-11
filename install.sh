#!/bin/bash

# Choose your install target
INSTALL_DIR="/usr/local/bin"

# Check if we need sudo
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or use sudo"
    exit 1
fi

echo "Installing sa818 scripts to $INSTALL_DIR..."

# Copy scripts to the install location
cp sa818 "$INSTALL_DIR"
cp sa818-menu "$INSTALL_DIR"

# Make sure they're executable (just in case)
chmod +x "$INSTALL_DIR/sa818"
chmod +x "$INSTALL_DIR/sa818-menu"

echo "Installation complete. You can now run 'sa818' or 'sa818-menu' from any terminal."
