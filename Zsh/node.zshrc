

npm-nuke(){
  find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
  find . -name "package-lock.json" -type f -exec rm -f '{}' +
}

shownodeversion() {
  if test -f "$(pwd)/package.json" && echo "node $(node -v) "
}

# autoload -U add-zsh-hook
# ch-nodeversion() {
#   local node_version="$(node -v | sed 's/^v\(.*\)/\1/')"
#   local nodeversion_path="$(cat .node-version 2>/dev/null)"
#   if [ -n "$nodeversion_path" ]; then
#       n auto
#   fi
# }
# add-zsh-hook chpwd ch-nodeversion
# ch-nodeversion


export PATH="$HOME/.yarn/bin:$PATH"
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH
