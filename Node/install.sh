#!/bin/bash

HERE="$(cd "$(dirname "$0")" && pwd)"
nodejs_exists=$(which code)

if [[ -z "${nodejs_exists}" ]]; then
    echo -e "Couldn't find nodejs. Try running 'sudo apt install nodejs' and make sure it succeeds before continuing. \n"
else
    npm install -g n
    n lts
    cat $HERE/packages.txt | grep -v '^#' | xargs -L1 npm install -g
fi
