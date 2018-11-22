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
