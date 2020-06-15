echo "Symlinking stuff..."
ln -sfn $(pwd)/vs-code/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sfn $(pwd)/vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sfn $(pwd)/vs-code/snippets/ ~/Library/Application\ Support/Code/User
ln -sfn $(pwd)/zsh/.zshrc ~/.zshrc
ln -sfn $(pwd)/zsh/aliases ~/.aliases
ln -sfn $(pwd)/zsh/.p10k.zsh ~/.p10k.zsh
