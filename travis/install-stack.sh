#!/usr/bin/env sh
mkdir -p ~/.local/bin
export PATH=$HOME/.local/bin:$PATH

# OS X tar behaves differently to GNU tar
if [[ "$TRAVIS_OS_NAME" == "osx" ]];
  then travis_retry curl -skL "${STACK_PKG_URL}" | tar xz --strip-components=1 --include '*/stack' -C ~/.local/bin;
  else travis_retry curl -sL  "${STACK_PKG_URL}" | tar xz --wildcards --strip-components=1 -C ~/.local/bin '*/stack';
fi

stack --version
travis_wait stack --no-terminal setup
