#!/bin/bash

HERE="$(cd "$(dirname "$0")" && pwd)"
brew_exists=$(which brew)

if [[ -z "${brew_exists}" ]]; then
    echo "Installing Homebrew ..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo -e "Done. \n"
fi

echo "Installing brew bundle"
brew bundle --verbose --file=$HERE/Brewfile
echo -e "Done. \n"
