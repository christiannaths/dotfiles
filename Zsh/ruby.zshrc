# Chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# To install RMagick
# https://stackoverflow.com/questions/9050419/cant-install-rmagick-2-13-1-cant-find-magickwand-h
# brew install imagemagick
# brew install pkg-config
export PKG_CONFIG_PATH="/usr/local/bin/pkg-config:$PKG_CONFIG_PATH"
