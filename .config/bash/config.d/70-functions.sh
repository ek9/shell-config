#!/usr/bin/env bash
## ek9/dotfiles - https://github.com/ek9/dotfiles
## 70-functions.sh
## Useful bash functions for cli use
function eachdir() {
  for dir in $PWD/*
  do
      if [ -d $dir ]
      then
          (cd $dir && $*)
      fi
  done
}

function eachfile() {
  for file in $PWD/*
  do
      if [ -f $file ]
      then
          ($* $file)
      fi
  done
}

function sedfiles() {
    if [[ -z $1 ]] || [[ -z $2 ]]; then
        echo "Usage: sedfiles <from> <to>"
    else
        echo find . -type f -exec sed -i \'s/$1/$2/g\' {} \;
        find . -type f -exec sed -i \'s/$1/$2/g\' {} \;
    fi
}

# backup file(s) quick
bkp() {
    date=$(date +%Y%m%d%H%M)
    for f in "$@"
        do cp -a "$f" "$f".bkp$date
    done
}

command_exists() {
    command -v "$1" >/dev/null 2>&1;
}

function git-ignore-untracked() {
    echo "$(git status --porcelain | grep '^??' | cut -c4-)" >>.gitignore
}

function color_test {
  #   Daniel Crisman's ANSI color chart script from
  #   The Bash Prompt HOWTO: 6.1. Colours
  #   http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
  #
  #   This function echoes a bunch of color codes to the
  #   terminal to demonstrate what's available.  Each
  #   line is the color code of one forground color,
  #   out of 17 (default + 16 escapes), followed by a
  #   test use of that color on all nine background
  #   colors (default + 8 escapes).
  #

  T='gYw'   # The test text

  echo -e "\n         def     40m     41m     42m     43m     44m     45m     46m     47m";

  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
             '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
             '  36m' '1;36m' '  37m' '1;37m';

    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "

    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
}
