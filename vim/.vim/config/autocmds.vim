"
" Autocommands & Filetype Settings
" Automatic commands and file type specific configurations
"



" ========== Filetype Associations ==========

" Markdown files
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Jinja templates for HTML files
autocmd BufRead,BufNewFile *.html,*.htm,*.shtml,*.stm,*.nunj set filetype=jinja

" INI files as droid filetype
autocmd BufRead,BufNewFile *.ini set filetype=droid



" ========== CSS/Sass Configuration ==========

" Use Sass syntax for .css files (for PostCSS compatibility)
augroup filetypedetect
    au BufRead,BufNewFile *.css set filetype=sass
augroup END



" ========== Git Commit Configuration ==========

" Set text width to 72 characters for git commit messages
autocmd FileType gitcommit set textwidth=72

" Add color column at 51st column for git commit titles
autocmd FileType gitcommit set colorcolumn+=51



" ========== Droid File Comments ==========

" Custom comment abbreviation for droid files
autocmd FileType droid
  \ :iabbrev <buffer> #- #<Space>--------------------------------------------------<Return>#<Space>--------------------------------------------------<Esc>O#



" ========== Directory Management ==========

" Allow removal of non-empty directories when exploring
let g:netrw_localrmdir="rm -r"



" ========== EditorConfig ==========

" Exclude fugitive buffers from EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']



" ========== Closetag Configuration ==========

" Set filenames where closetag should be active
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.njk,*.nunj'