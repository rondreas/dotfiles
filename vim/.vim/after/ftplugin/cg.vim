" Create a command to open online documentation for cg standard library
command -nargs=1 CgOnlineDocs !start https://developer.download.nvidia.com/cg/<args>.html
setlocal keywordprg=:CgOnlineDocs
