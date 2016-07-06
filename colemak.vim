" Remapping for Colemak
" ----------------------
"
" This remaps the movemet keys j and k (In Colemak, J (= Qwerty Y) is placed 
" above K (= Qwerty N), which I find confusing in Vim since j moves down and k 
" up. I think the remappings below result in a more logical and easier to 
" reach layout, keeping in mind that space and backspace (= Qwerty Caps-Lock) 
" can be used instead of Colemak J (= Qwerty Y). I use the join-lines command 
" much more than the help command, and have therefore swapped J and K since I 
" find Colemak K (Qwerty N) much easier to reach than Colemak J (Qwerty Y).

" The first five mappings are basically all one needs to remember.

noremap K J
noremap J K

noremap h k
noremap j h
noremap k j

noremap gh gk
noremap gj gh
noremap gk gj

noremap zh zk
"zK does not exist
noremap zj zh
noremap zJ zH
noremap zk zj
"zJ does not exist
noremap z<Space> zl
noremap z<S-Space> zL
noremap z<BS> zh
noremap z<S-BS> zH

noremap <C-w>h <C-w>k
noremap <C-w>H <C-w>K
noremap <C-w>j <C-w>h
noremap <C-w>J <C-w>H
noremap <C-w>k <C-w>j
noremap <C-w>K <C-w>J
noremap <C-w><Space> <C-w>l
noremap <C-w><S-Space> <C-w>L
noremap <C-w><S-BS> <C-w>H
