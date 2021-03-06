#!/usr/bin/env bash
## ek9/shell-config - https://github.com/ek9/shell-config
## .bash_profile
## This file is executed by an interactive login bash shell

# always load .profile
[[ -f $HOME/.profile ]] && . $HOME/.profile

# always load .bashrc
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc


[[ -s "$HOME/.local/share/rvm/scripts/rvm" ]] && source "$HOME/.local/share/rvm/scripts/rvm" # Load RVM into a shell session *as a function*
