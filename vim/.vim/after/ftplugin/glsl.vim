" Create a command to open online documentation for OpenGL
command -nargs=1 GLRefPages !start https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/<args>.xhtml
setlocal keywordprg=:GLRefPages
