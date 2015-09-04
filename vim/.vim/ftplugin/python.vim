" Python specific vim settings

" Makes <TAB> use softtab, set to a width of 4.
" and makes changes by '<<', '>>' and '==' also
" add four spaces.
set expandtab
set shiftwidth=4
set softtabstop=4

" Highlight to warn about exceedingly long lines.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
