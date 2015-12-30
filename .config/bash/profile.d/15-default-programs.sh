# BROWSER
# set browser to firefox if on X or fallback to w3m
if [ -n "$DISPLAY" ]; then
    command -v firefox >/dev/null 2>&1 && export BROWSER=firefox
else
    command -v w3m >/dev/null 2>&1 && export BROWSER="w3m -cookie"
fi

# EDITOR
command -v vim >/dev/null 2>&1 && export EDITOR=vim && export VISUAL=vim

# PAGER
export PAGER=less
