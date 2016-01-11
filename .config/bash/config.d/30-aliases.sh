# general
alias grep='grep --color=auto'
alias less='less -R'
alias dmesg='dmesg -PHL'
alias ls='ls --color=auto --group-directories-first --human-readable -x -v'
alias pkg-update='sudo etckeeper pre-install && sudo pacman -Syu && sudo
etckeeper post-install'

alias IP='dig myip.opendns.com @resolver1.opendns.com +short'
ip2loc() {
    echo geoiplookup $1 | awk -F' ' '{gsub(/,/,""); print $4}'
}

command -v colordiff >/dev/null && alias diff='colordiff'

# cp and mv replace with vcp and vmv (if exists)
command -v vcp >/dev/null && alias cp='vcp --progress-bar'
command -v vmv >/dev/null && alias mv='vmv --progress-bar'

# mkdir and cd
alias mkcd='mkdir -p $0 && cd $0'
#alias tmux="tmux -2"
# vim split multiple files vertically
alias vim='vim -O'

alias git-fake='GIT_AUTHOR_DATE=$GIT_DATE GIT_COMMITTER_DATE=$GIT_DATE git commit'
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
