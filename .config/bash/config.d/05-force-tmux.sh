# force TMUX use
# (tries attaching to non-attached session before creating new one)
if [[ -x $(command -v tmux) ]]; then
    test -z "$TMUX" && test -z "$VCSH_DIRECTORY" && \
      (tmux ls | grep -vq attached && tmux -2 at \
            || tmux -2 new-session -s $USER-`date +%Y%m%d%H%M`)
fi
