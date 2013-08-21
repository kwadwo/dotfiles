set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'

filetype plugin indent on

set laststatus=2
set t_Co=256

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set magic

set number
set relativenumber
set scrolloff=3

set ttyfast
set ruler
set nowrap

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch

syntax on
let mapleader = ","
nnoremap <leader>l :tabNext<cr>
nnoremap <leader>h :tabprevious<cr>
nnoremap \<space> :noh<cr>
inoremap jj <ESC>
nnoremap <tab> %
vnoremap <tab> %
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>ft Vatzf
inoremap <C-c> <ESC>
vnoremap < <gv
vnoremap > >gv
cmap w!! %!sudo tee > /dev/null %
