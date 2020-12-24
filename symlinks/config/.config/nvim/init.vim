" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'derekwyatt/vim-scala', { 'for': ['scala', 'markdown'] }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'markdown', 'eelixir'] }
Plug 'elmcast/elm-vim', { 'for': ['elm', 'markdown'] }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'lpil/gleam.vim', { 'for': 'gleam' }
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'vim-scripts/matchit.zip'

call plug#end()

filetype plugin indent on
filetype plugin on

" Syntax
syntax on

" Turn off syntax for long lines to improve performance
set synmaxcol=320

" Set it to scroll when cursor is # lines from top/bottom
set so=7

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

" Auto read external file changes
set autoread

" Colours
set t_Co=256

" don't redraw when performing macros (for performance)
set lazyredraw

" Default folds are no fun
set nofoldenable

" Indentation, Tabs, Space, Etc "
set wrap

set autoindent
set smartindent

set expandtab       "Always uses spaces instead of tabs
set nojoinspaces    "Don't convert spaces to tabs
set shiftround      "Round spaces to nearest shiftwidth multiple
set smarttab        "Indent instead of tab at start of line

set shiftwidth=2    "An indent is 2 spaces
set softtabstop=2   "Insert 2 spaces when tab is pressed
set tabstop=2       "A tab is 2 spaces

" Highlight fenced code blocks in markdown docs
let g:markdown_fenced_languages = [
      \'clojure',
      \'css',
      \'elixir',
      \'elm',
      \'erlang',
      \'go',
      \'haskell',
      \'html',
      \'javascript',
      \'js=javascript',
      \'json=javascript',
      \'ocaml',
      \'python',
      \'ruby',
      \'rust',
      \'rust,noplaypen=rust',
      \'sass',
      \'scala',
      \'scheme',
      \'sh',
      \'toml',
      \'xml',
      \'yaml',
      \'yml=yaml',
      \]

" No ex mode
nnoremap Q <Nop>

" Let's not accidentally open help all the time
inoremap <F1> <Nop>

" Go pretty
nnoremap gp :Neoformat<CR>

" Plugin: ncm2, enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"let g:python3_host_prog = '/usr/local/bin/python3'
"let g:python_host_prog = '/usr/local/bin/python'

" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
set shortmess+=c

" Plugin: languageclient-neovim
let g:LanguageClient_serverCommands = {
  \ 'typescript': ['typescript-language-server', '--stdio'],
  \ 'rust': ['rust-analyzer'],
  \ 'ruby': ['bundle', 'exec', 'srb', 'tc', '--lsp', '--disable-watchman'],
  \ 'elm': ['elm-language-server', '--stdio'],
  \ 'python': ['pyls'],
  \ 'go': ['gopls']
  \ }

let g:LanguageClient_rootMarkers = {
  \ 'javascript': ['package.json'],
  \ 'typescript': ['package.json'],
  \ 'python': ['Pipfile', 'requirements.txt'],
  \ 'rust': ['Cargo.toml'],
  \ 'elixir': ['mix.exs'],
  \ 'ruby': ['sorbet/config'],
  \ 'elm': ['elm.json'],
  \ 'go': ['go.mod'],
  \ }

let g:LanguageClient_diagnosticsList = 'Location'
let g:LanguageClient_diagnosticsSignsMax = 0
let g:LanguageClient_loggingFile = expand('/tmp/LanguageClient-neovim.log')
