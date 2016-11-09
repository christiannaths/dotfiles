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
alias 🚀='bin/deploy'
alias gh='git open'

cdm() {
  mkdir -p $1 && cd $1
}

rake() {
  bin/rake $1
}

gac(){
  git add --all
  git commit -a
}

gcm(){
  git add --all
  git commit -am "$1"
}

gpll(){
  git pull ${1:-origin} ${2:-master}
}

gpsh(){
  git push ${1:-origin} ${2:-master}
}

gco(){
  git checkout $1
}

gcob(){
  git checkout -b $1
}

gr(){
  git rebase master
}

gittime(){
  git filter-branch -f --env-filter \
    "if [ $GIT_COMMIT = $1 ]
     then
         export GIT_AUTHOR_DATE='$2'
         export GIT_COMMITTER_DATE='$2'
     fi"
}


alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

# Functions
pr(){
  ~/.bin/pr $1
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
    # zip -r -X $1 $1.zip -x\*.DS_Store
    zip -r -X $1.zip $1 -x\*.DS_Store
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

alias urldecode='python -c "import sys, urllib as ul; \
    print ul.unquote_plus(sys.argv[1])"'

alias urlencode='python -c "import sys, urllib as ul; \
    print ul.quote_plus(sys.argv[1])"'

sass-watch(){
  sass --watch --line-numbers --style compact .:.
}

nuke-npm(){
  rm -fr node_modules/
  npm cache clean
  npm install
}

download-site(){
  wget -mkEpnp $1
}


# wget \
#      --recursive \
#      --no-clobber \
#      --page-requisites \
#      --html-extension \
#      --convert-links \
#      --restrict-file-names=windows \
#      --domains example.com \
#      --no-parent \
#          www.example.com/path/to/site

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Auto venv
source ~/.scripts/virtualenv-auto-activate.sh

# Android SDK via Homebrew
export ANDROID_HOME=/usr/local/opt/android-sdk

# The next line updates PATH for the Google Cloud SDK.
source '/Users/christiannaths/.gcloud/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/christiannaths/.gcloud/google-cloud-sdk/completion.bash.inc'

# Git Ignore Generator
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Go path
export GOPATH=$HOME/.go
export PATH="${GOPATH//://bin:}/bin:$PATH"

# Docker
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/christiannaths/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
export ETCDCTL_PEERS=192.168.99.100

alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-rm-all='docker rm $(docker ps -a -q)'

# React Native
react-native-clear-android-build(){
  rm -r android/build/*
  rm -r android/app/build/*
  rm -fr android/.gradle/*
}

react-c(){
  COMPONENT_DIR=./src/components
  mkdir -p $COMPONENT_DIR/$@
  cp ~/.react-c/templates/index.js $COMPONENT_DIR/$@/
  cp ~/.react-c/templates/style.css $COMPONENT_DIR/$@/
  echo "Generated a component in $COMPONENT_DIR/$@/"
}

shortcuts(){
  echo -e 'gs'
  echo -e 'gl'
  echo -e 'ga'
  echo -e 'gc'
  echo -e '🚀'
  echo -e 'rake'
  echo -e 'gac'
  echo -e 'gcm'
  echo -e 'gpll'
  echo -e 'gpsh'
  echo -e 'gco'
  echo -e 'gcob'
  echo -e 'gr'
  echo -e 'showall'
  echo -e 'hideall'
  echo -e 'pr'
  echo -e 'server'
  echo -e 'winzip'
  echo -e 'base64-encode'
  echo -e 'urldecode'
  echo -e 'urlencode'
  echo -e 'sass-watch'
  echo -e 'react-native-clear-android-build'
  echo -e 'nuke-npm'
  echo -e 'docker-stop-all'
  echo -e 'docker-rm-all'
  echo -e 'download-site'
}

export PATH="$HOME/.yarn/bin:$PATH"
