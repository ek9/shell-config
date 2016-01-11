#!/bin/bash
## home-bin.sh
# This script will append $HOMEBIN variable set below to your PATH automatically
# Note: it will only do it if directory exists and is not set in your path

# Set local bin directory
HOMEBIN="$HOME/.local/bin"
# append $HOMEBIN to PATH if directory exists and it is not yet in PATH
# Note: extra check for userid >= 1000 so this works only for standard users
if [[ $UID -ge 1000 ]] && [[ -d $HOMEBIN ]] && [[ -z $(echo $PATH | grep -o $HOMEBIN) ]]; then
    # $HOMEBIN is added to the end of path for security
    export PATH=$PATH:$HOMEBIN
fi

