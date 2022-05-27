if exists("b:current_syntax")
  finish
endif

runtime! syntax/xml.vim
unlet b:current_syntax

let b:current_syntax = "cfg"
