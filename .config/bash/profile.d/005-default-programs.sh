#!/bin/bash

# BROWSER
# set browser to firefox if on X or fallback to elinks
if [ -n "$DISPLAY" ]; then
    command -v firefox >/dev/null 2>&1 && export BROWSER="firefox --ProfileManager"
else
    command -v w3m >/dev/null 2>&1 && export BROWSER="elinks"
fi

# EDITOR
command -v vim >/dev/null 2>&1 && export EDITOR=vim && export VISUAL=vim

# PAGER
export PAGER=less
