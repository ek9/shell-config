#!/usr/bin/env bash
## ek9/shell-config - https://github.com/ek9/shell-config
## 65-prompt.sh
## bash prompt customization (liquitprompt + ohmygit)

LIQUIDPROMPT_DIR=$HOME/.config/vcsh/repo.d/liquidprompt

if [[ -f "$LIQUIDPROMPT_DIR/liquidprompt" ]]; then
    source "$LIQUIDPROMPT_DIR/liquidprompt"
fi

