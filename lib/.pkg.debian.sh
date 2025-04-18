packages=(neovim tmux micro git bat fzf code yt-dlp ranger wget curl xclip vlc firefox)

# Loop through each package
for pkg in "${packages[@]}"; do
  if dpkg -s "$pkg" &>/dev/null; then
    echo "$pkg is already installed, skipping."
  else
    echo "Installing $pkg..."
    sudo apt-get update
    sudo apt-get install -y "$pkg"
  fi
done

# Installing cpbooster
sudo npm install -g cpbooster

echo "All packages processed."
