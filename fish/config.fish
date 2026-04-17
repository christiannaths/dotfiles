set -gx EDITOR nano
set -gx LESS -R

alias ls='ls -laF --color=auto'
alias grep='grep --color=auto'
alias gs='git status'
alias gaa='git add .'
alias code='zed .'

fish_add_path -gm /Users/christiannaths/go/bin
fish_add_path -gm /Users/christiannaths/.local/share/mise/shims

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
