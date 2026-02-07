#fastfetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Location of history file
HISTFILE=~/.zsh_history

# Number of lines kept in memory during the session
HISTSIZE=10000

# Number of lines stored in the history file
SAVEHIST=10000

# Enable Ctrl + Arrow key word navigation to move word by word.
bindkey '^[[1;5C' forward-word     # Ctrl+Right
bindkey '^[[1;5D' backward-word    # Ctrl+Left

#node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#Flutter SDK
export PATH="$PATH:$HOME/.config/flutter_setup/flutter/bin"

export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools


# Dart SDK (from Flutter)
export PATH="$PATH:$HOME/.config/flutter_setup/flutter/bin/cache/dart-sdk/bin"

#DOTNET SDK
export PATH="$PATH:$HOME/.config/dotnet-sdk/sdk/"


export PATH="$HOME/.dotnet/tools:$PATH"

# aliases
alias yta='yt-dlp -x --audio-format mp3'
alias ins='sudo pacman -S'
alias update='sudo pacman -Syyu'
alias f='nvim $(fzf -m --preview="bat --color=always {}")'
alias le='cd /mnt/disk/code/cp/leetcode/ && nvim .'
alias lr='cd /mnt/disk/code/cp/leetcode/'
alias xamp='sudo /opt/lampp/manager-linux-x64.run'
alias ll='ls -al'
alias cc='cpb clone'
alias cr='cd /mnt/disk/code/cp/codeforces/'
alias cf='cd /mnt/disk/code/cp/codeforces/ && nvim .'
#alias mysql ='sudo /opt/lampp/bin/mysql -u root -p'
alias br='cd /opt/lampp/htdocs/binarywear'
alias open='xdg-open'
alias refresh='[ "${XDG_SESSION_TYPE:-}" = wayland ] && kwin_wayland --replace & disown || kwin_x11 --replace & disown'
alias routine='cd /mnt/disk/code/flutter/planoroma/build/linux/x64/release/bundle && ./widget'
#xdg-mime default mpv.desktop video/mp4
#xdg-mime default mpv.desktop audio/mpeg

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
