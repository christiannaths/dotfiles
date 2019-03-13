#!/bin/bash

echo -e "Installing everything \n" \
    && ./Apt/install.sh \
    && ./Linuxbrew/install.sh \
    && ./Zsh/install.sh \
    && ./Git/install.sh \
    && ./Node/install.sh \
    && ./VSCode/install.sh \
    && ./GoogleCloud/install.sh \
    && echo -e "Done. \n"
