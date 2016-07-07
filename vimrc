set nocompatible               " be iMproved
filetype off                   " required!

call vundle#rc()
Plugin 'dracula/vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
filetype plugin indent on     " required! 

set encoding=utf-8
set fileencoding=utf-8
set number

set mouse=a

syntax on
color dracula

set showcmd
set incsearch
map Q gq

"SuperTab Completion in the right direction
let g:SuperTabDefaultCompletionType = "<c-n>"

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"back to last opened position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

source ~/colemak.vim

