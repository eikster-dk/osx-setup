#!/bin/sh

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