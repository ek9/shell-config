## ek9/shell-config - https://github.com/ek9/shell-config
## 50-keychain.sh
## This file sets up shell environment for the shell

# start keychain if not started
if [[ -x $(command -v keychain) ]]; then
    eval $(keychain --eval)
fi

