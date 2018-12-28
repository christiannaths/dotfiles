#!/bin/bash

echo -e "Installing everything \n" \
    && ./Homebrew/install.sh \
    && ./Zsh/install.sh \
    && ./Git/install.sh \
    && ./Node/install.sh \
    && ./VSCode/install.sh \
    && echo -e "Done. \n"
