#!/usr/local/bin/zsh

HERE=${0:a:h}

echo $HERE

# Install oh-my-zsh
# echo "Installing oh-my-zsh ..."
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# echo "Done.\n"

# Install anitbody
echo "Installing antibody ..."
curl -sL git.io/antibody | sh -s
echo "Done.\n"

echo "Installing zsh bundle ..."
antibody bundle < $HERE/.zsh-plugins.txt > $HERE/.zsh-plugins.sh
echo "Done.\n"

# Install .zshrc
echo "Installing $HOME/.zshrc ..."
echo "source $HERE/.zshrc" > $HOME/.zshrc
echo "Done.\n"

# # Hush login
# touch $HOME/.hushlogin
