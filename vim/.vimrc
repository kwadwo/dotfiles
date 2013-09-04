set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'plasticboy/vim-markdown'
" /Bundles

filetype plugin indent on

set laststatus=2
set t_Co=256
" Configure airline to look pretty
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline#extensions#paste#symbol = 'ρ'
let g:airline#extensions#paste#symbol = 'Þ'
let g:airline#extensions#paste#symbol = '∥'
let g:airline#extensions#whitespace#symbol = 'Ξ'

let g:vim_markdown_folding_disabled=1

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set magic " unbreak vim's regex implementation

set number
set scrolloff=3

set ttyfast
set ruler
set nowrap

set ignorecase
set smartcase

" Search as you type, highlight results
set incsearch
set showmatch
set hlsearch

syntax on
let mapleader = ","
nnoremap \<space> :noh<cr> " Clear higlighting
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " Trim trailing spaces
inoremap jj <ESC>
nnoremap <tab> %
vnoremap <tab> %
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>ft Vatzf " Reselect pasted text
inoremap <C-c> <ESC>
inoremap <C-c>h 4h4x
vnoremap < <gv " Reselect scooted lines
vnoremap > >gv " !!
cmap w!! %!sudo tee > /dev/null % " use w!! to write file as root
