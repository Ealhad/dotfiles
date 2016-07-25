set nocompatible               " be iMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'

" Required
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8
set number

set mouse=a

syntax on
color elflord

set showcmd
set incsearch
map Q gq

" SuperTab Completion in the right direction
let g:SuperTabDefaultCompletionType = "<c-n>"

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" back to last opened position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

