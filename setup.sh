#!/bin/bash

#installing all the necessery packeges.
source ./.pkg.sh

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.run.sh ~/.run.sh
ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
ln -s ~/.dotfiles/.nvim ~/.config/nvim

git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/.tmux/plugins/tpm
