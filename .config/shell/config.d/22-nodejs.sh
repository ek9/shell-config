#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 22-nodejs.sh
## Configures node, with either nvm or npm global support (no sudo)

NVM_DIR="${HOME}/.local/share/nvm"
NPM_PACKAGES="${HOME}/.local/share/npm"
# try to initialize nvm first
if [[ $UID -ge 1000 && -d "$NVM_DIR" ]]; then
    nvm(){
    if type nvm >/dev/null 2>&1 && [ -f "$NVM_DIR/nvm.sh" ] ; then
        #if nvm not loaded
        #echo "nvm init loading..."
        [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm "$@" #loads nvm
    else
        nvm "$@"
    fi
	}
elif [[ $UID -ge 1000 && -d "$NPM_PACKAGES/bin"
    && -z $(echo $PATH | grep -o "$NPM_PACKAGES/bin") ]]; then
    # npm global packages without sudo
    # NOTE: you need make sure this line is in `~/.npmrc`:
    # prefix=${HOME}/.local/share/npm

    # update PATH to include npm bin directory
    export PATH="$NPM_PACKAGES/bin:$PATH" # Add node_modules/bin to PATH

    # update MANPATH to include npm man pages
    unset MANPATH
    export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
fi


