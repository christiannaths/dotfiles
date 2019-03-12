#!/bin/bash

echo -e "Installing everything \n" \
    && ./Zsh/install.sh \
    && ./Git/install.sh \
    && ./Node/install.sh \
    && ./VSCode/install.sh \
    && ./GoogleCloud/install.sh \
    && echo -e "Done. \n"
