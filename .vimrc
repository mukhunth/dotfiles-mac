"SETTINGS:
set nocompatible
set ttimeout
set ttimeoutlen=100
set history=200
set wildmode=longest,list,full
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set noshowmode
set showcmd
set number relativenumber
set splitbelow splitright
set clipboard=unnamed
set undofile
set undodir=$HOME/.vim/undo
set mouse=a
map Q gq
filetype plugin indent on
syntax on
autocmd BufReadPost *
 \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
 \ |   exe "normal! g`\""
 \ | endif
autocmd BufWritePre * %s/\s\+$//e

"PLUGINS:
call plug#begin('$HOME/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
call plug#end()

"MAPPINGS:
let mapleader=' '
map <leader>s :nohlsearch <Enter>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"APPEARANCE:
set termguicolors
set background=dark
au VimEnter * hi Normal guibg=NONE ctermbg=NONE
au VimEnter * hi LineNr guibg=NONE ctermbg=NONE
let g:jellybeans_overrides = {'background': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' }}
colorscheme jellybeans
let g:airline_powerline_fonts=1
let g:airline_symbols = {'maxlinenr': ' '}
"let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='base16_vim'
"let g:gruvbox_contrast_dark='hard'
