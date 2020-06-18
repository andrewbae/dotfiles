set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=2 
set expandtab
set smarttab
set smartindent
set paste
set number
set hlsearch
set t_Co=256
set backspace=indent,eol,start
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set title
set showmatch
set ruler
set ignorecase

filetype off
syntax on
highlight Comment ctermfg=green

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

map <C-t> :NERDTreeToggle<CR>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
call plug#end()
