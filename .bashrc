#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## .bashrc
## This file is executed by interactive non-login bash shell

# if not running interactively - don't do anything
[[ $- != *i* ]] && return

# load bash config files from $HOME/.config/bash/config.d
if test -d "$HOME/.config/bash/config.d/"; then
	for bash_config in $HOME/.config/bash/config.d/*.sh; do
		test -r "$bash_config" && . "$bash_config"
	done
	unset bash_config
fi

