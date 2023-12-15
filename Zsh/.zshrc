HERE=${0:a:h}
ANTIBODY_HOME="$(antibody home)"
ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"



# Ident output 4 spaces
# exec 1> >(sed 's/^/    /')

export ZSH="$ANTIBODY_HOME"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

source $HERE/.zsh-plugins.sh
for config ("$HERE"/*.zshrc) source $config

alias ls='/usr/local/bin/gls --color -h --group-directories-first -la'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# My prompt

shownodeversion() {
  if test -f "$(pwd)/package.json" && echo "node $(node -v) "
}

precmd() { print "" }
PROMPT='%F{white}$(shownodeversion)%F{reset}%F{133}❯%F{reset} '
