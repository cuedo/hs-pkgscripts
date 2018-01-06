#!/bin/bash
if [ "$WEEDER_ARGUMENTS" = "" ]; then
    WEEDER_ARGUMENTS=.
fi
curl -sL https://raw.github.com/ndmitchell/weeder/master/misc/travis.sh | sh -s $WEEDER_ARGUMENTS
