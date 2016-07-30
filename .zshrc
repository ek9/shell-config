source .config/mr/repo.d/antigen/antigen.zsh

# oh-my-zsh and oh-my-git
antigen-use oh-my-zsh
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# liquidprompt
antigen bundle nojhan/liquidprompt

# Load the theme.
antigen theme liquidprompt

# Tell Antigen that you're done.
antigen apply
