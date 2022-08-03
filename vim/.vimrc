" Vim Setting
set nocompatible
set noswapfile
filetype off

" Default indentation settings
set expandtab
set shiftwidth=2
set softtabstop=2

set relativenumber
set nu

" Activate filetype detection, loads plugin and indent file for detected language.
filetype plugin indent on

" Set UI language "
set langmenu=en_US.UTF-8

" Attempt setting current directory to file opened.
set autochdir
syntax enable

" File Explorer Settings "
let g:netrw_browse_split = 4    " Open netrw windows in previous window.
let g:netrw_winsize = 15	" Set the width to 15%

set guifont=Consolas

" Highlight to warn about exceedingly long lines.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

colorscheme desert 

" Load templates
autocmd BufNewFile test_*.py 0r ~/vimfiles/templates/python/test_skeleton.py
autocmd BufNewFile [^test]*.py 0r ~/vimfiles/templates/python/skeleton.py

set tags=./tags;,tags;
