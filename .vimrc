" map
let   mapleader=','
let g:mapleader=','

map <space> /
map <nul> ?

map <leader>pp :setlocal paste!<cr>

map <silent> <leader><cr> :nohlsearch<cr>

"" buffer
map <C-b>a :edit<space>
map <C-b>q :bdelete<cr>
map <C-b>f :bfirst<cr>
map <C-b>l :blast<cr>
map <C-b>n :bnext<cr>
map <C-b>p :bprev<cr>

"" tab
map <C-t>a :tabnew<cr>
map <C-t>q :tabclose<cr>
map <C-t>f :tabfirst<cr>
map <C-t>l :tablast<cr>
map <C-t>n :tabnext<cr>
map <C-t>p :tabprev<cr>

"" window
map <C-w>a :new<cr>
map <C-w>v :vnew<cr>
map <C-w>q :quit<cr>

"" file
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

"" spell
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" filetype
filetype plugin on
filetype indent on

" options
set background=dark

set encoding=utf8
set fileformats=unix

set noerrorbells
set novisualbell

set nobackup
set noswapfile

set ignorecase
set smartcase

set hlsearch
set incsearch
set magic
set showmatch
set matchtime=2

set ruler
set cmdheight=2
set foldcolumn=0
set laststatus=2
set scrolloff=5
set wildmenu
set wildignore=
set wildignore+=*/.git/*

set autoindent
set smartindent

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd Filetype vim setlocal shiftwidth=2 softtabstop=2 tabstop=2

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set hidden

set viminfo^=%

set autoread

set history=100

" syntax
syntax enable

