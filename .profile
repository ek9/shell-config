## ek9/shell-config - https://github.com/ek9/shell-config
## .profile
## This file sets up shell environment for the shell

# load profile files from $HOME/.config/shell/profile.d
if [[ -d "$HOME/.config/shell/profile.d/" ]]; then
	for profile in $HOME/.config/shell/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

