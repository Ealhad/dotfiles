set nocompatible               " be iMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jiangmiao/auto-pairs'

" Required
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8
set number

set mouse=a
set noerrorbells visualbell t_vb=

syntax on
color elflord

set showcmd
set incsearch
map Q gq

" Buffers
set hidden
map <C-h> :bprevious<CR>
map <C-l> :bnext<CR>

set expandtab
set shiftwidth=4
set softtabstop=4

let g:ycm_confirm_extra_conf = 0

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

" single-line comments for c
autocmd FileType c setlocal comments-=:// comments+=f://

" auto-reload vimrc
autocmd bufwritepost ~/.vimrc source ~/.vimrc
