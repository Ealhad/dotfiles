set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/repos')
    call dein#begin('~/.config/nvim/repos')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('ervandew/supertab')
    call dein#add('neomake/neomake')
    call dein#add('bling/vim-airline')
    call dein#add('vim-script/VimClojure')
    call dein#end()
    call dein#save_state()
endif

color elflord

" SuperTab Completion in the right direction
let g:SuperTabDefaultCompletionType = "<c-n>"

let g:deoplete#enable_at_startup = 1
set clipboard+=unnamedplus

set number

set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=79
set autoindent

set fileformat=unix
set showcmd
set incsearch

" Buffers
set hidden
map <C-h> :bprevious<CR>
map <C-l> :bnext<CR>
map ZA :w\|bdelete<CR>
map ZX :bdelete!<CR>
map <space> :

"Plugin 'easymotion/vim-easymotion'
"Plugin 'ervandew/supertab'
"Plugin 'tpope/vim-fugitive'
"Plugin 
"Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plugin 'lervag/vimtex'
"Plugin 'klen/python-mode'
"Plugin 'pangloss/vim-javascript'
"Plugin 'justinmk/vim-syntax-extra'
"Plugin 'shougo/neocomplete.vim'
"Plugin 'jnurmine/Zenburn'
"Plugin 'kovisoft/slimv'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'tpope/vim-surround'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-classpath'
"Plugin 'tpope/vim-salve'
"Plugin 'tpope/vim-dispatch'
"Plugin 'tpope/vim-fireplace'


" back to last opened position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

autocmd FileType c setlocal comments-=:// comments+=f:// 
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2

autocmd bufwritepost ~/.config/nvim/init.vim source %
