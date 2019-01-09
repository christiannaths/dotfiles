alias ls="ls -AGFl"
LSCOLORS=fxFxcxdxCxegedabagacad

alias showall='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hideall='defaults write com.apple.Finder AppleShowAllFiles NO'

FZF_DEFAULT_OPTS='--height 10 --border --inline-info'

pr() {
  DIR=`find ~/Projects -maxdepth 2 -type d -print 2> /dev/null | grep $1 | fzf` \
    && cd "$DIR"
}

# https://apple.stackexchange.com/questions/230719/how-to-disable-app-relaunch-and-window-restore-in-el-capitan-on-reboot
# Make the file owned by root (otherwise the OS will just replace it)
# sudo chown root ~/Library/Preferences/ByHost/com.apple.loginwindow*
# Remove all permissions, so it can't be read or written to
# sudo chmod 000 ~/Library/Preferences/ByHost/com.apple.loginwindow*
