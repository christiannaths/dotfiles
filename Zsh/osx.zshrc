alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

FZF_DEFAULT_OPTS='--height 10 --border --inline-info'

# Dsiable swipe to go back in Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

function export-env() {
  FILE=.env
  while test $# -gt 0; do
    case "$1" in
      -f=*|--file=*)
        FILE=`echo $1 | sed -e 's/^[^=]*=//g'`
        shift
        ;;
      -f*|--file*)
        shift
        FILE=`echo $1`
        shift
        ;;
      *)
        break
        ;;
    esac
  done

  env $(cat $FILE | grep '^[A-Z]' | xargs) $@
}

function abspath() {
    # generate absolute path from relative path
    # $1     : relative filename
    # return : absolute path
    # From http://stackoverflow.com/a/23002317/514210
    if [[ -d "$1" ]]; then
        # dir
        (cd "$1"; pwd)
    elif [[ -f "$1" ]]; then
        # file
        if [[ $1 == */* ]]; then
            echo "$(cd "${1%/*}"; pwd)/${1##*/}"
        else
            echo "$(pwd)/$1"
        fi
    fi
}


pr() {
  local ESC_HOME=$(printf '%s\n' "$HOME" | sed 's:[][\\/.^$*]:\\&:g')
  local DIRS="$(find ~/Projects -maxdepth 2 -type d -print 2> /dev/null)"
  local FMT_DIRS=$(echo $DIRS | sed "s/$ESC_HOME/\~/")
  local SELECT_DIR=$(echo $FMT_DIRS | grep $1 | fzf)
  local DIR=$(echo $SELECT_DIR | sed "s/\~/$ESC_HOME/")
  cd "$DIR"
}

# https://apple.stackexchange.com/questions/230719/how-to-disable-app-relaunch-and-window-restore-in-el-capitan-on-reboot
# Make the file owned by root (otherwise the OS will just replace it)
# sudo chown root ~/Library/Preferences/ByHost/com.apple.loginwindow*
# Remove all permissions, so it can't be read or written to
# sudo chmod 000 ~/Library/Preferences/ByHost/com.apple.loginwindow*
