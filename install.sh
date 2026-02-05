#!/bin/bash


HERE="$(cd "$(dirname "$0")" && pwd)"



# 1. Check system requirements
# ---------------------------------
echo "Checking system requirements..."

missing_requirements=0

check_requirement() {
  if ! command -v "$1" &> /dev/null; then
    echo "Command \`$1\` not found. Please install it to continue"
    missing_requirements=1
  fi
}

check_requirement "xcode-select"
check_requirement "brew"

if [ $missing_requirements -eq 1 ]; then
  exit 1
fi

echo "All requirements satisfied."
echo



# 2. Install software from Brewfile
# ---------------------------------
echo "Installing brew bundle"
brew bundle --verbose --file=$HERE/Brewfile
echo -e "Done. \n"

# 3. Symlink fish config
# ---------------------------------
echo "Symlinking fish config..."
rm -rf ~/.config/fish
ln -s $HERE/fish ~/.config/fish
echo "Done."
echo

# 4. Install fish plugins
# ---------------------------------
echo "Installing fish plugins..."
fish -c "fisher update"
echo "Done."
echo

# 5. Exit messages
# ---------------------------------
echo "Installation complete. Enjoy your new setup!"
echo "P.S. You can run \`zoxide-prime\` to preload zoxide with your projects"
