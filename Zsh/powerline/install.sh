HERE=${0:a:h}

echo $HERE

if [[ ! -a $HERE/PowerlineSymbols.otf ]]; then
  wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf  -P $HERE
fi

if [[ ! -a $HERE/10-powerline-symbols.conf ]]; then
  wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -P $HERE
fi

if [[ ! -a $HERE/.installed ]]; then
  zsh $HERE/fonts/install.sh
  echo  $(date +%s) > $HERE/.installed
fi
