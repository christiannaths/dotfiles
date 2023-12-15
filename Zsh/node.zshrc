

yarn-nuke () {
  rm -fr ./node_modules \
  && yarn cache clean \
  && rm -fr ./yarn.lock
}

autoload -U add-zsh-hook
ch-nodeversion() {
  local node_version="$(node -v | sed 's/^v\(.*\)/\1/')"
  local nodeversion_path="$(cat .node-version 2>/dev/null)"
  if [ -n "$nodeversion_path" ]; then
      n auto
  fi
}
add-zsh-hook chpwd ch-nodeversion
ch-nodeversion


export PATH="$HOME/.yarn/bin:$PATH"
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH
