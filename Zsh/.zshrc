export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

HERE=${0:a:h}
ANTIDOTE_HOME="$(antidote home)"
ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"



# Ident output 4 spaces
# exec 1> >(sed 's/^/    /')

export ZSH="$ANTIDOTE_HOME"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh

source $HERE/.zsh-plugins.sh
for config ("$HERE"/*.zshrc) source $config

alias ls='ls -la'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# My prompt



precmd() { print "" }
PROMPT='%F{white}$(shownodeversion)%F{reset}%F{133}❯%F{reset} '
