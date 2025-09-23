"
" Appearance & Visual Settings
" UI configuration, colors, themes, and visual elements
"



" ========== Color & Theme Configuration ==========

" Enable true colors if available
if has('termguicolors')
  set termguicolors
endif

" Set colorscheme
colorscheme sonokai

" Set airline theme to match
let g:airline_theme='sonokai'



" ========== Visual Elements ==========

" Show matching parentheses, brackets, etc.
set showmatch

" Comments and attributes in italic
highlight Comment cterm=italic
highlight Comment gui=italic
highlight htmlArg cterm=italic
highlight htmlArg gui=italic



" ========== Status Line & Interface ==========

" Show status line
set laststatus=2

" Show commands you're typing
set showcmd

" Show current line and column position in file
set ruler

" Customize location information in status line
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)

" Show file title in terminal tab
set title

" Maximum number of tab pages from command line
set tabpagemax=40



" ========== Line Numbers & Text Display ==========

" Show relative line numbers
set relativenumber

" Show absolute numbers on current line (hybrid numbering)
set number

" Highlight current line
set cursorline

" Show invisible characters
set list
set listchars=tab:»-,trail:·



" ========== Column Guides ==========

" Color the column just after line limit
set colorcolumn=+1



" ========== Plugin-Specific Appearance Settings ==========

" Don't let indentLine plugin disable quotes in JSON files
let g:vim_json_syntax_conceal = 0
let g:indentLine_setConceal = 0