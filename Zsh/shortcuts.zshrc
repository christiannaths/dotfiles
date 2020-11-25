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
