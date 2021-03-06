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
export TLD_PATH=/Users/christiannaths/.local/share/Hinterland/TheLongDark

alias ls='ls -la'

source $HERE/.zsh-plugins.sh
source $HERE/git.zshrc
source $HERE/k8.zshrc
source $HERE/ruby.zshrc
source $HERE/node.zshrc
source $HERE/osx.zshrc
source $HERE/gcloud.zshrc
source $HERE/shortcuts.zshrc
source $HERE/kubectl-completion.zshrc
source $HERE/docker.zshrc

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi
