#!/bin/bash

#installing all the necessery packeges.
source ./.pkg.arch.sh

#---------------------------------------------------
#linking all the nessecery files for the envirment
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.run.sh ~/.run.sh
ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
ln -s ~/.dotfiles/.nvim ~/.config/nvim

#---------------------------------------------------
#cloning or donloading all the packages
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# for oh-my-bash
#git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
