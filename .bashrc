#
# ~/.bashrc
# This file is executed when an interactive non-login bash shell is invoked

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

echo "~/.bashrc"

echo ".config/bash/config.d/*"

# Load config files from $HOME/.config/bash/config.d
if test -d $HOME/.config/bash/config.d/; then
	for config in $HOME/.config/bash/config.d/*.sh; do
		test -r "$config" && . "$config"
	done
	unset config
fi

