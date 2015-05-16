# Chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.1

# Environment
export EDITOR='subl -w'

# Bash Prompt
export PS1="\n\[\033[0;37m\][\w] \[\033[0;93m\]» \[\033[0;37m\]"
export CLICOLOR=1
export TERM=xterm-256color

# Docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/christiannaths/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# PATH
# moved this to /etc/bashrc
# PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"
#
# Git Completion script: https://github.com/mm53bar/dotfiles/blob/master/bash_profile.d/git-completion.sh
source ~/.git-completion.sh

# Alias'
alias ls='ls -la'

alias gs='git status'
alias gl='git log'
alias ga='git add --all'
alias gc='git commit'

rake() {
  bin/rake $1
}


gcm(){
  git add --all
  git commit -am "$1"
}

gp(){
  git pull ${1:-origin} ${2:-master}
}

gco(){
  git checkout $1
}

gbn(){
  git checkout -b $1
}

gr(){
  git rebase master
}


alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

# Functions
pr(){
  PROJECT_PATH=`find ~/Projects -name "$1*"`
  # echo $PROJECT_PATH
  # echo "$PROJECT_PATH"
  # STR="Hello World!"
  echo $PROJECT_PATH
  # open "$PROJECT_PATH"
  # subl "$PROJECT_PATH"
  cd "$PROJECT_PATH"
}

server() {
  open "http://localhost:8000" && python -m SimpleHTTPServer
}

winzip(){
  if [ -e $1.zip ]
  then
    rm $1.zip
  fi

  if [ -z "$2" ]
  then
    # No second argument, use original directory name
    zip -r -X $1 $1 -x\*.DS_Store
  else
    # Second argument, use specified directory name
    echo "Copying $1 to $2"
    cp -r $1 $2
    echo "Zipping up $2"
    zip -r -X $2 $2 -x\*.DS_Store
    echo "Removing unessesary $2 directory"
    rm -r $2
  fi

}

base64-encode() {
  openssl base64 < "$1" | tr -d '\n' | pbcopy
  echo "copied to clipboard"
}

sass-watch(){
  sass --watch --line-numbers --style compact .:.
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Auto venv
source ~/.scripts/virtualenv-auto-activate.sh
