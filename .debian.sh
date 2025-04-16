packages=(neovim tmux micro git bat fzf code yt-dlp ranger wget curl xclip vlc firefox)
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
  #installing cpbooster
  sudo npm install cpbooster -g

  echo "All packages processed."
fi
