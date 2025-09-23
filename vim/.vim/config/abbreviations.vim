"
" Text Abbreviations
" Useful text expansions and shortcuts
"



" ========== Lorem Ipsum ==========

iabbrev lipsum Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.



" ========== CSS Comment Blocks ==========

" Major section divider
iabbrev /*= /*<Space>==========================================================================<Esc>o<Space><Space><Space>#<Esc>o<Esc>0i<Space><Space><Space>==========================================================================<Space>*/<Esc>kA

" Minor section divider
iabbrev /*- /*<Space>-------------------------------------<Esc>o<Space><Space><Space>#<Esc>o<Esc>0i<Space><Space><Space>-------------------------------------<Space>*/<Esc>kA



" ========== Inline Comments ==========

iabbrev /*1 /* [1] */
iabbrev /*2 /* [2] */
iabbrev /*3 /* [3] */
iabbrev /*4 /* [4] */
iabbrev /*5 /* [5] */



" ========== Documentation ==========

" Docblock template
iabbrev /** /**<Return><Space>*<Return>*/<Esc>k$a



" ========== Date & Time ==========

" Current date in YYYY-MM-DD format
iab <expr> usdate strftime("%Y-%m-%d")

" Current date and time in YYYY-MM-DD HH:MM:SS format
iab <expr> uusdate strftime("%Y-%m-%d %H:%M:%S")