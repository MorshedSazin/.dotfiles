#!/bin/bash
# Installing all the necessary packages and setting up environment

set -e
trap 'echo "❌ An error occurred. Exiting..."; exit 1;' ERR

shell_name=$(basename "$SHELL")

echo "🔍 Detected shell: $shell_name"
echo "🔧 Detecting package manager..."

# Detect package manager and run the corresponding script
if command -v pacman >/dev/null; then
  if [ -f lib/.pkg.arch.sh ]; then
    echo "📦 Using pacman (Arch-based system)"
    source lib/.pkg.arch.sh
  else
    echo "❌ Error: lib/.pkg.arch.sh not found!"
    exit 1
  fi
elif command -v apt >/dev/null; then
  if [ -f lib/.pkg.debian.sh ]; then
    echo "📦 Using apt (Debian-based system)"
    source lib/.pkg.debian.sh
  else
    echo "❌ Error: lib/.pkg.debian.sh not found!"
    exit 1
  fi
else
  echo "❌ Unsupported package manager."
  exit 1
fi

# Linking & installing all necessary files for the environment
echo "⚙️  Applying shell-specific configurations..."

case "$shell_name" in
bash)
  if [ -f lib/.shell.bash.sh ]; then
    echo "➡️  Configuring for Bash"
    source lib/.shell.bash.sh
  else
    echo "❌ Error: lib/.shell.bash.sh not found!"
    exit 1
  fi
  ;;
zsh)
  if [ -f lib/.shell.zsh.sh ]; then
    echo "➡️  Configuring for Zsh"
    source lib/.shell.zsh.sh
  else
    echo "❌ Error: lib/.shell.zsh.sh not found!"
    exit 1
  fi
  ;;
*)
  echo "❌ Unsupported shell: $shell_name"
  exit 1
  ;;
esac

echo "✅ Environment setup complete!"
