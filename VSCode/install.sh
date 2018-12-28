#!/bin/bash

HERE="$(cd "$(dirname "$0")" && pwd)"
vscode_exists=$(which code)
VSCODE_HOME=$HOME/Library/Application\ Support/Code/User

if [[ -z "${vscode_exists}" ]]; then
    echo -e "Couldn't find vscode. Try running 'brew cask install vscode' and make sure it succeeds before continuing. \n"
else
    ln -sf "$HERE/settings.json" "$VSCODE_HOME/settings.json"
    cat $HERE/extensions.txt | grep -v '^#' | xargs -L1 code --install-extension
fi
