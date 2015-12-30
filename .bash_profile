#
# ~/.bash_profile
# This file is executed when an interactive login bash shell is invoked

# Load profiles from $HOME/.config/bash/profile.d
if test -d $HOME/.config/bash/profile.d/; then
	for profile in $HOME/.config/bash/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# always source ~/.bashrc (if file exists)
[[ -f ~/.bashrc ]] && . ~/.bashrc

