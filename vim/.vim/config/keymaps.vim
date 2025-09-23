"
" Key Mappings
" Custom key bindings and shortcuts
"



" ========== Disable Arrow Keys (Vim Training) ==========

" Disable arrow keys in normal and insert mode
map  <Up>    <Nop>
imap <Up>    <Nop>
map  <Down>  <Nop>
imap <Down>  <Nop>
map  <Left>  <Nop>
imap <Left>  <Nop>
map  <Right> <Nop>
imap <Right> <Nop>

" Show helpful messages when arrow keys are pressed
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>



" ========== File & Buffer Navigation ==========

" Open file under cursor in vertical split
nnoremap gf :vertical wincmd f<CR>

" Window switching using Ctrl + hjkl
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>



" ========== Text Manipulation ==========

" Move visual selection up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv



" ========== Mode Switching ==========

" Quick escape to normal mode
inoremap jj <esc>
inoremap jk <esc>



" ========== Command Line Helpers ==========

" %% expands to directory of current file
cabbr <expr> %% fnameescape(expand('%:p:h'))