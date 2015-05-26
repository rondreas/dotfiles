" Vim syntax file
" Language:	Fabric Kernel Language (KL)
" Maintainer:	Fabric Engine

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword klCommentTodo TODO FIXME XXX TBD contained
syn match   klLineComment "\/\/.*" contains=@Spell,klCommentTodo
syn region  klComment     start="/\*"  end="\*/" contains=@Spell,klCommentTodo

" Values
syn region  klStringD     start=+"+  skip=+\\\\\|\\"+  end=+"\|$+
syn region  klStringS     start=+'+  skip=+\\\\\|\\'+  end=+'\|$+

" numbers
syn case ignore
syn match klNumber        "\<\d\+\(u\|u64\)\=\>"
syn match klNumberHex     "\<0x\x\+u\=\>"
syn match klNumber        "\.\d\+\(e[-+]\=\d\+\)\=\(f\|f32\|f64\)\=\>"
syn match klNumber        "\<\d\+\.\(\d\+\)\=\(e[-+]\=\d\+\)\=\(f\|f32\|f64\)\=\>"
syn case match

syn keyword klBoolean     true false

" Basic Types
syn keyword klType        Size String Index
syn keyword klType        Boolean Byte Data 
syn keyword klType        Float32 Float64 Integer Scalar 
syn keyword klType        UInt8 UInt16 UInt32 UInt64 
syn keyword klType        SInt8 SInt16 SInt32 SInt64 
syn keyword klType        UnregisteredType Object 

" Math types
syn keyword klType        Vec2 Vec3 Vec3_d Vec4 Mat22 Mat33 Mat44 Quat Xfo Euler Ray
syn keyword klType        RGB RGBA ARGB Color RotationOrder
syn keyword klType        Box2 Box3

" Geometry types
syn keyword klType        ClosestResult Geometry GeometryAttribute 
syn keyword klType        RaycastResult SpatialQuery SpatialQueryable
syn keyword klType        BaseAttribute BaseGeometry ColorAttribute GeometryAttributes
syn keyword klType        GeometryAttributesIterator GeometryInstancesSpatialQueries
syn keyword klType        GeometryInstancesSpatialQuery GeometryLocation IntegerAttribute
syn keyword klType        Lines LocalBoundingVolume Mat33Attribute Mat44Attribute Octree
syn keyword klType        Points PolygonMesh PolygonMeshEdge PolygonMeshStructureChangeBracket
syn keyword klType        QuatAttribute ScalarAttribute ScalarConstantArrayAttribute
syn keyword klType        SkinningAttribute SparseGrid
syn keyword klType        Singletons InlineDrawing Math
syn match klType          "\<RGBA\=Attribute\>"
syn match klType          "\<UInt\(16\|32\)ConstantArrayAttribute\>"
syn match klType          "\<Vec\([2-4]\|3_d\)Attribute\>"

" Container types
syn match klType          "\<LocalL\(4\|8\|16\|32\|64\)\(Scalar\|\(UInt\(8\|16\|32\|64\)\)\)Array\>"
syn match klType          "\<Generic\(S\|U\)Int\(8\|16\|32\|64\)\(Array\)\=Value\>"
syn match klType          "\<GenericValueContainer\>"
syn match klType          "\<GenericString\(Array\)\=Value\>"
syn match klType          "\<GenericXfo\(Array\)\=Value\>"
syn match klType          "\<GenericVec\([2-4]\|3_d\)\(Array\)\=Value\>"
syn match klType          "\<GenericBoolean\(Array\)\=Value\>"
syn match klType          "\<GenericFloat\(32\|64\)\(Array\)\=Value\>"
syn match klType          "\<GenericMat[2-4]{2}\(Array\)\=Value\>"
syn match klType          "\<GenericBox[23]\(Array\)\=Value\>"
syn match klType          "\<GenericColor\(Array\)\=Value\>"
syn match klType          "\<GenericData\(Array\)\=Value\>"
syn match klType          "\<GenericEuler\(Array\)\=Value\>"
syn match klType          "\<GenericRGBA\=\(Array\)\=Value\>"
syn match klType          "\<GenericARGB\(Array\)\=Value\>"
syn match klType          "\<GenericObject\(Array\)\=Value\>"
syn match klType          "\<GenericQuat\(Array\)\=Value\>"
syn match klType          "\<GenericRay\(Array\)\=Value\>"
syn match klType          "\<GenericRotationOrder\(Array\)\=Value\>"
syn keyword klType        BitVector BitVectorIterator IndexPool IndexSet PackedIndexLists
syn keyword klType        ThreadsafeMetaDataContainer UInt32ArrayAllocator UInt32ArrayNoFree

" Image types
syn match klType          "\<Image2D\(Color\|RGBA\=\|Scalar\)\=\>"

" Manipulation types
syn keyword klType        BaseEvent BaseGizmoHandler CameraManipulator EventDispatcher
syn keyword klType        EventDispatcherHandle GizmoManipulator Host KeyEvent MouseEvent
syn keyword klType        MouseWheelEvent OrientationAxisGizmoHandler OrientationAxisGizmoManager
syn keyword klType        OrientationGizmosManager OrientationSphericalGizmoHandler
syn keyword klType        OrientationSphericalGizmoManager PositionAxisGizmoHandler
syn keyword klType        PositionAxisGizmoManager PositionGizmosManager PositionPlanarGizmoHandler
syn keyword klType        PositionPlanarGizmoManager SliderGizmoHandler SurfaceAttributePaintManipulator
syn keyword klType        SurfaceAttributePaintManipulator_PaintData SurfacePaintManipulator
syn keyword klType        SurfacePaintManipulator_PointCollection SurfacePaintManipulator_StrokePoint
syn keyword klType        SurfaceSculptManipulator TransformManipulationCallback
syn keyword klType        TransformManipulationCommand TransformManipulator Weightmap

" Parameter types
syn keyword klType        Param
syn match klType          "\<Boolean\(Array\)\=Param\>"
syn match klType          "\<Color\(Array\)\=Param\>"
syn match klType          "\<Compound\(Array\)\=Param\>"
syn match klType          "\<Euler\(Array\)\=Param\>"
syn match klType          "\<Float64\(Array\)\=Param\>"
syn match klType          "\<Mat33\(Array\)\=Param\>"
syn match klType          "\<Mat44\(Array\)\=Param\>"
syn match klType          "\<Object\(Array\)\=Param\>"
syn match klType          "\<Quat\(Array\)\=Param\>"
syn match klType          "\<SInt32\(Array\)\=Param\>"
syn match klType          "\<String\(Array\)\=Param\>"
syn match klType          "\<Vec3\(Array\)\=Param\>"

" KL language tokens
syn keyword klConditional if else switch
syn keyword klRepeat      for while do
syn keyword klBranch      break continue throw
syn keyword klStatement   return
syn keyword klIdentifier  this
syn keyword klLabel       case default
syn keyword klReserved    Ref alias in out io struct const require object var FILE LINE
syn keyword klFunction    function operator inline
syn keyword klBuiltin     report swap

syn match   klBraces      "[{}\[\]\<\>()]"

hi link klComment Comment
hi link klLineComment Comment
hi link klCommentTodo Todo

hi link klStringS String
hi link klStringD String
hi link klNumber Number
hi link klNumberHex Number
hi link klBoolean Boolean

hi link klType Type
hi link klConditional Conditional
hi link klRepeat Repeat
hi link klBranch Conditional
hi link klStatement Statement
hi link klIdentifier Identifier
hi link klLabel Label
hi link klReserved Keyword
hi link klFunction Function
hi link klBrace Function

let b:current_syntax = "kl"
