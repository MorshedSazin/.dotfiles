#!/bin/bash
# Installing all the necessary packages

shell_name=$(basename "$SHELL")

# Detect package manager and run the corresponding script
if command -v pacman >/dev/null; then
  source .arch.sh
elif command -v apt >/dev/null; then
  source .debian.sh
fi

# Linking & installing all the necessary files for the environment
if [ "$shell_name" = "bash" ]; then
  # --> bash
  source .shell.bash.sh
fi

if [ "$shell_name" = "zsh" ]; then
  # --> zsh
  source .shell.zsh.sh
fi
