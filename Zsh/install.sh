#! /bin/sh

SOURCE_DIR=$(cd `dirname $0` && pwd)

# Install oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "Done."

# Install zshrc
echo "Installing $HOME/.zshrc ..."
echo "zsh $SOURCE_DIR/.zshrc" > $HOME/.zshrc
echo "Done."
