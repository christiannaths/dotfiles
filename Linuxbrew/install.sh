#!/usr/bin/zsh

HERE=${0:a:h}

# Install Linuxbrew
echo "Installing Linuxbrew ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "Done.\n"

echo "Updating PATH ..."
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
echo "Done.\n"

echo "Installing bundle ..."
brew bundle --file=$HERE/Brewfile
echo "Done.\n"
