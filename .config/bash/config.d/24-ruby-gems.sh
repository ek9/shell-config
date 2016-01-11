# continue only if ruby is installed
#command -v ruby >/dev/null 2>&1 || exit 0
# continue only if rvm isn't setup
#[ -n "$(type -t rvm)" ] && [ "$(type -t rvm)" == function ] && exit 0

# make sure bundler installs gems in user directory and not system-wide
# system wide gems should be managed via your distribution's package
# manager
#export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# apppend user's gems to PATH if directory exists and it is not yet in PATH
#GEMBIN="$(ruby -e 'print Gem.user_dir')/bin"
#if [[ $UID -ge 1000 && -d $GEMBIN && -z $(echo $PATH | grep -o $GEMBIN) ]]
#then
    #export PATH=$PATH:$GEMBIN
#fi
