## ek9/shell-config - https://github.com/ek9/shell-config
## .zshrc
## This file is executed by interactive (non-)login zsh shell

# source all files in .config/shell/config.d
emulate sh -c 'source ~/.config/shell/config.d/*'

# enable antigen
source .config/mr/repo.d/antigen/antigen.zsh

# source all files in .config/shell/config.d
source ~/.config/zsh/config.d/*

# Tell Antigen that you're done.
antigen apply
