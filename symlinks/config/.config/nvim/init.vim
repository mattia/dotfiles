" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'elmcast/elm-vim', { 'for': ['elm', 'markdown'] }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'lpil/gleam.vim', { 'for': 'gleam' }
"Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'

call plug#end()

filetype plugin indent on
filetype plugin on

" Syntax
syntax on

" Turn off syntax for long lines to improve performance
set synmaxcol=320

" Mouse support
set mouse=a


" Line numbers
set nu
highlight LineNr ctermfg=Brown
set ruler

" Improve backspace deletion behaviour
set backspace=indent,eol,start

" Disable search highlighting by default
set nohlsearch

" Smart case insensitive search
set ignorecase
set smartcase

" / searches before hitting enter
set incsearch
