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
