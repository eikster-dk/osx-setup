#!/bin/sh

echo "installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# downloading repository
mkdir ~/code

git clone https://github.com/eikc/osx-setup.git ~/code/osx-setup

cd ~/code/osx-setup

echo "Installing Brewfile"
brew bundle

echo "Starting installation..."
./scripts/symlink.sh;
./scripts/vscode.sh;
./scripts/npm.sh;
./scripts/docker.sh;
./scripts/macos.sh;
./scripts/iterm.sh;
./scripts/zsh.sh




echo "You are ready to code master..."
