if status is-interactive
# Commands to run in interactive sessions can go here
end

set -gx EDITOR nano

alias ls='ls -laF --color=auto'
alias grep='grep --color=auto'
alias gs='git status'
alias gaa='git add .'
alias code='zed .'

zoxide init fish | source
