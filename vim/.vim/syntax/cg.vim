" Vim syntax file for Nvidia Cg
" See :help syn-files
" Language:     Cg
" Author:       Andreas Ranman
" Date:         April 20, 2022
" File Types:   .cg, .cgfx
" Version:      0.1

if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start
runtime! syntax/c.vim
unlet b:current_syntax

" Cg Keyword List ( https://developer.download.nvidia.com/CgTutorial/cg_tutorial_appendix_d.html )
"
" Following is the list of Cg reserved words. Words marked with an asterisk are 
" case-insensitive.
"
" In addition to the words on this list, any identifier with two underscores as
" a prefix (for example, __ newType ) is reserved. Note that matrix and vector 
" types (such as half2x3 or float4 ) are not on this list because they can be 
" used as identifiers. Still, we recommend that you treat the matrix and vector
" types as reserved words, thereby avoiding confusion.
"
" asm*              explicit           pixelfragment*       template
" 
" asm_fragment      extern             pixelshader*         texture*
" 
" auto              FALSE              private              texture1D
" 
" bool              fixed              protected            texture2D
" 
" break             float*             public               texture3D
" 
" case              for                register             textureCUBE
" 
" catch             friend             reinterpret_cast     textureRECT
" 
" char              get                return               this
" 
" class             goto               row_major            throw
" 
" column_major      half               sampler              TRUE
" 
" compile           if                 sampler_state        try
" 
" const             in                 sampler1D            typedef
" 
" const_cast        inline             sampler2D            typeid
" 
" continue          inout              sampler3D            typename
" 
" decl*             int                samplerCUBE          uniform
" 
" default           interface          shared               union
" 
" delete            long               short                unsigned
" 
" discard           matrix*            signed               using
" 
" do                mutable            sizeof               vector*
" 
" double            namespace          static               vertexfragment*
" 
" dword*            new                static_cast          vertexshader*
" 
" dynamic_cast      operator           string*              virtual
" 
" else              out                struct               void
" 
" emit              packed             switch               volatile
" 
" enum              pass*              technique*           while
"
" asm explicit pixelfragment template asm_fragment extern pixelshader texture auto FALSE private texture1D bool fixed protected texture2D break float public texture3D case for register textureCUBE catch friend reinterpret_cast textureRECT char get return this class goto row_major throw column_major half sampler TRUE compile if sampler_state try const in sampler1D typedef const_cast inline sampler2D typeid continue inout sampler3D typename decl int samplerCUBE uniform default interface shared union delete long short unsigned discard matrix signed using do mutable sizeof vector double namespace static vertexfragment dword new static_cast vertexshader dynamic_cast operator string virtual else out struct void emit packed switch volatile enum pass technique while

" Declarations and declaration specifiers
syn keyword cgTypeQualifier const extern in inline inout static out uniform varying

" Types
syn keyword cgType cint char short int long signed unsigned
syn keyword cgType cfloat float half fixed

syn keyword cgType bool float char half int long short unsigned matrix signed vector double dword string struct void enum
syn keyword cgSamplerTypes sampler sampler1D sampler2D sampler3D samplerCUBE samplerRECT

syn keyword Boolean TRUE FALSE
syn keyword cgTypeQualifier explicit extern private fixed public friend const shared

syn keyword cgType half      half1       half2       half3       half4
syn keyword cgType float     float1      float2      float3      float4
syn keyword cgType double    double1     double2     double3     double4

" Matrix Types
syn match cgType /float[1-4]x[1-4]/

" Cg Standard Library
syn keyword cgFunction abs acos all any asin atan atan2 bitCount bitfieldExtract bitfieldInsert bitfieldReverse ceil clamp clip cos cosh cross ddx ddy degrees determinant distance dot exp exp2 faceforward findLSB findMSB floatToIntBits floatToRawIntBits floor fmod frac frexp fwidth intBitsToFloat inverse isfinite isinf isnan ldexp length lerp lit log log10 log2 max min modf mul normalize pack pow radians reflect refract round rsqrt saturate sign sin sincos sinh smoothstep sqrt step tan tanh tex1D tex1DARRAY tex1DARRAYbias tex1DARRAYcmpbias tex1DARRAYcmplod tex1DARRAYfetch tex1DARRAYlod tex1DARRAYproj tex1DARRAYsize tex1Dbias tex1Dcmpbias tex1Dcmplod tex1Dfetch tex1Dlod tex1Dproj tex1Dsize tex2D tex2Dbias tex2Dcmpbias tex2Dcmplod tex2Dfetch tex2Dlod tex2Dproj tex2Dsize tex2DARRAY tex2DARRAYbias tex2DARRAYfetch tex2DARRAYlod tex2DARRAYproj tex2DARRAYsize tex2DMSfetch tex2DMSsize tex2DMSARRAYfetch tex2DMSARRAYsize tex3D tex3Dbias tex3Dfetch tex3Dlod tex3Dproj tex3Dsize texBUF texBUFsize texCUBE texCUBEARRAY texCUBEARRAYbias texCUBEARRAYlod texCUBEARRAYsize texCUBEbias texCUBElod texCUBEproj texCUBEsize texRBUF texRBUFsize texRECT texRECTbias texRECTfetch texRECTlod texRECTproj texRECTsize transpose trunc unpack

" Swizzling
syn match cgSwizzle /\.[xyzw]\{1,4\}\>/
syn match cgSwizzle /\.[rgba]\{1,4\}\>/
syn match cgSwizzle /\.\(_m[0-3]\{2}\)\{1,4\}/
syn match cgSwizzle /\.\(_[1-4]\{2}\)\{1,4\}/

" Vector types
syn match cgType /vector<\s*\w\+,\s*[1-4]\s*>/

" Cg Profiles
syn keyword cgProfile gp5 gp5tcp gp5tep gp5vp gp5gp gp5fp gp4 gp4vp gp4gp gp4fp glsl glslv glslg glslf vp40 fp40 arbfp1 arbvp1 vp30 fp30 vp20 fp20 hlsl10 hlsl11 ds_5_0 hs_5_0 vs_5_0 gs_5_0 ps_5_0 vs_4_0 gs_4_0 ps_4_0 hlslv hlslf vs_3_0 ps_3_0 vs_2_x ps_2_x vs_2_sw ps_2_sw vs_2_0 ps_2_0 vs_1_1 ps_1_3 ps_1_2 ps_1_1

" Cgfx States
syn keyword cgfxStates AddressUi AddressVi AddressWi AlphaArg0 AlphaArg1 AlphaArg2 AlphaBlendEnable AlphaFunc AlphaOp AlphaRef AlphaTestEnable Ambient AmbientMaterialSource AutoNormalEnable BlendColor BlendEnable BlendEquation BlendEquationSeparate BlendFunc BlendFuncSeparate BlendOp BlendOpAlpha BorderColori BumpEnvLOffset BumpEnvLScale BumpEnvMat00 BumpEnvMat01 BumpEnvMat10 BumpEnvMat11 ClearColor ClearDepth ClearStencil ClipPlane ClipPlaneEnable Clipping ColorArg0 ColorArg1 ColorArg2 ColorLogicOpEnable ColorMask ColorMaterial ColorMatrix ColorOp ColorTransform ColorVertex ColorWriteEnable ColorWriteEnable1 ColorWriteEnable2 ColorWriteEnable3 CullFace CullFaceEnable CullMode DepthBias DepthBounds DepthBoundsEnable DepthClampEnable DepthFunc DepthMask DepthRange DepthTestEnable DestBlend DestBlendAlpha DiffuseMaterialSource DitherEnable EmissiveMaterialSource FillMode FogColor FogCoordSrc FogDensity FogDistanceMode FogEnable FogEnd FogMode FogStart FogTableMode FogVertexMode FragmentEnvParameter FragmentLocalParameter FragmentProgram FrontFace GeometryProgram GeometryShader IndexedVertexBlendEnable LastPixel LightAmbient LightAttenuation0 LightAttenuation1 LightAttenuation2 LightConstantAttenuation LightDiffuse LightDirection LightEnable LightFalloff LightLinearAttenuation LightModelAmbient LightModelColorControl LightModelLocalViewerEnable LightModelTwoSideEnable LightPhi LightPosition LightQuadraticAttenuation LightRange LightSpecular LightSpotCutoff LightSpotDirection LightSpotExponent LightTheta LightType Lighting LightingEnable LineSmoothEnable LineStipple LineStippleEnable LineWidth LocalViewer LogicOp LogicOpEnable MagFilteri MaterialAmbient MaterialDiffuse MaterialEmission MaterialEmissive MaterialPower MaterialShininess MaterialSpecular MaxAnisotropyi MaxMipLeveli MinFilteri MipFilteri MipMapLodBiasi ModelViewMatrix ModelViewTransform MultiSampleAntialias MultiSampleMask MultisampleEnable NormalizeEnable NormalizeNormals PatchSegments PixelShader PixelShaderConstant PixelShaderConstant1 PixelShaderConstant2 PixelShaderConstant3 PixelShaderConstant4 PixelShaderConstantB PixelShaderConstantF PixelShaderConstantI PointDistanceAttenuation PointFadeThresholdSize PointScaleEnable PointScale_A PointScale_B PointScale_C PointSize PointSizeMax PointSizeMin PointSmoothEnable PointSpriteCoordOrigin PointSpriteCoordReplace PointSpriteEnable PointSpriteRMode PolygonMode PolygonOffset PolygonOffsetFillEnable PolygonOffsetLineEnable PolygonOffsetPointEnable PolygonSmoothEnable PolygonStippleEnable ProjectionMatrix ProjectionTransform RangeFogEnable RescaleNormalEnable ResultArg SampleAlphaToCoverageEnable SampleAlphaToOneEnable SampleCoverageEnable Sampler Scissor ScissorTestEnable SeparateAlphaBlendEnable ShadeMode ShadeModel SlopScaleDepthBias SpecularEnable SpecularMaterialSource SrcBlend SrcBlendAlpha StencilEnable StencilFail StencilFunc StencilFuncSeparate StencilMask StencilMaskSeparate StencilOp StencilOpSeparate StencilPass StencilRef StencilTestEnable StencilTestTwoSideEnable StencilWriteMask StencilZFail TessellationControlProgram TessellationControlShader TessellationEvaluationProgram TessellationEvaluationShader TexGenQEnable TexGenQEyePlane TexGenQMode TexGenQObjectPlane TexGenREnable TexGenREyePlane TexGenRMode TexGenRObjectPlane TexGenSEnable TexGenSEyePlane TexGenSMode TexGenSObjectPlane TexGenTEnable TexGenTEyePlane TexGenTMode TexGenTObjectPlane Texture1D Texture1DEnable Texture2D Texture2DEnable Texture3D Texture3DEnable TexCoordIndex TextureCubeMap TextureCubeMapEnable TextureEnvColor TextureEnvMode TextureFactor TextureMatrix TextureRectangle TextureRectangleEnable TextureTransform TextureTransformFlags TweenFactor TwoSidedStencilMode VertexBlend VertexEnvParameter VertexLocalParameter VertexProgram VertexProgramPointSizeEnable VertexProgramTwoSideEnable VertexShader VertexShaderConstant VertexShaderConstant1 VertexShaderConstant2 VertexShaderConstant3 VertexShaderConstantB VertexShaderConstantF VertexShaderConstantI ViewTransform WorldTransform Wrap0 Wrap1 Wrap10 Wrap11 Wrap12 Wrap13 Wrap14 Wrap15 Wrap2 Wrap3 Wrap4 Wrap5 Wrap6 Wrap7 Wrap8 Wrap9 ZEnable ZFunc ZWriteEnable vertexShaderConstant4

" Cgfx Sampler States
syn keyword cgfxSamplerStates AddressU AddressV AddressW BorderColor CompareFunc CompareMode DepthMode GenerateMipmap LODBias MagFilter MaxAnisotropy MaxMipLevel MinFilter MipFilter MipMapLodBias SRGBTexture Texture WrapR WrapS WrapT

" Semantics
syn keyword cgSemantic POSITION

syn keyword cgSemantic COLOR
syn keyword cgSemantic COLOR0
syn keyword cgSemantic DIFFUSE

syn keyword cgSemantic NORMAL
syn keyword cgSemantic TANGENT
syn keyword cgSemantic BINORMAL

syn match cgSemantic /TEXCOORD[0-7]/
syn match cgSemantic /ATTR[0-9][0-5]*/

" Highlighting
command -nargs=+ Highlight hi def link <args>
Highlight cgFunction Function
Highlight cgProfile Statement
Highlight cgfxStates Statement
Highlight cgfxSamplerStates Statement
Highlight cgType Type
Highlight cgSwizzle SpecialChar
Highlight cgSemantic PreProc
delcommand Highlight

let b:current_syntax = "cg"
