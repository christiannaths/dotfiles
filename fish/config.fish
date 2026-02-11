if status is-interactive
# Commands to run in interactive sessions can go here
end

set -gx EDITOR nano
set -gx LESS -R

alias ls='ls -laF --color=auto'
alias grep='grep --color=auto'
alias gs='git status'
alias gaa='git add .'
alias code='zed .'

zoxide init fish | source

# gib
set --export GIB_INSTALL /Users/christiannaths/.gib
set --export PATH /Users/christiannaths/.gib/bin $PATH

fish_add_path -gm /Users/christiannaths/go/bin
