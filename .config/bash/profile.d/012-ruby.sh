# continue only if ruby is installed
command -v ruby >/dev/null 2>&1 || exit 0

# make sure bundler installs gems in user directory and not system-wide
# system wide gems should be managed via your distribution's package
# manager
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# prepend user's gems to PATH if directory exists and it is not yet in PATH
gempath="$(ruby -e 'print Gem.user_dir')/bin"
if [[ $UID -ge 1000 && -d $gempath && -z $(echo $PATH | grep -o $gempath) ]]; then
    export PATH=$gempath:$PATH
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

