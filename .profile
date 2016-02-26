## ek9/dotfiles - https://github.com/ek9/dotfiles
## .profile
## This file sets up shell environment

# enable local bin dir
HOMEBIN="$HOME/.local/bin"
# append $HOMEBIN to PATH if directory exists and it is not yet in PATH
if [[ $UID -ge 1000 ]] && [[ -d $HOMEBIN ]] && [[ -z $(echo $PATH | grep -o $HOMEBIN) ]]; then
    export PATH=$PATH:$HOMEBIN
fi

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

# wine force 32bit mode
export WINEARCH=win32

# --- XDG Base dirs
: ${XDG_CONFIG_HOME:=$HOME/.config}
: ${XDG_CACHE_HOME:=$HOME/.cache}
: ${XDG_DATA_HOME:=$HOME/.local/share}
: ${XDG_RUNTIME_DIR:=/run/user/$UID}

export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME"/gimp
#export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
#export ICEAUTHORITY="$XDG_RUNTIME_DIR"/X11/iceauthority
[[ "$LESSHISTFILE" != "-" ]] && export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export TIGRC_USER="$XDG_CONFIG_HOME"/tig/tigrc
export WINEPREFIX="$XDG_DATA_HOME"/wine
export COMPOSER_HOME="$XDG_CONFIG_HOME"/composer
export COMPOSER_CACHE_DIR="$XDG_CACHE_HOME"/composer
export VAGRANT_HOME="$HOME/.local/share/vagrant"
#export XAUTHORITY="$XDG_RUNTIME_DIR"/X11/Xauthority

# dircolors
[[ -f "$HOME/.config/dir_colors" ]] && eval $(dircolors --sh ~/.config/dir_colors)

# keychain
if [[ -x $(command -v keychain) ]]; then
    eval $(keychain --eval)
fi

# ruby rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to path

# startx on tty1
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  #exec startx -nolisten tcp
  exec xinit -- :1 -nolisten tcp vt$XDG_VTNR
  logout
fi


