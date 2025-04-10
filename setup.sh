#!/bin/bash
# installing all the necessary packages.

shell_name=$(basename "$SHELL")
if command -v pacman >/dev/null; then
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

elif command -v apt >/dev/null; then
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

#---------------------------------------------------
# linking & installing all the necessary files for the environment

if [ "$shell_name" = "bash" ]; then
  # --> bash
  mv ~/.bashrc ~/.bashrc_bac
  git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
  ln -s ~/.dotfiles/.bashrc ~/.bashrc

  # --> tmux
  mv ~/.tmux.conf ~/.tmux.conf_bac
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

  # --> nvim
  mv ~/.config/nvim ~/.config/nvim_bac
  ln -s ~/.dotfiles/.nvim ~/.config/nvim

  ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
  ln -s ~/.dotfiles/.run.sh ~/.run.sh

  # Nerd_3270 fonts
  cp ~/.dotfiles/.Nerd_3270/*.ttf /usr/share/fonts/TTF/
fi

if [ "$shell_name" = "zsh" ]; then
  # --> zsh
  mv ~/.zshrc ~/.zshrc_bac
  cd ~/ && wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh
  ln -s ~/.dotfiles/.zshrc ~/.zshrc

  # --> tmux
  mv ~/.tmux.conf ~/.tmux.conf_bac
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

  # --> nvim
  mv ~/.config/nvim ~/.config/nvim_bac
  ln -s ~/.dotfiles/.nvim ~/.config/nvim

  ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
  ln -s ~/.dotfiles/.run.sh ~/.run.sh

  # Nerd_3270 fonts
  sudo cp -rf ~/.dotfiles/.Nerd_3270/ /usr/share/fonts/truetype/
fi
