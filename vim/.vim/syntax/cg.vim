" Vim syntax file the High Level Shader Language
" Language:     CG
" Author:       Andreas Rånman
" Date:         April 20, 2022
" File Types:   .cg, .cgfx
" Version:      0.1

if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start
runtime! syntax/c.vim
unlet b:current_syntax

" Cg Standard Library
syn keyword cgFunc abs acos all any asin atan atan2 bitCount bitfieldExtract bitfieldInsert bitfieldReverse ceil clamp clip cos cosh cross ddx ddy degrees determinant distance dot exp exp2 faceforward findLSB findMSB floatToIntBits floatToRawIntBits floor fmod frac frexp fwidth intBitsToFloat inverse isfinite isinf isnan ldexp length lerp lit log log10 log2 max min modf mul normalize pack pow radians reflect refract round rsqrt saturate sign sin sincos sinh smoothstep sqrt step tan tanh tex1D tex1DARRAY tex1DARRAYbias tex1DARRAYcmpbias tex1DARRAYcmplod tex1DARRAYfetch tex1DARRAYlod tex1DARRAYproj tex1DARRAYsize tex1Dbias tex1Dcmpbias tex1Dcmplod tex1Dfetch tex1Dlod tex1Dproj tex1Dsize tex2D tex2Dbias tex2Dcmpbias tex2Dcmplod tex2Dfetch tex2Dlod tex2Dproj tex2Dsize tex2DARRAY tex2DARRAYbias tex2DARRAYfetch tex2DARRAYlod tex2DARRAYproj tex2DARRAYsize tex2DMSfetch tex2DMSsize tex2DMSARRAYfetch tex2DMSARRAYsize tex3D tex3Dbias tex3Dfetch tex3Dlod tex3Dproj tex3Dsize texBUF texBUFsize texCUBE texCUBEARRAY texCUBEARRAYbias texCUBEARRAYlod texCUBEARRAYsize texCUBEbias texCUBElod texCUBEproj texCUBEsize texRBUF texRBUFsize texRECT texRECTbias texRECTfetch texRECTlod texRECTproj texRECTsize transpose trunc unpack

let b:current_syntax = "cg"
