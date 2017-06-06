## ek9/shell-config - https://github.com/ek9/shell-config
## 05-programs.sh
## This file sets up custom shell programs

# setup custom programs
if [[ -x $(command -v vim) ]]; then
    export EDITOR=vim
    export VISUAL=vim
    export FCEDIT=vim
fi
[[ -x $(command -v elinks) ]] && export BROWSER="elinks"

export PAGER=less
export VIEWER=$PAGER
export SYSTEMD_PAGER=$PAGER
export LESSHISTFILE=-
export LESS='-R'
export TIME_STYLE="long-iso"


