#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 30-aliases.sh
## shell agnostic aliases

# general
alias grep='grep --color=always'
alias less='less -Xr'
alias dmesg='dmesg -PHL'
alias ls='ls --color=auto --group-directories-first --human-readable -x -v'
alias ll='ls --color=auto --group-directories-first --human-readable -x -v -l'

alias IP='dig myip.opendns.com @resolver1.opendns.com +short'
ip2loc() {
    echo geoiplookup $1 | awk -F' ' '{gsub(/,/,""); print $4}'
}

command -v colordiff >/dev/null && alias diff='colordiff'

# cp and mv replace with vcp and vmv (if exists)
command -v vcp >/dev/null && alias cp='vcp --progress-bar'
command -v vmv >/dev/null && alias mv='vmv --progress-bar'

command -v pygmentize >/dev/null && alias lesc='LESS="-R" LESSOPEN="|pygmentize -g %s" less' 

# mkdir and cd
alias mkcd='mkdir -p $0 && cd $0'
#alias tmux="tmux -2"
# vim split multiple files vertically
alias vim='vim -O'

alias git-fake='GIT_AUTHOR_DATE=$GIT_DATE GIT_COMMITTER_DATE=$GIT_DATE git commit'
alias git-fmerge='GIT_AUTHOR_DATE=$GIT_DATE GIT_COMMITTER_DATE=$GIT_DATE git merge --no-ff'
alias git-fpick='GIT_AUTHOR_DATE=$GIT_DATE GIT_COMMITTER_DATE=$GIT_DATE git cherry-pick'


## ARCHLINUX ALIASES
if [ -f "/etc/arch-release" ]; then
    # pacman remove obsolete
    alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
fi

## DEBIAN ALIASES
if [ -f "/etc/debian_version" ]; then
    alias apt-get='sudo apt-get'
fi

alias upt="uptime | sed 's/.*up \(.*\),.*user.*/\1/'"

## git aliases
alias gs='git status'
alias gd='git wdiff'
alias ga='git add'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gm='git commit'
alias gma='git commit --amend'
alias gp='git push'
alias gpt='git push --tags'
