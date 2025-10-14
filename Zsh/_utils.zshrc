alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

FZF_DEFAULT_OPTS='--height 10 --border --inline-info'

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
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


makegif() {
  echo "Converting $1 to a gif...";

  ffmpeg -t 3 -i $1 -filter_complex "[0:v] palettegen" $1.png;
  ffmpeg -i $1 -i $1.png -filter_complex "[0:v] fps=10,scale=720:-1 [new];[new][1:v] paletteuse" $1.gif;
  rm $1.png;

  echo "Done. Saved as $1.gif";
}

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
