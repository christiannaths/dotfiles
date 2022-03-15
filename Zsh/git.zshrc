# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
# '~/.zsh/_git'
fpath=(~/.zsh $fpath)

alias gs='git status'
alias gcm='git commit -am'
alias gbr='git branch'
alias gch='git checkout'
alias gpr='git push -u origin HEAD && git open'

gi() { curl -L -s https://www.gitignore.io/api/$@; }

function git-timesheet() {
  readonly from=${1:?Please specify a date to start from, like "Mar 1"}
  readonly to=${2:?Please specify a date to end at, like "Apr 30"}
  readonly author=${3:-"christiannaths"}
  readonly filename=${4:-$(echo "${HOME}/Desktop/${author}-${from}-${to}-commits.csv" | sed 's/ /-/g')}

  git log --author="${author}" --since="${from} 0:00:00 2022 -0000" --until="${to} 23:59:59 2022 -0000" --reverse --format="format:%ad, \"%s\"" --date="format:%Y-%m-%d" > $filename
  code "${filename}"
}
