# history completion (bound to arrow up/down keys)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# autocd if only directory typed without cd command
shopt -s autocd

