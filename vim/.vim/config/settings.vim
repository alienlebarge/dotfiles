"
" Core Vim Settings
" Basic Vim configuration and behavior settings
"



" ========== Encoding & File Handling ==========

set encoding=utf-8
set fileencoding=utf-8

" Automatically re-read files if unmodified inside Vim
set autoread

" Display a confirmation dialog when closing an unsaved file
set confirm

" Ignore file's mode lines; use vimrc configurations instead
set nomodeline



" ========== History & Persistence ==========

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

" Record swapfiles in dedicated directory
set directory^=$HOME/.vim/swp//

" Do not use backup files
set nobackup

" Set bigger history of executed commands
set history=1000



" ========== Project-Specific Configuration ==========

" Enable project-specific vimrc
set exrc



" ========== Text Editing ==========

" New lines inherit the indentation of previous lines
set autoindent

" Smart auto indentation and filetype detection
filetype plugin indent on
filetype plugin on

" Tab and indentation settings (4 spaces)
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Round indent to the nearest multiple of shiftwidth
set shiftround

" No line-wrapping
set nowrap

" Spell-check always on
set spell

" Interpret numbers with leading zero as decimal, not octal
set nrformats-=octal

" Force cursor onto a new line after 80 characters
set textwidth=80



" ========== Buffer & Window Management ==========

" Open splits to the right or below (more natural than default)
set splitright
set splitbelow

" Show file options above the command line
set wildmenu

" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=*.map,*.min.css
set wildignore+=node_modules/*

" Manage multiple buffers effectively
set hidden



" ========== Interaction & Navigation ==========

" Start scrolling before cursor reaches edge
set scrolloff=3
set sidescrolloff=5

" Scroll sideways a character at a time
set sidescroll=1

" Allow motions and back-spacing over line-endings
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]

" Don't redraw screen unless necessary
set lazyredraw

" Enable mouse for scrolling and resizing
set mouse=a



" ========== Folding ==========

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual



" ========== Search Settings ==========

" Highlight searches by default
set hlsearch

" Highlight as we type
set incsearch

" Ignore case when searching
set ignorecase

" ...except if we input a capital letter
set smartcase



" ========== System ==========

" Disable beep on errors
set noerrorbells

" Flash the screen instead of beeping on errors
set visualbell