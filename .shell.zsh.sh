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
