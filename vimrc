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
Plugin 'scrooloose/syntastic'
Plugin 'lervag/vimtex'
Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'shougo/neocomplete.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'kovisoft/slimv'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'

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

" spacemacs-y
let mapleader = " "
nnoremap <LEADER>ft :NERDTreeToggle<CR>
set showcmd

set incsearch
map Q gq

" Enable folding
set foldmethod=indent
set foldlevel=99

" Buffers
set hidden
map <C-h> :bprevious<CR>
map <C-l> :bnext<CR>
map ZA :w\|bdelete<CR>
map ZX :bdelete!<CR>

set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=79
set autoindent
set fileformat=unix

" SuperTab Completion in the right direction
let g:SuperTabDefaultCompletionType = "<c-n>"

let g:syntastic_javascript_checkers = ['jshint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:neocomplete#enable_at_startup = 1

"AutoPairs conflicting shortcuts
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutBackInsert = ''


" back to last opened position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

autocmd FileType c setlocal comments-=:// comments+=f:// 
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2

autocmd FileType lisp let b:AutoPairs = {"(": ")"}

" auto-reload vimrc
autocmd bufwritepost ~/.vimrc source ~/.vimrc

