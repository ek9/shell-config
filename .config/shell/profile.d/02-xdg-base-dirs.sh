## ek9/shell-config - https://github.com/ek9/shell-config
## 02-xdg-base-dirs.sh
## Makes sure XDG base dirs are set + move config dir to XDG home for some apps

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
#export XAUTHORITY="$XDG_RUNTIME_DIR"/X11/Xauthority

