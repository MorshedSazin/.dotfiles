#!/bin/bash
#installing all the necessery packeges.
#source ./.pkg.debian.sh
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
echo "All packages processed."

#---------------------------------------------------
#linking & installing all the nessecery files for the envirment

#-->zshrc
mv ~/.zshrc ~/.zshrc_bac
cd ~/ && wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh
ln -s ~/.dotfiles/.zshrc ~/.zshrc

#-->tmux
mv ~/.tmux.conf ~/.tmux.conf_bac
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

#-->nvim
mv ~/.config/nvim  ~/.config/nvim_bac
ln -s ~/.dotfiles/.nvim ~/.config/nvim

ln -s ~/.dotfiles/.run.sh.cp ~/.run.sh.cp
ln -s ~/.dotfiles/.run.sh ~/.run.sh

#Nerd_3270 fonts
#cp ~/.dotfiles/.Nerd_3270/*.ttf /usr/share/fonts/TTF/
#---------------------------------------------------


