#!/bin/sh

echo "installing vs code extensions..."
vs_code_extensions=(
    auiworks.amvim
	robertohuertasm.vscode-icons
    Angular.ng-template
    eg2.tslint
    mauve.terraform
    Dart-Code.dart-code
    Dart-Code.flutter
    ms-vscode.Go
    ms-azuretools.vscode-azurefunctions
    ms-azuretools.vscode-docker
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