HERE=${0:a:h}
ANTIBODY_HOME="$(antibody home)"
ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"

# My prompt
PROMPT='$FG[133]$%{$reset_color%} '

# newline before prompt
precmd() { print "" }

# Ident output 4 spaces
# exec 1> >(sed 's/^/    /')

export ZSH="$ANTIBODY_HOME"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

alias ls='ls -la'


source $HERE/.zsh-plugins.sh
for config ("$HERE"/*.zshrc) source $config


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi
