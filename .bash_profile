#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## .bash_profile
## This file is executed by an interactive login bash shell

# load bash profile files from $HOME/.config/bash/profile.d
if [[ -d "$HOME/.config/bash/profile.d/" ]]; then
	for profile in $HOME/.config/bash/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# always load .profile
[[ -f $HOME/.profile ]] && . $HOME/.profile

# always load .bashrc
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

