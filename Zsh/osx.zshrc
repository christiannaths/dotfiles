alias ls="ls -AGFl"
LSCOLORS=fxFxcxdxCxegedabagacad

alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

FZF_DEFAULT_OPTS='--height 10 --border --inline-info'

pr() {
  DIR=`find ~/Projects -maxdepth 2 -type d -print 2> /dev/null | grep $1 | fzf` \
    && cd "$DIR"
}
