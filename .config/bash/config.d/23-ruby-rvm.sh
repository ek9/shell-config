# add rvm to end of path
#RVMPATH="$HOME/.rvm/bin"
#if [[ $UID -ge 1000 && -d $RVMPATH && -z $(echo $PATH | grep -o $RVMPATH) ]]; then
#    export PATH="$PATH:$RVMPATH" # Add RVM to PATH for scripting
#fi

# source RVM if it is installed
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

