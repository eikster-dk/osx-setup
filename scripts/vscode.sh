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
)

for i in "${vs_code_extensions[@]}"
do
   code --install-extension $i
done
