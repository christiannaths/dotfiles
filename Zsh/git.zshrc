# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
# '~/.zsh/_git'
fpath=(~/.zsh $fpath)

alias gs='git status'
alias gcm='git commit -am'
alias gbr='git branch'
alias gch='git checkout'
alias gpr='git push -u origin HEAD && git open'

gi() { curl -L -s https://www.gitignore.io/api/$@; }
