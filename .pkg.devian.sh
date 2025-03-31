#!/bin/bash

# List of packages to install
packages=(neovim tmux code ranger yt-dlp wget curl xclip git vlc firefox)

# Loop through each package
for pkg in "${packages[@]}"; do
    if dpkg -l | grep -q "^ii  $pkg"; then
        echo "$pkg is already installed, skipping."
    else
        echo "Installing $pkg..."
        sudo apt-get update
        sudo apt-get install -y "$pkg"
    fi
done

echo "All packages processed."

