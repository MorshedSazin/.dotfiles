#!/bin/bash
#installing all the necessery packeges.
#source ./.pkg.arch.sh
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

#---------------------------------------------------
#linking & installing all the nessecery files for the envirment

#-->bash
mv ~/.bashrc ~/.bashrc_bac
git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc

#-->tmux
mv ~/.tmux.conf ~/.tmux.conf_bac
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

#-->nvim
mv ~/.config/nvim  ~/.config/nvim_bac
ln -s ~/.dotfiles/.nvim ~/.config/nvim

ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
ln -s ~/.dotfiles/.run.sh ~/.run.sh

#---------------------------------------------------


