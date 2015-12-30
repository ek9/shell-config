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

# backup file(s) quick
bkp() {
    date=$(date +%Y%m%d%H%M)
    for f in "$@"
        do cp -a "$f" "$f".bkp$date
    done
}
function git-ignore-untracked() {
    echo "$(git status --porcelain | grep '^??' | cut -c4-)" >>.gitignore
}
