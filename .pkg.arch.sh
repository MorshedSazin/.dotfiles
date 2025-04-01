#!/bin/bash

# List of packages to install
packages=(neovim tmux micro git bat fzf code yt-dlp ranger wget curl xclip vlc firefox)

# Loop through each package
for pkg in "${packages[@]}"; do
    if pacman -Q "$pkg" &>/dev/null; then
        echo "$pkg is already installed, skipping."
    else
        echo "Installing $pkg..."
        sudo pacman -S --noconfirm "$pkg"
    fi
done

echo "All packages processed."
