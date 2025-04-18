  packages=(neovim tmux micro git bat fzf code yt-dlp ranger wget curl xclip vlc firefox npm)
  # Loop through each package
  for pkg in "${packages[@]}"; do
    if pacman -Q "$pkg" &>/dev/null; then
      echo "$pkg is already installed, skipping."
    else
      echo "Installing $pkg..."
      sudo pacman -S --noconfirm "$pkg"
    fi
  done
  #installing cpbooster
  sudo npm install cpbooster -g

  echo "all packages processed."
