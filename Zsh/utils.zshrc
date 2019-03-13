FZF_DEFAULT_OPTS='--height 10 --border --inline-info'

pr() {
  DIR=`find ~/Projects -maxdepth 2 -type d -print 2> /dev/null | grep $1 | fzf` \
    && cd "$DIR"
}
