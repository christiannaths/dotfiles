#!/opt/homebrew/bin/zsh

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

HERE=${0:a:h}

echo $HERE


Install oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "Done.\n"

echo "Installing zsh bundle ..."
antidote bundle < $HERE/.zsh-plugins.txt > $HERE/.zsh-plugins.sh
echo "Done.\n"


# Install .zshrc
echo "Installing $HOME/.zshrc ..."
echo "source $HERE/.zshrc" > $HOME/.zshrc
echo "Done.\n"

# Hush login
touch $HOME/.hushlogin
