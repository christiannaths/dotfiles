#!/bin/bash

HERE="$(cd "$(dirname "$0")" && pwd)"
nodejs_exists=$(which node)

if [[ -z "${nodejs_exists}" ]]; then
    echo -e "Couldn't find nodejs. Try running 'brew install node' and make sure it succeeds before continuing. \n"
else
    npm install -g nave
    nave install lts
    cat $HERE/packages.txt | grep -v '^#' | xargs -L1 npm install -g
fi
