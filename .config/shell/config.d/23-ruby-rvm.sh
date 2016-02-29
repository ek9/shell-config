#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 23-ruby-rvm.sh
## source RVM if it is installed
if [[ -f "$HOME/.rvm/scripts/rvm" ]]; then
    source "$HOME/.rvm/scripts/rvm"
    export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
elif command -v gem >/dev/null; then

    # apppend user's gems to PATH if directory exists and it is not yet in PATH
    GEMBIN="$(ruby -e 'print Gem.user_dir')/bin"
    if [[ $UID -ge 1000 && -d $GEMBIN && -z $(echo $PATH | grep -o $GEMBIN) ]]
    then
        export PATH=$PATH:$GEMBIN
        export GEM_HOME=$GEMBIN
    fi
fi

