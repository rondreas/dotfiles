" Vim Setting
set nocompatible
filetype off

"set the runtime path to include Vundle and initialize
if has('win32')
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim
	call vundle#begin('$USERPROFILE/vimfiles/bundle/')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Activate filetype detection, loads plugin and indent file for detected language.
filetype plugin indent on

" PyDoc
let g:pydoc_cmd = 'python -m pydoc'
let g:pydoc_open_cmd = 'vsplit'

" Set UI language "
set langmenu=en_US.UTF-8
let g:NERDTreeDirArrows=0

" Hides (m)enu bar, (T)oolbar and (r)ight side scrollbar.
set go-=m go-=T go-=r

" Removal of bells on errors "
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Set font "
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Courier\ New\ 11
    elseif has("gui_photon")
        set guifont=Courier\ New:s11
    elseif has("gui_kde")
        set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
    elseif has("x11")
        set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
    else
        set guifont=Courier_New:h11:cDEFAULT
    endif
endif

syntax enable
set number

" Create new files from templates
au BufNewFile *.py 0r ~/.vim/py.skel | let IndentStyle = "py"
au BufNewFile *.c 0r ~/.vim/c.skel | let IndentStyle = "cpp"
au BufNewFile *.html 0r ~/.vim/html.skel | let IndentStyle = "html"

" Highlight to warn about exceedingly long lines.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

colorscheme desert 
