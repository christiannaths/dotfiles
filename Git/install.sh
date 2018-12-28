#!/bin/bash

HERE="$(cd "$(dirname "$0")" && pwd)"
git_exists=$(which git)

if [[ -z "${git_exists}" ]]; then
    echo -e "Couldn't find git. Try running 'brew install git' and make sure it succeeds before continuing. \n"
else
    echo "Installing .gitconfig ..."
    ln -sf "$HERE/.gitconfig" "$HOME/.gitconfig"
    echo -e "Done. \n"
fi
