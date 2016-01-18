#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 05-force-tmux.sh
## force opening tmux - tries attaching to non-attached session first
if [[ -x $(command -v tmux) ]]; then
    test -z "$TMUX" && test -z "$VCSH_DIRECTORY" && \
      (tmux ls | grep -vq attached && tmux -2 at \
            || tmux -2 new-session -c 'tmux choose-session')
fi
