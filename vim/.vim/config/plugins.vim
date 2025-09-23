"
" Plugin Management
" Vim-Plug configuration and plugin declarations
"

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin declarations
call plug#begin('~/.vim/plugged')



" ========== Search & Navigation ==========

Plug 'mileszs/ack.vim'



" ========== Editing Enhancement ==========

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'



" ========== Code Quality & Formatting ==========

Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'



" ========== UI & Visual Enhancement ==========

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wfxr/minimap.vim'



" ========== Language Support ==========

Plug 'sheerun/vim-polyglot'
Plug 'lepture/vim-jinja'
Plug 'elzr/vim-json'



" ========== Color Schemes ==========

Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'



" ========== Utilities ==========

Plug 'tpope/vim-eunuch'
Plug 'skammer/vim-css-color'
Plug 'airblade/vim-gitgutter'

" Disabled plugins (commented for reference)
" Plug 'danth/pathfinder.vim'  " Disabled due to popup errors

call plug#end()