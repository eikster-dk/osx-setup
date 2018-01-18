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
	aluxian-messenger
)

echo "Installing apps..."
for i in "${apps[@]}"
do
   brew cask install $i
done

# Development
development_apps=(
	docker
    gitkraken
	visual-studio-code
)
echo "Installing development apps..."
for i in "${development_apps[@]}"
do
   brew cask install $i
done

echo "installing vs code extensions..."
vs_code_extensions=(
    auiworks.amvim
    felipe.nasc-touchbar
	Shan.code-settings-sync
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
for i in "${languages[@]}"
do
   brew install $i
done

echo "brew installations complete.."