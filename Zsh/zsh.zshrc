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

eval "$(pyenv init --path)"


makegif() {
  echo "Converting $1 to a gif...";

  ffmpeg -t 3 -i $1 -filter_complex "[0:v] palettegen" $1.png;
  ffmpeg -i $1 -i $1.png -filter_complex "[0:v] fps=10,scale=720:-1 [new];[new][1:v] paletteuse" $1.gif;
  rm $1.png;

  echo "Done. Saved as $1.gif";
}
