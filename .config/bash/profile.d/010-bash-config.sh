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

export HISTCONTROL=ignorespace:erasedups
export HISTSIZE=2000
# do not store bash history across reboots
export HISTFILE=/tmp/bash/history

