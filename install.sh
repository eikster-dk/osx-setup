#!/bin/sh

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
