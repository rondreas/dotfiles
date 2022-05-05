" Vim syntax file for Nvidia Cg
" See :help syn-files
" Language:     GLSL
" Author:       Andreas Ranman
" Date:         May 5, 2022
" File Types:   .ogsfx, .glsv, .glsf
" Version:      0.1

if exists("b:current_syntax")
  finish
endif

runtime! syntax/c.vim
unlet b:current_syntax

" Swizzles,
syn match glSwizzle /\.[xyzw]\{1,4\}\>/
syn match glSwizzle /\.[rgba]\{1,4\}\>/

syn keyword glFunction normalize

syn keyword glType vec2 vec3 vec4
syn keyword glType mat3 mat4

" Highlighting
command -nargs=+ Highlight hi def link <args>
Highlight glFunction Function
Highlight glType Type
Highlight glSwizzle SpecialChar
delcommand Highlight

let b:current_syntax = "glsl"
