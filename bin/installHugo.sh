#!/bin/bash
set -euo pipefail

export HUGO_VERSION="0.88.1"

if [ `uname` = "Linux" ]; then
    export HUGO_OS="Linux-64bit"
elif [ `uname` = "Darwin" ]; then
    export HUGO_OS="macOS-64bit"
else
    echo 'This script only works on Linux and Mac os'
    exit 1
fi

cd "$( dirname "$0" )/../" && pwd

if ! command -v COMMAND &> /dev/null
then
  wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${HUGO_OS}.tar.gz

  rm -rf hugo
  tar -xzf hugo_${HUGO_VERSION}_${HUGO_OS}.tar.gz hugo
  rm hugo_${HUGO_VERSION}_${HUGO_OS}.tar.gz
else
  echo 'Hugo is already installed in this environment'
fi

hugo version
