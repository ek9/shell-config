# force TMUX use
# (tries attaching to non-attached session before creating new one)
if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && \
      (tmux ls | grep -vq attached && tmux -2 at \
            || tmux -2 new-session -n$USER -s$USER@$HOSTNAME-`date +%s-%N`)
fi
