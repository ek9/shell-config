#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 10-config.sh
## bash shell customization

### options {{{
shopt -s autocd         # change to named directory
#shopt -s cdable_vars    # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell        # autocorrects cd misspellings
shopt -s checkwinsize   # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist        # save multi-line commands in history as single line
shopt -s histappend     # append to (not overwrite) the history file
shopt -s histreedit     # re-edit a failed history substitution
shopt -s histverify
shopt -s expand_aliases # expand aliases
shopt -s progcomp       # programmable completion
shopt -s hostcomplete   # attempt hostname expansion when @ is at the beginning ofa word

#shopt -s dotglob        # include dotfiles in pathname expansion
#shopt -s extglob        # enable extended pattern-matching features
#shopt -s globstar       # recursive globbing
#shopt -s nocaseglob     # pathname expansion will be treated as case-insensitive

# bash completion
set show-all-if-ambiguous on

# visual bell
set bell-style visible

# disable Ctrl-S / Ctrl-Q combination
stty -ixon
#}}}

### history {{{
# A colon-separated list of values controlling how commands are saved on the
# history list:
# - If the list of values includes ignorespace, lines which begin with a space
#   character are not saved in the history list.
# - A value of ignoredups causes lines matching the previous history entry to
#   not be saved.
# - A value of ignoreboth is shorthand for ignorespace and ignoredups.
# - A value of erasedups causes all previous lines matching the current line to
#   be removed from the history list before that line is saved.
# Any value is ignored.
export HISTCONTROL=ignoreboth:erasedups

# limit history to 2000 lines
export HISTSIZE=2000
unset HISTFILESIZE

# do not store bash history across reboots
export HISTFILE=/tmp/bash/history

# share history across terminals
#exportPROMPT_COMMAND='history -a; history -c; history -r'

# history completion (bound to arrow up/down keys)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# }}}

### theme {{{
# base16-shell theme
BASE16_SHELL="~/.config/mr/repo.d/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
# }}}
