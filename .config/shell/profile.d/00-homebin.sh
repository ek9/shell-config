## ek9/shell-config - https://github.com/ek9/shell-config
## 00-homebin.sh
## Sets up local bin directory 

# enable local bin dir
HOMEBIN="$HOME/.local/bin"
# append $HOMEBIN to PATH if directory exists and it is not yet in PATH
if [[ $UID -ge 1000 ]] && [[ -d $HOMEBIN ]] && [[ -z $(echo $PATH | grep -o $HOMEBIN) ]]; then
    export PATH=$PATH:$HOMEBIN
fi

