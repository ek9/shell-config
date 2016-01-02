" ~/.vimrc


" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Bundle 'gmarik/vundle'

"" BUNDLES

"" CORE
Bundle 'tpope/vim-sensible'
Bundle 'file:///srv/git/nomadsys/vim-config'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'


"" THEMING
Bundle 'altercation/vim-colors-solarized'
Bundle 'file:///srv/git/nomadsys/vim-auto-solarize'

"" STATUSBAR
Bundle 'itchyny/lightline.vim'
"Bundle 'mkitt/tabline.vim'
Bundle 'kien/tabman.vim'


"" DEV
" git wrapper
Bundle 'tpope/vim-fugitive'
" syntax checking for vim
Bundle 'scrooloose/syntastic'
Bundle 'myint/syntastic-extras'
" easy way to comment lines (Ctrl+C, Ctrl+X)
Bundle 'vim-scripts/comments.vim'
" provides support for .env and Procfile
Bundle 'tpope/vim-dotenv'
" Use cs macro to surrount lines with tags
Bundle 'tpope/vim-surround'
" :StripWhitespace
Bundle 'ntpeters/vim-better-whitespace'
" Alignment and filtering via :Tab
Bundle 'godlygeek/tabular'

"" SALT
" faster yaml syntx highlight
Bundle 'stephpy/vim-yaml'
" vim for editing salt files
Bundle 'saltstack/salt-vim'

" syntax
" web development
"Bundle 'pangloss/vim-javascript'
"Bundle 'greatghoul/vim-web-indent'

" php
"Bundle 'rayburgemeestre/phpfolding.vim'
"Bundle 'stephpy/vim-php-cs-fixer'
"Bundle 'stephpy/vim-phpdoc'
"Bundle 'afternoon/vim-phpunit'
" symfony framework
"Bundle 'evidens/vim-twig'
"Bundle 'docteurklein/vim-symfony'

au BufNewFile,BufRead *.yaml,*.yml,*.sls so ~/.vim/bundle/vim-yaml/after/ftplugin/yaml.vim
set expandtab
