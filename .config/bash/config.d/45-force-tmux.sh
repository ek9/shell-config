# force TMUX use
# (tries attaching to non-attached session before creating new one)
if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && test -z "$GIT_DIR" && \
      (tmux ls | grep -vq attached && tmux -2 at \
            || tmux -2 new-session -s $USER-`date +%Y%m%d%H%M`)
fi
