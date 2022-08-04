" Create a command to open online documentation for HLSL
command -nargs=1 HLSLRefPages !start https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl-<args>
setlocal keywordprg=:HLSLRefPages
