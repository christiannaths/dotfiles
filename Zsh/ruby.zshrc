# Ruby was installed with Homebrew
# brew install ruby
# If you need to have ruby first in your PATH run:
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# Ruby was installed with ruby-install
# ruby-install ruby-2.6.3
# export PATH="/Users/christiannaths/.rubies/ruby-2.6.3/bin/ruby:$PATH"
# export LDFLAGS="-L/Users/christiannaths/.rubies/ruby-2.6.3/lib"
# export CPPFLAGS="-I/Users/christiannaths/.rubies/ruby-2.6.3/include"

# Chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# To install RMagick
# https://stackoverflow.com/questions/9050419/cant-install-rmagick-2-13-1-cant-find-magickwand-h
# brew install imagemagick
# brew install pkg-config
export PKG_CONFIG_PATH="/usr/local/bin/pkg-config:$PKG_CONFIG_PATH"
