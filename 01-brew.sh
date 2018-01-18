#!/bin/sh
# Install brew if is not already Installed
if test ! $(which brew); then
  	echo "Installing homebrew..."
  	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo ""
echo "Updating homebrew"
brew update

echo "Installing cask "
brew tap caskroom/cask
brew tap caskroom/versions

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zshrc


# Some cask apps
apps=(
    google-chrome
	firefoxdeveloperedition
	slack
	spotify
	messenger-native
)

echo "Installing apps..."
brew cask install ${apps[@]}

# Development
development_apps=(
	docker
    gitkraken
	visual-studio-code
)
echo "Installing development apps..."
brew cask install ${development_apps[@]}

echo "installing vs code extensions..."
vs_code_extensions=(
    auiworks.amvim
    felipe.nasc-touchbar
    robertohuertasm.vscode-icons
    Angular.ng-template
    PeterJausovec.vscode-docker
    christian-kohler.npm-intellisense
    eg2.tslint
    eg2.vscode-npm-script
    michelemelluso.code-beautifier
    lukehoban.Go
    WallabyJs.quokka-vscode
    WallabyJs.wallaby-vscode
)

for i in "${vs_code_extensions[@]}"
do
   code --install-extension $i
done

echo "installing development languages and tooling..."
languages=(
	nodejs
	go
	dep
)

brew install ${languages[@]}

echo "brew installations complete.."