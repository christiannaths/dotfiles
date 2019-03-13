#!/usr/bin/zsh

# Install Linuxbrew
echo "Installing Linuxbrew ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "Done.\n"

echo "Updating PATH ..."
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
echo "Done.\n"
