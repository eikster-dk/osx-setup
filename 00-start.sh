#!/bin/sh

echo "Giving correct permissions..."
brew bundle

echo "Giving correct permissions..."
chmod +x ./01-vscode.sh;
chmod +x ./02-npm.sh;
chmod +x ./03-docker.sh;


echo "Starting installation..."
./01-vscode.sh;
./02-npm.sh;
./03-docker.sh;

echo "Symlinking stuff..."
ln -sfn $(pwd)/vs-code/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sfn $(pwd)/vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sfn $(pwd)/vs-code/snippets/ ~/Library/Application\ Support/Code/User
ln -sfn $(pwd)/.zshrc ~/.zshrc
ln -sfn $(pwd)/.p10k.zsh ~/.p10k.zsh

echo "setting up zsh"
chsh -s /usr/local/bin/zsh

echo "Setting up iterm profile"
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$(pwd)/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

echo "Sync secrets..."

echo "settings up some mac stuff"
defaults write -g ApplePressAndHoldEnabled -bool false 

echo "You are ready to code master..."
