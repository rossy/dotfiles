set nocompatible

set autoread

set nohlsearch
set incsearch

set shortmess+=I

set splitbelow
set splitright

set scrolloff=5
set sidescrolloff=5

set wildmenu
set wildmode=list:longest,full

set virtualedit=block
set noerrorbells visualbell t_vb=
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set mouse=a
set autoindent

set list
set listchars=tab:»\ ,trail:·,eol:$

set laststatus=2
set encoding=utf-8
set t_Co=256
set colorcolumn=+1,80,120

set number
set numberwidth=6
set cursorline

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set shiftround
set title
set hidden
set noshowmode

set noexrc
set backup

if exists("&undodir")
	set undodir=~/.vim/undo//
endif
if exists("&backupdir")
	set backupdir=~/.vim/backups//
endif
if exists("&directory")
	set directory=~/.vim/swaps//
endif

set undofile
set undolevels=1000
set undoreload=10000

map Q gq
inoremap <C-U> <C-G>u<C-U>

syntax on

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Valloric/YouCompleteMe'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'ciaranm/detectindent'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'groenewege/vim-less'

let g:solarized_termcolors=16
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1
let g:solarized_contrast='high'
let g:solarized_visibility='low'
let g:Powerline_colorscheme='solarized16'
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = [' ', '|', ' ', '|']
let g:ycm_autoclose_preview_window_after_completion = 1

set background=dark
colorscheme solarized

if has('win32unix')
	source ~/.vimrc.cygwin
endif

if filereadable('~/.vimrc.local')
	source ~/.vimrc.local
endif

filetype plugin indent on

autocmd BufReadPost * :DetectIndent
