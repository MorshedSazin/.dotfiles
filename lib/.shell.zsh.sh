#!/bin/bash

# --> Bash
if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc_bac
fi
git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
ln -sf ~/.dotfiles/lib/.bashrc ~/.bashrc

# --> Tmux
if [ -f ~/.tmux.conf ]; then
  mv ~/.tmux.conf ~/.tmux.conf_bac
fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

# --> Neovim
if [ -d ~/.config/nvim ]; then
  mv ~/.config/nvim ~/.config/nvim_bac
fi
ln -sf ~/.dotfiles/.nvim ~/.config/nvim

# --> Custom Scripts
ln -sf ~/.dotfiles/.run.sh ~/.run.sh

# --> Nerd Fonts
if [ -d ~/.dotfiles/.Nerd_3270 ]; then
  sudo cp ~/.dotfiles/.Nerd_3270/*.ttf /usr/share/fonts/TTF/
  fc-cache -fv
else
  echo "⚠️  Font directory not found: ~/.dotfiles/.Nerd_3270"
fi

echo "✅ Setup complete!"

