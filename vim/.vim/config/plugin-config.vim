"
" Plugin Configurations
" Settings and customizations for installed plugins
"



" ========== NERDCommenter ==========

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1



" ========== Minimap.vim ==========

" Requires: https://github.com/wfxr/code-minimap
" See: https://github.com/wfxr/minimap.vim

" Don't start minimap automatically
let g:minimap_auto_start = 0

" Set minimap width
let g:minimap_width = 10

" Don't auto-start when entering windows
let g:minimap_auto_start_win_enter = 0



" ========== IndentLine ==========

" Don't let indentLine plugin disable quotes in JSON files
" Reference: https://github.com/Yggdroot/indentLine/issues/172
let g:vim_json_syntax_conceal = 0
let g:indentLine_setConceal = 0