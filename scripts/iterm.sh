echo "Setting up iterm profile"
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$(pwd)/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true