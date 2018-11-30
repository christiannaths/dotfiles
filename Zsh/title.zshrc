function set-title () {
  DISABLE_AUTO_TITLE="true"
  TAB_TITLE=$1
  echo -e "\033]0;${TAB_TITLE:?please specify a title}\007"
}

function unset-title () {
  DISABLE_AUTO_TITLE="false"
}
