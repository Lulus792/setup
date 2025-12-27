#!/usr/bin/env bash
set -e

OS="$(lsb_release -si)"

if [[ "$OS" != "Ubuntu" ]]; then
  echo "This script is for Ubuntu only"
  exit 1
fi

sudo apt update
sudo apt install -y $(cat packages/ubuntu.txt)

./scripts/install_zsh.sh
./scripts/install_starship.sh
./scripts/install_neovim.sh
./scripts/install_ssh.sh

# Symlink dotfiles
ln -sf "$PWD/dotfiles/zshrc" ~/.zshrc
ln -sf "$PWD/dotfiles/tmux.conf" ~/.tmux.conf
ln -sf "$PWD/dotfiles/starship.toml" ~/.config/starship.toml
ln -sf "$PWD/dotfiles/nvim" ~/.config/nvim
ln -sf "$PWD/dotfiles/kitty.conf" ~/.config/kitty/kitty.conf

chsh -s "$(which zsh)"

echo "Bootstrap complete. Restart your Shell."
