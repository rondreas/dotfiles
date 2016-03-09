" Vim Setting

" Set VIM to open in user Home Directory
:cd $HOME

execute pathogen#infect()

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

" Highlight to warn about exceedingly long lines.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

colorscheme desert 
