// This file is auto generated from the official khronos json files
package spirv

VERSION      :: 0x00010600
REVISION     :: 4
MAGIC_NUMBER :: 0x07230203

ImageOperands :: bit_set[enum u32 {
	Bias               = 0,
	Lod                = 1,
	Grad               = 2,
	ConstOffset        = 3,
	Offset             = 4,
	ConstOffsets       = 5,
	Sample             = 6,
	MinLod             = 7,
	MakeTexelAvailable = 8,
	MakeTexelVisible   = 9,
	NonPrivateTexel    = 10,
	VolatileTexel      = 11,
	SignExtend         = 12,
	ZeroExtend         = 13,
	Nontemporal        = 14,
	Offsets            = 16,
}; u32]

FPFastMathMode :: bit_set[enum u32 {
	NotNaN         = 0,
	NotInf         = 1,
	NSZ            = 2,
	AllowRecip     = 3,
	Fast           = 4,
	AllowContract  = 16,
	AllowReassoc   = 17,
	AllowTransform = 18,
}; u32]

SelectionControl :: bit_set[enum u32 {
	Flatten     = 0,
	DontFlatten = 1,
}; u32]

LoopControl :: bit_set[enum u32 {
	Unroll                    = 0,
	DontUnroll                = 1,
	DependencyInfinite        = 2,
	DependencyLength          = 3,
	MinIterations             = 4,
	MaxIterations             = 5,
	IterationMultiple         = 6,
	PeelCount                 = 7,
	PartialCount              = 8,
	InitiationIntervalINTEL   = 16,
	MaxConcurrencyINTEL       = 17,
	DependencyArrayINTEL      = 18,
	PipelineEnableINTEL       = 19,
	LoopCoalesceINTEL         = 20,
	MaxInterleavingINTEL      = 21,
	SpeculatedIterationsINTEL = 22,
	NoFusionINTEL             = 23,
	LoopCountINTEL            = 24,
	MaxReinvocationDelayINTEL = 25,
}; u32]

FunctionControl :: bit_set[enum u32 {
	Inline     = 0,
	DontInline = 1,
	Pure       = 2,
	Const      = 3,
	OptNoneEXT = 16,
}; u32]

MemorySemantics :: bit_set[enum u32 {
	Acquire                = 1,
	Release                = 2,
	AcquireRelease         = 3,
	SequentiallyConsistent = 4,
	UniformMemory          = 6,
	SubgroupMemory         = 7,
	WorkgroupMemory        = 8,
	CrossWorkgroupMemory   = 9,
	AtomicCounterMemory    = 10,
	ImageMemory            = 11,
	OutputMemory           = 12,
	MakeAvailable          = 13,
	MakeVisible            = 14,
	Volatile               = 15,
}; u32]

MemoryAccess :: bit_set[enum u32 {
	Volatile             = 0,
	Aligned              = 1,
	Nontemporal          = 2,
	MakePointerAvailable = 3,
	MakePointerVisible   = 4,
	NonPrivatePointer    = 5,
	AliasScopeINTELMask  = 16,
	NoAliasINTELMask     = 17,
}; u32]

KernelProfilingInfo :: bit_set[enum u32 {
	CmdExecTime = 0,
}; u32]

RayFlags :: bit_set[enum u32 {
	OpaqueKHR                     = 0,
	NoOpaqueKHR                   = 1,
	TerminateOnFirstHitKHR        = 2,
	SkipClosestHitShaderKHR       = 3,
	CullBackFacingTrianglesKHR    = 4,
	CullFrontFacingTrianglesKHR   = 5,
	CullOpaqueKHR                 = 6,
	CullNoOpaqueKHR               = 7,
	SkipTrianglesKHR              = 8,
	SkipAABBsKHR                  = 9,
	ForceOpacityMicromap2StateEXT = 10,
}; u32]

FragmentShadingRate :: bit_set[enum u32 {
	Vertical2Pixels   = 0,
	Vertical4Pixels   = 1,
	Horizontal2Pixels = 2,
	Horizontal4Pixels = 3,
}; u32]

RawAccessChainOperands :: bit_set[enum u32 {
	RobustnessPerComponentNV = 0,
	RobustnessPerElementNV   = 1,
}; u32]

SourceLanguage :: enum u32 {
	Unknown        = 0,
	ESSL           = 1,
	GLSL           = 2,
	OpenCL_C       = 3,
	OpenCL_CPP     = 4,
	HLSL           = 5,
	CPP_for_OpenCL = 6,
	SYCL           = 7,
	HERO_C         = 8,
	NZSL           = 9,
	WGSL           = 10,
	Slang          = 11,
	Zig            = 12,
	Rust           = 13,
}

ExecutionModel :: enum u32 {
	Vertex                 = 0,
	TessellationControl    = 1,
	TessellationEvaluation = 2,
	Geometry               = 3,
	Fragment               = 4,
	GLCompute              = 5,
	Kernel                 = 6,
	TaskNV                 = 5267,
	MeshNV                 = 5268,
	RayGenerationKHR       = 5313,
	IntersectionKHR        = 5314,
	AnyHitKHR              = 5315,
	ClosestHitKHR          = 5316,
	MissKHR                = 5317,
	CallableKHR            = 5318,
	TaskEXT                = 5364,
	MeshEXT                = 5365,
}

AddressingModel :: enum u32 {
	Logical                 = 0,
	Physical32              = 1,
	Physical64              = 2,
	PhysicalStorageBuffer64 = 5348,
}

MemoryModel :: enum u32 {
	Simple  = 0,
	GLSL450 = 1,
	OpenCL  = 2,
	Vulkan  = 3,
}

ExecutionMode :: enum u32 {
	Invocations                         = 0,
	SpacingEqual                        = 1,
	SpacingFractionalEven               = 2,
	SpacingFractionalOdd                = 3,
	VertexOrderCw                       = 4,
	VertexOrderCcw                      = 5,
	PixelCenterInteger                  = 6,
	OriginUpperLeft                     = 7,
	OriginLowerLeft                     = 8,
	EarlyFragmentTests                  = 9,
	PointMode                           = 10,
	Xfb                                 = 11,
	DepthReplacing                      = 12,
	DepthGreater                        = 14,
	DepthLess                           = 15,
	DepthUnchanged                      = 16,
	LocalSize                           = 17,
	LocalSizeHint                       = 18,
	InputPoints                         = 19,
	InputLines                          = 20,
	InputLinesAdjacency                 = 21,
	Triangles                           = 22,
	InputTrianglesAdjacency             = 23,
	Quads                               = 24,
	Isolines                            = 25,
	OutputVertices                      = 26,
	OutputPoints                        = 27,
	OutputLineStrip                     = 28,
	OutputTriangleStrip                 = 29,
	VecTypeHint                         = 30,
	ContractionOff                      = 31,
	Initializer                         = 33,
	Finalizer                           = 34,
	SubgroupSize                        = 35,
	SubgroupsPerWorkgroup               = 36,
	SubgroupsPerWorkgroupId             = 37,
	LocalSizeId                         = 38,
	LocalSizeHintId                     = 39,
	NonCoherentColorAttachmentReadEXT   = 4169,
	NonCoherentDepthAttachmentReadEXT   = 4170,
	NonCoherentStencilAttachmentReadEXT = 4171,
	SubgroupUniformControlFlowKHR       = 4421,
	PostDepthCoverage                   = 4446,
	DenormPreserve                      = 4459,
	DenormFlushToZero                   = 4460,
	SignedZeroInfNanPreserve            = 4461,
	RoundingModeRTE                     = 4462,
	RoundingModeRTZ                     = 4463,
	NonCoherentTileAttachmentReadQCOM   = 4489,
	TileShadingRateQCOM                 = 4490,
	EarlyAndLateFragmentTestsAMD        = 5017,
	StencilRefReplacingEXT              = 5027,
	CoalescingAMDX                      = 5069,
	IsApiEntryAMDX                      = 5070,
	MaxNodeRecursionAMDX                = 5071,
	StaticNumWorkgroupsAMDX             = 5072,
	ShaderIndexAMDX                     = 5073,
	MaxNumWorkgroupsAMDX                = 5077,
	StencilRefUnchangedFrontAMD         = 5079,
	StencilRefGreaterFrontAMD           = 5080,
	StencilRefLessFrontAMD              = 5081,
	StencilRefUnchangedBackAMD          = 5082,
	StencilRefGreaterBackAMD            = 5083,
	StencilRefLessBackAMD               = 5084,
	QuadDerivativesKHR                  = 5088,
	RequireFullQuadsKHR                 = 5089,
	SharesInputWithAMDX                 = 5102,
	OutputLinesEXT                      = 5269,
	OutputPrimitivesEXT                 = 5270,
	DerivativeGroupQuadsKHR             = 5289,
	DerivativeGroupLinearKHR            = 5290,
	OutputTrianglesEXT                  = 5298,
	PixelInterlockOrderedEXT            = 5366,
	PixelInterlockUnorderedEXT          = 5367,
	SampleInterlockOrderedEXT           = 5368,
	SampleInterlockUnorderedEXT         = 5369,
	ShadingRateInterlockOrderedEXT      = 5370,
	ShadingRateInterlockUnorderedEXT    = 5371,
	SharedLocalMemorySizeINTEL          = 5618,
	RoundingModeRTPINTEL                = 5620,
	RoundingModeRTNINTEL                = 5621,
	FloatingPointModeALTINTEL           = 5622,
	FloatingPointModeIEEEINTEL          = 5623,
	MaxWorkgroupSizeINTEL               = 5893,
	MaxWorkDimINTEL                     = 5894,
	NoGlobalOffsetINTEL                 = 5895,
	NumSIMDWorkitemsINTEL               = 5896,
	SchedulerTargetFmaxMhzINTEL         = 5903,
	MaximallyReconvergesKHR             = 6023,
	FPFastMathDefault                   = 6028,
	StreamingInterfaceINTEL             = 6154,
	RegisterMapInterfaceINTEL           = 6160,
	NamedBarrierCountINTEL              = 6417,
	MaximumRegistersINTEL               = 6461,
	MaximumRegistersIdINTEL             = 6462,
	NamedMaximumRegistersINTEL          = 6463,
}

StorageClass :: enum u32 {
	UniformConstant         = 0,
	Input                   = 1,
	Uniform                 = 2,
	Output                  = 3,
	Workgroup               = 4,
	CrossWorkgroup          = 5,
	Private                 = 6,
	Function                = 7,
	Generic                 = 8,
	PushConstant            = 9,
	AtomicCounter           = 10,
	Image                   = 11,
	StorageBuffer           = 12,
	TileImageEXT            = 4172,
	TileAttachmentQCOM      = 4491,
	NodePayloadAMDX         = 5068,
	CallableDataKHR         = 5328,
	IncomingCallableDataKHR = 5329,
	RayPayloadKHR           = 5338,
	HitAttributeKHR         = 5339,
	IncomingRayPayloadKHR   = 5342,
	ShaderRecordBufferKHR   = 5343,
	PhysicalStorageBuffer   = 5349,
	HitObjectAttributeNV    = 5385,
	TaskPayloadWorkgroupEXT = 5402,
	CodeSectionINTEL        = 5605,
	DeviceOnlyINTEL         = 5936,
	HostOnlyINTEL           = 5937,
}

Dim :: enum u32 {
	_1D              = 0,
	_2D              = 1,
	_3D              = 2,
	Cube             = 3,
	Rect             = 4,
	Buffer           = 5,
	SubpassData      = 6,
	TileImageDataEXT = 4173,
}

SamplerAddressingMode :: enum u32 {
	None           = 0,
	ClampToEdge    = 1,
	Clamp          = 2,
	Repeat         = 3,
	RepeatMirrored = 4,
}

SamplerFilterMode :: enum u32 {
	Nearest = 0,
	Linear  = 1,
}

ImageFormat :: enum u32 {
	Unknown      = 0,
	Rgba32f      = 1,
	Rgba16f      = 2,
	R32f         = 3,
	Rgba8        = 4,
	Rgba8Snorm   = 5,
	Rg32f        = 6,
	Rg16f        = 7,
	R11fG11fB10f = 8,
	R16f         = 9,
	Rgba16       = 10,
	Rgb10A2      = 11,
	Rg16         = 12,
	Rg8          = 13,
	R16          = 14,
	R8           = 15,
	Rgba16Snorm  = 16,
	Rg16Snorm    = 17,
	Rg8Snorm     = 18,
	R16Snorm     = 19,
	R8Snorm      = 20,
	Rgba32i      = 21,
	Rgba16i      = 22,
	Rgba8i       = 23,
	R32i         = 24,
	Rg32i        = 25,
	Rg16i        = 26,
	Rg8i         = 27,
	R16i         = 28,
	R8i          = 29,
	Rgba32ui     = 30,
	Rgba16ui     = 31,
	Rgba8ui      = 32,
	R32ui        = 33,
	Rgb10a2ui    = 34,
	Rg32ui       = 35,
	Rg16ui       = 36,
	Rg8ui        = 37,
	R16ui        = 38,
	R8ui         = 39,
	R64ui        = 40,
	R64i         = 41,
}

ImageChannelOrder :: enum u32 {
	R            = 0,
	A            = 1,
	RG           = 2,
	RA           = 3,
	RGB          = 4,
	RGBA         = 5,
	BGRA         = 6,
	ARGB         = 7,
	Intensity    = 8,
	Luminance    = 9,
	Rx           = 10,
	RGx          = 11,
	RGBx         = 12,
	Depth        = 13,
	DepthStencil = 14,
	sRGB         = 15,
	sRGBx        = 16,
	sRGBA        = 17,
	sBGRA        = 18,
	ABGR         = 19,
}

ImageChannelDataType :: enum u32 {
	SnormInt8           = 0,
	SnormInt16          = 1,
	UnormInt8           = 2,
	UnormInt16          = 3,
	UnormShort565       = 4,
	UnormShort555       = 5,
	UnormInt101010      = 6,
	SignedInt8          = 7,
	SignedInt16         = 8,
	SignedInt32         = 9,
	UnsignedInt8        = 10,
	UnsignedInt16       = 11,
	UnsignedInt32       = 12,
	HalfFloat           = 13,
	Float               = 14,
	UnormInt24          = 15,
	UnormInt101010_2    = 16,
	UnormInt10X6EXT     = 17,
	UnsignedIntRaw10EXT = 19,
	UnsignedIntRaw12EXT = 20,
	UnormInt2_101010EXT = 21,
	UnsignedInt10X6EXT  = 22,
	UnsignedInt12X4EXT  = 23,
	UnsignedInt14X2EXT  = 24,
	UnormInt12X4EXT     = 25,
	UnormInt14X2EXT     = 26,
}

FPRoundingMode :: enum u32 {
	RTE = 0,
	RTZ = 1,
	RTP = 2,
	RTN = 3,
}

FPDenormMode :: enum u32 {
	Preserve    = 0,
	FlushToZero = 1,
}

QuantizationModes :: enum u32 {
	TRN          = 0,
	TRN_ZERO     = 1,
	RND          = 2,
	RND_ZERO     = 3,
	RND_INF      = 4,
	RND_MIN_INF  = 5,
	RND_CONV     = 6,
	RND_CONV_ODD = 7,
}

FPOperationMode :: enum u32 {
	IEEE = 0,
	ALT  = 1,
}

OverflowModes :: enum u32 {
	WRAP     = 0,
	SAT      = 1,
	SAT_ZERO = 2,
	SAT_SYM  = 3,
}

LinkageType :: enum u32 {
	Export      = 0,
	Import      = 1,
	LinkOnceODR = 2,
}

AccessQualifier :: enum u32 {
	ReadOnly  = 0,
	WriteOnly = 1,
	ReadWrite = 2,
}

HostAccessQualifier :: enum u32 {
	NoneINTEL      = 0,
	ReadINTEL      = 1,
	WriteINTEL     = 2,
	ReadWriteINTEL = 3,
}

FunctionParameterAttribute :: enum u32 {
	Zext                = 0,
	Sext                = 1,
	ByVal               = 2,
	Sret                = 3,
	NoAlias             = 4,
	NoCapture           = 5,
	NoWrite             = 6,
	NoReadWrite         = 7,
	RuntimeAlignedINTEL = 5940,
}

Decoration :: enum u32 {
	RelaxedPrecision                            = 0,
	SpecId                                      = 1,
	Block                                       = 2,
	BufferBlock                                 = 3,
	RowMajor                                    = 4,
	ColMajor                                    = 5,
	ArrayStride                                 = 6,
	MatrixStride                                = 7,
	GLSLShared                                  = 8,
	GLSLPacked                                  = 9,
	CPacked                                     = 10,
	BuiltIn                                     = 11,
	NoPerspective                               = 13,
	Flat                                        = 14,
	Patch                                       = 15,
	Centroid                                    = 16,
	Sample                                      = 17,
	Invariant                                   = 18,
	Restrict                                    = 19,
	Aliased                                     = 20,
	Volatile                                    = 21,
	Constant                                    = 22,
	Coherent                                    = 23,
	NonWritable                                 = 24,
	NonReadable                                 = 25,
	Uniform                                     = 26,
	UniformId                                   = 27,
	SaturatedConversion                         = 28,
	Stream                                      = 29,
	Location                                    = 30,
	Component                                   = 31,
	Index                                       = 32,
	Binding                                     = 33,
	DescriptorSet                               = 34,
	Offset                                      = 35,
	XfbBuffer                                   = 36,
	XfbStride                                   = 37,
	FuncParamAttr                               = 38,
	FPRoundingMode                              = 39,
	FPFastMathMode                              = 40,
	LinkageAttributes                           = 41,
	NoContraction                               = 42,
	InputAttachmentIndex                        = 43,
	Alignment                                   = 44,
	MaxByteOffset                               = 45,
	AlignmentId                                 = 46,
	MaxByteOffsetId                             = 47,
	SaturatedToLargestFloat8NormalConversionEXT = 4216,
	NoSignedWrap                                = 4469,
	NoUnsignedWrap                              = 4470,
	WeightTextureQCOM                           = 4487,
	BlockMatchTextureQCOM                       = 4488,
	BlockMatchSamplerQCOM                       = 4499,
	ExplicitInterpAMD                           = 4999,
	NodeSharesPayloadLimitsWithAMDX             = 5019,
	NodeMaxPayloadsAMDX                         = 5020,
	TrackFinishWritingAMDX                      = 5078,
	PayloadNodeNameAMDX                         = 5091,
	PayloadNodeBaseIndexAMDX                    = 5098,
	PayloadNodeSparseArrayAMDX                  = 5099,
	PayloadNodeArraySizeAMDX                    = 5100,
	PayloadDispatchIndirectAMDX                 = 5105,
	OverrideCoverageNV                          = 5248,
	PassthroughNV                               = 5250,
	ViewportRelativeNV                          = 5252,
	SecondaryViewportRelativeNV                 = 5256,
	PerPrimitiveEXT                             = 5271,
	PerViewNV                                   = 5272,
	PerTaskNV                                   = 5273,
	PerVertexKHR                                = 5285,
	NonUniform                                  = 5300,
	RestrictPointer                             = 5355,
	AliasedPointer                              = 5356,
	HitObjectShaderRecordBufferNV               = 5386,
	BindlessSamplerNV                           = 5398,
	BindlessImageNV                             = 5399,
	BoundSamplerNV                              = 5400,
	BoundImageNV                                = 5401,
	SIMTCallINTEL                               = 5599,
	ReferencedIndirectlyINTEL                   = 5602,
	ClobberINTEL                                = 5607,
	SideEffectsINTEL                            = 5608,
	VectorComputeVariableINTEL                  = 5624,
	FuncParamIOKindINTEL                        = 5625,
	VectorComputeFunctionINTEL                  = 5626,
	StackCallINTEL                              = 5627,
	GlobalVariableOffsetINTEL                   = 5628,
	CounterBuffer                               = 5634,
	UserSemantic                                = 5635,
	UserTypeGOOGLE                              = 5636,
	FunctionRoundingModeINTEL                   = 5822,
	FunctionDenormModeINTEL                     = 5823,
	RegisterINTEL                               = 5825,
	MemoryINTEL                                 = 5826,
	NumbanksINTEL                               = 5827,
	BankwidthINTEL                              = 5828,
	MaxPrivateCopiesINTEL                       = 5829,
	SinglepumpINTEL                             = 5830,
	DoublepumpINTEL                             = 5831,
	MaxReplicatesINTEL                          = 5832,
	SimpleDualPortINTEL                         = 5833,
	MergeINTEL                                  = 5834,
	BankBitsINTEL                               = 5835,
	ForcePow2DepthINTEL                         = 5836,
	StridesizeINTEL                             = 5883,
	WordsizeINTEL                               = 5884,
	TrueDualPortINTEL                           = 5885,
	BurstCoalesceINTEL                          = 5899,
	CacheSizeINTEL                              = 5900,
	DontStaticallyCoalesceINTEL                 = 5901,
	PrefetchINTEL                               = 5902,
	StallEnableINTEL                            = 5905,
	FuseLoopsInFunctionINTEL                    = 5907,
	MathOpDSPModeINTEL                          = 5909,
	AliasScopeINTEL                             = 5914,
	NoAliasINTEL                                = 5915,
	InitiationIntervalINTEL                     = 5917,
	MaxConcurrencyINTEL                         = 5918,
	PipelineEnableINTEL                         = 5919,
	BufferLocationINTEL                         = 5921,
	IOPipeStorageINTEL                          = 5944,
	FunctionFloatingPointModeINTEL              = 6080,
	SingleElementVectorINTEL                    = 6085,
	VectorComputeCallableFunctionINTEL          = 6087,
	MediaBlockIOINTEL                           = 6140,
	StallFreeINTEL                              = 6151,
	FPMaxErrorDecorationINTEL                   = 6170,
	LatencyControlLabelINTEL                    = 6172,
	LatencyControlConstraintINTEL               = 6173,
	ConduitKernelArgumentINTEL                  = 6175,
	RegisterMapKernelArgumentINTEL              = 6176,
	MMHostInterfaceAddressWidthINTEL            = 6177,
	MMHostInterfaceDataWidthINTEL               = 6178,
	MMHostInterfaceLatencyINTEL                 = 6179,
	MMHostInterfaceReadWriteModeINTEL           = 6180,
	MMHostInterfaceMaxBurstINTEL                = 6181,
	MMHostInterfaceWaitRequestINTEL             = 6182,
	StableKernelArgumentINTEL                   = 6183,
	HostAccessINTEL                             = 6188,
	InitModeINTEL                               = 6190,
	ImplementInRegisterMapINTEL                 = 6191,
	ConditionalINTEL                            = 6247,
	CacheControlLoadINTEL                       = 6442,
	CacheControlStoreINTEL                      = 6443,
}

BuiltIn :: enum u32 {
	Position                             = 0,
	PointSize                            = 1,
	ClipDistance                         = 3,
	CullDistance                         = 4,
	VertexId                             = 5,
	InstanceId                           = 6,
	PrimitiveId                          = 7,
	InvocationId                         = 8,
	Layer                                = 9,
	ViewportIndex                        = 10,
	TessLevelOuter                       = 11,
	TessLevelInner                       = 12,
	TessCoord                            = 13,
	PatchVertices                        = 14,
	FragCoord                            = 15,
	PointCoord                           = 16,
	FrontFacing                          = 17,
	SampleId                             = 18,
	SamplePosition                       = 19,
	SampleMask                           = 20,
	FragDepth                            = 22,
	HelperInvocation                     = 23,
	NumWorkgroups                        = 24,
	WorkgroupSize                        = 25,
	WorkgroupId                          = 26,
	LocalInvocationId                    = 27,
	GlobalInvocationId                   = 28,
	LocalInvocationIndex                 = 29,
	WorkDim                              = 30,
	GlobalSize                           = 31,
	EnqueuedWorkgroupSize                = 32,
	GlobalOffset                         = 33,
	GlobalLinearId                       = 34,
	SubgroupSize                         = 36,
	SubgroupMaxSize                      = 37,
	NumSubgroups                         = 38,
	NumEnqueuedSubgroups                 = 39,
	SubgroupId                           = 40,
	SubgroupLocalInvocationId            = 41,
	VertexIndex                          = 42,
	InstanceIndex                        = 43,
	CoreIDARM                            = 4160,
	CoreCountARM                         = 4161,
	CoreMaxIDARM                         = 4162,
	WarpIDARM                            = 4163,
	WarpMaxIDARM                         = 4164,
	SubgroupEqMask                       = 4416,
	SubgroupGeMask                       = 4417,
	SubgroupGtMask                       = 4418,
	SubgroupLeMask                       = 4419,
	SubgroupLtMask                       = 4420,
	BaseVertex                           = 4424,
	BaseInstance                         = 4425,
	DrawIndex                            = 4426,
	PrimitiveShadingRateKHR              = 4432,
	DeviceIndex                          = 4438,
	ViewIndex                            = 4440,
	ShadingRateKHR                       = 4444,
	TileOffsetQCOM                       = 4492,
	TileDimensionQCOM                    = 4493,
	TileApronSizeQCOM                    = 4494,
	BaryCoordNoPerspAMD                  = 4992,
	BaryCoordNoPerspCentroidAMD          = 4993,
	BaryCoordNoPerspSampleAMD            = 4994,
	BaryCoordSmoothAMD                   = 4995,
	BaryCoordSmoothCentroidAMD           = 4996,
	BaryCoordSmoothSampleAMD             = 4997,
	BaryCoordPullModelAMD                = 4998,
	FragStencilRefEXT                    = 5014,
	RemainingRecursionLevelsAMDX         = 5021,
	ShaderIndexAMDX                      = 5073,
	ViewportMaskNV                       = 5253,
	SecondaryPositionNV                  = 5257,
	SecondaryViewportMaskNV              = 5258,
	PositionPerViewNV                    = 5261,
	ViewportMaskPerViewNV                = 5262,
	FullyCoveredEXT                      = 5264,
	TaskCountNV                          = 5274,
	PrimitiveCountNV                     = 5275,
	PrimitiveIndicesNV                   = 5276,
	ClipDistancePerViewNV                = 5277,
	CullDistancePerViewNV                = 5278,
	LayerPerViewNV                       = 5279,
	MeshViewCountNV                      = 5280,
	MeshViewIndicesNV                    = 5281,
	BaryCoordKHR                         = 5286,
	BaryCoordNoPerspKHR                  = 5287,
	FragSizeEXT                          = 5292,
	FragInvocationCountEXT               = 5293,
	PrimitivePointIndicesEXT             = 5294,
	PrimitiveLineIndicesEXT              = 5295,
	PrimitiveTriangleIndicesEXT          = 5296,
	CullPrimitiveEXT                     = 5299,
	LaunchIdKHR                          = 5319,
	LaunchSizeKHR                        = 5320,
	WorldRayOriginKHR                    = 5321,
	WorldRayDirectionKHR                 = 5322,
	ObjectRayOriginKHR                   = 5323,
	ObjectRayDirectionKHR                = 5324,
	RayTminKHR                           = 5325,
	RayTmaxKHR                           = 5326,
	InstanceCustomIndexKHR               = 5327,
	ObjectToWorldKHR                     = 5330,
	WorldToObjectKHR                     = 5331,
	HitTNV                               = 5332,
	HitKindKHR                           = 5333,
	CurrentRayTimeNV                     = 5334,
	HitTriangleVertexPositionsKHR        = 5335,
	HitMicroTriangleVertexPositionsNV    = 5337,
	HitMicroTriangleVertexBarycentricsNV = 5344,
	IncomingRayFlagsKHR                  = 5351,
	RayGeometryIndexKHR                  = 5352,
	HitIsSphereNV                        = 5359,
	HitIsLSSNV                           = 5360,
	HitSpherePositionNV                  = 5361,
	WarpsPerSMNV                         = 5374,
	SMCountNV                            = 5375,
	WarpIDNV                             = 5376,
	SMIDNV                               = 5377,
	HitLSSPositionsNV                    = 5396,
	HitKindFrontFacingMicroTriangleNV    = 5405,
	HitKindBackFacingMicroTriangleNV     = 5406,
	HitSphereRadiusNV                    = 5420,
	HitLSSRadiiNV                        = 5421,
	ClusterIDNV                          = 5436,
	CullMaskKHR                          = 6021,
}

Scope :: enum u32 {
	CrossDevice   = 0,
	Device        = 1,
	Workgroup     = 2,
	Subgroup      = 3,
	Invocation    = 4,
	QueueFamily   = 5,
	ShaderCallKHR = 6,
}

GroupOperation :: enum u32 {
	Reduce                     = 0,
	InclusiveScan              = 1,
	ExclusiveScan              = 2,
	ClusteredReduce            = 3,
	PartitionedReduceNV        = 6,
	PartitionedInclusiveScanNV = 7,
	PartitionedExclusiveScanNV = 8,
}

KernelEnqueueFlags :: enum u32 {
	NoWait        = 0,
	WaitKernel    = 1,
	WaitWorkGroup = 2,
}

Capability :: enum u32 {
	Matrix                                      = 0,
	Shader                                      = 1,
	Geometry                                    = 2,
	Tessellation                                = 3,
	Addresses                                   = 4,
	Linkage                                     = 5,
	Kernel                                      = 6,
	Vector16                                    = 7,
	Float16Buffer                               = 8,
	Float16                                     = 9,
	Float64                                     = 10,
	Int64                                       = 11,
	Int64Atomics                                = 12,
	ImageBasic                                  = 13,
	ImageReadWrite                              = 14,
	ImageMipmap                                 = 15,
	Pipes                                       = 17,
	Groups                                      = 18,
	DeviceEnqueue                               = 19,
	LiteralSampler                              = 20,
	AtomicStorage                               = 21,
	Int16                                       = 22,
	TessellationPointSize                       = 23,
	GeometryPointSize                           = 24,
	ImageGatherExtended                         = 25,
	StorageImageMultisample                     = 27,
	UniformBufferArrayDynamicIndexing           = 28,
	SampledImageArrayDynamicIndexing            = 29,
	StorageBufferArrayDynamicIndexing           = 30,
	StorageImageArrayDynamicIndexing            = 31,
	ClipDistance                                = 32,
	CullDistance                                = 33,
	ImageCubeArray                              = 34,
	SampleRateShading                           = 35,
	ImageRect                                   = 36,
	SampledRect                                 = 37,
	GenericPointer                              = 38,
	Int8                                        = 39,
	InputAttachment                             = 40,
	SparseResidency                             = 41,
	MinLod                                      = 42,
	Sampled1D                                   = 43,
	Image1D                                     = 44,
	SampledCubeArray                            = 45,
	SampledBuffer                               = 46,
	ImageBuffer                                 = 47,
	ImageMSArray                                = 48,
	StorageImageExtendedFormats                 = 49,
	ImageQuery                                  = 50,
	DerivativeControl                           = 51,
	InterpolationFunction                       = 52,
	TransformFeedback                           = 53,
	GeometryStreams                             = 54,
	StorageImageReadWithoutFormat               = 55,
	StorageImageWriteWithoutFormat              = 56,
	MultiViewport                               = 57,
	SubgroupDispatch                            = 58,
	NamedBarrier                                = 59,
	PipeStorage                                 = 60,
	GroupNonUniform                             = 61,
	GroupNonUniformVote                         = 62,
	GroupNonUniformArithmetic                   = 63,
	GroupNonUniformBallot                       = 64,
	GroupNonUniformShuffle                      = 65,
	GroupNonUniformShuffleRelative              = 66,
	GroupNonUniformClustered                    = 67,
	GroupNonUniformQuad                         = 68,
	ShaderLayer                                 = 69,
	ShaderViewportIndex                         = 70,
	UniformDecoration                           = 71,
	CoreBuiltinsARM                             = 4165,
	TileImageColorReadAccessEXT                 = 4166,
	TileImageDepthReadAccessEXT                 = 4167,
	TileImageStencilReadAccessEXT               = 4168,
	TensorsARM                                  = 4174,
	StorageTensorArrayDynamicIndexingARM        = 4175,
	StorageTensorArrayNonUniformIndexingARM     = 4176,
	GraphARM                                    = 4191,
	CooperativeMatrixLayoutsARM                 = 4201,
	Float8EXT                                   = 4212,
	Float8CooperativeMatrixEXT                  = 4213,
	FragmentShadingRateKHR                      = 4422,
	SubgroupBallotKHR                           = 4423,
	DrawParameters                              = 4427,
	WorkgroupMemoryExplicitLayoutKHR            = 4428,
	WorkgroupMemoryExplicitLayout8BitAccessKHR  = 4429,
	WorkgroupMemoryExplicitLayout16BitAccessKHR = 4430,
	SubgroupVoteKHR                             = 4431,
	StorageBuffer16BitAccess                    = 4433,
	UniformAndStorageBuffer16BitAccess          = 4434,
	StoragePushConstant16                       = 4435,
	StorageInputOutput16                        = 4436,
	DeviceGroup                                 = 4437,
	MultiView                                   = 4439,
	VariablePointersStorageBuffer               = 4441,
	VariablePointers                            = 4442,
	AtomicStorageOps                            = 4445,
	SampleMaskPostDepthCoverage                 = 4447,
	StorageBuffer8BitAccess                     = 4448,
	UniformAndStorageBuffer8BitAccess           = 4449,
	StoragePushConstant8                        = 4450,
	DenormPreserve                              = 4464,
	DenormFlushToZero                           = 4465,
	SignedZeroInfNanPreserve                    = 4466,
	RoundingModeRTE                             = 4467,
	RoundingModeRTZ                             = 4468,
	RayQueryProvisionalKHR                      = 4471,
	RayQueryKHR                                 = 4472,
	UntypedPointersKHR                          = 4473,
	RayTraversalPrimitiveCullingKHR             = 4478,
	RayTracingKHR                               = 4479,
	TextureSampleWeightedQCOM                   = 4484,
	TextureBoxFilterQCOM                        = 4485,
	TextureBlockMatchQCOM                       = 4486,
	TileShadingQCOM                             = 4495,
	CooperativeMatrixConversionQCOM             = 4496,
	TextureBlockMatch2QCOM                      = 4498,
	Float16ImageAMD                             = 5008,
	ImageGatherBiasLodAMD                       = 5009,
	FragmentMaskAMD                             = 5010,
	StencilExportEXT                            = 5013,
	ImageReadWriteLodAMD                        = 5015,
	Int64ImageEXT                               = 5016,
	ShaderClockKHR                              = 5055,
	ShaderEnqueueAMDX                           = 5067,
	QuadControlKHR                              = 5087,
	Int4TypeINTEL                               = 5112,
	Int4CooperativeMatrixINTEL                  = 5114,
	BFloat16TypeKHR                             = 5116,
	BFloat16DotProductKHR                       = 5117,
	BFloat16CooperativeMatrixKHR                = 5118,
	SampleMaskOverrideCoverageNV                = 5249,
	GeometryShaderPassthroughNV                 = 5251,
	ShaderViewportIndexLayerEXT                 = 5254,
	ShaderViewportMaskNV                        = 5255,
	ShaderStereoViewNV                          = 5259,
	PerViewAttributesNV                         = 5260,
	FragmentFullyCoveredEXT                     = 5265,
	MeshShadingNV                               = 5266,
	ImageFootprintNV                            = 5282,
	MeshShadingEXT                              = 5283,
	FragmentBarycentricKHR                      = 5284,
	ComputeDerivativeGroupQuadsKHR              = 5288,
	FragmentDensityEXT                          = 5291,
	GroupNonUniformPartitionedNV                = 5297,
	ShaderNonUniform                            = 5301,
	RuntimeDescriptorArray                      = 5302,
	InputAttachmentArrayDynamicIndexing         = 5303,
	UniformTexelBufferArrayDynamicIndexing      = 5304,
	StorageTexelBufferArrayDynamicIndexing      = 5305,
	UniformBufferArrayNonUniformIndexing        = 5306,
	SampledImageArrayNonUniformIndexing         = 5307,
	StorageBufferArrayNonUniformIndexing        = 5308,
	StorageImageArrayNonUniformIndexing         = 5309,
	InputAttachmentArrayNonUniformIndexing      = 5310,
	UniformTexelBufferArrayNonUniformIndexing   = 5311,
	StorageTexelBufferArrayNonUniformIndexing   = 5312,
	RayTracingPositionFetchKHR                  = 5336,
	RayTracingNV                                = 5340,
	RayTracingMotionBlurNV                      = 5341,
	VulkanMemoryModel                           = 5345,
	VulkanMemoryModelDeviceScope                = 5346,
	PhysicalStorageBufferAddresses              = 5347,
	ComputeDerivativeGroupLinearKHR             = 5350,
	RayTracingProvisionalKHR                    = 5353,
	CooperativeMatrixNV                         = 5357,
	FragmentShaderSampleInterlockEXT            = 5363,
	FragmentShaderShadingRateInterlockEXT       = 5372,
	ShaderSMBuiltinsNV                          = 5373,
	FragmentShaderPixelInterlockEXT             = 5378,
	DemoteToHelperInvocation                    = 5379,
	DisplacementMicromapNV                      = 5380,
	RayTracingOpacityMicromapEXT                = 5381,
	ShaderInvocationReorderNV                   = 5383,
	BindlessTextureNV                           = 5390,
	RayQueryPositionFetchKHR                    = 5391,
	CooperativeVectorNV                         = 5394,
	AtomicFloat16VectorNV                       = 5404,
	RayTracingDisplacementMicromapNV            = 5409,
	RawAccessChainsNV                           = 5414,
	RayTracingSpheresGeometryNV                 = 5418,
	RayTracingLinearSweptSpheresGeometryNV      = 5419,
	CooperativeMatrixReductionsNV               = 5430,
	CooperativeMatrixConversionsNV              = 5431,
	CooperativeMatrixPerElementOperationsNV     = 5432,
	CooperativeMatrixTensorAddressingNV         = 5433,
	CooperativeMatrixBlockLoadsNV               = 5434,
	CooperativeVectorTrainingNV                 = 5435,
	RayTracingClusterAccelerationStructureNV    = 5437,
	TensorAddressingNV                          = 5439,
	SubgroupShuffleINTEL                        = 5568,
	SubgroupBufferBlockIOINTEL                  = 5569,
	SubgroupImageBlockIOINTEL                   = 5570,
	SubgroupImageMediaBlockIOINTEL              = 5579,
	RoundToInfinityINTEL                        = 5582,
	FloatingPointModeINTEL                      = 5583,
	IntegerFunctions2INTEL                      = 5584,
	FunctionPointersINTEL                       = 5603,
	IndirectReferencesINTEL                     = 5604,
	AsmINTEL                                    = 5606,
	AtomicFloat32MinMaxEXT                      = 5612,
	AtomicFloat64MinMaxEXT                      = 5613,
	AtomicFloat16MinMaxEXT                      = 5616,
	VectorComputeINTEL                          = 5617,
	VectorAnyINTEL                              = 5619,
	ExpectAssumeKHR                             = 5629,
	SubgroupAvcMotionEstimationINTEL            = 5696,
	SubgroupAvcMotionEstimationIntraINTEL       = 5697,
	SubgroupAvcMotionEstimationChromaINTEL      = 5698,
	VariableLengthArrayINTEL                    = 5817,
	FunctionFloatControlINTEL                   = 5821,
	FPGAMemoryAttributesINTEL                   = 5824,
	FPFastMathModeINTEL                         = 5837,
	ArbitraryPrecisionIntegersINTEL             = 5844,
	ArbitraryPrecisionFloatingPointINTEL        = 5845,
	UnstructuredLoopControlsINTEL               = 5886,
	FPGALoopControlsINTEL                       = 5888,
	KernelAttributesINTEL                       = 5892,
	FPGAKernelAttributesINTEL                   = 5897,
	FPGAMemoryAccessesINTEL                     = 5898,
	FPGAClusterAttributesINTEL                  = 5904,
	LoopFuseINTEL                               = 5906,
	FPGADSPControlINTEL                         = 5908,
	MemoryAccessAliasingINTEL                   = 5910,
	FPGAInvocationPipeliningAttributesINTEL     = 5916,
	FPGABufferLocationINTEL                     = 5920,
	ArbitraryPrecisionFixedPointINTEL           = 5922,
	USMStorageClassesINTEL                      = 5935,
	RuntimeAlignedAttributeINTEL                = 5939,
	IOPipesINTEL                                = 5943,
	BlockingPipesINTEL                          = 5945,
	FPGARegINTEL                                = 5948,
	DotProductInputAll                          = 6016,
	DotProductInput4x8Bit                       = 6017,
	DotProductInput4x8BitPacked                 = 6018,
	DotProduct                                  = 6019,
	RayCullMaskKHR                              = 6020,
	CooperativeMatrixKHR                        = 6022,
	ReplicatedCompositesEXT                     = 6024,
	BitInstructions                             = 6025,
	GroupNonUniformRotateKHR                    = 6026,
	FloatControls2                              = 6029,
	AtomicFloat32AddEXT                         = 6033,
	AtomicFloat64AddEXT                         = 6034,
	LongCompositesINTEL                         = 6089,
	OptNoneEXT                                  = 6094,
	AtomicFloat16AddEXT                         = 6095,
	DebugInfoModuleINTEL                        = 6114,
	BFloat16ConversionINTEL                     = 6115,
	SplitBarrierINTEL                           = 6141,
	ArithmeticFenceEXT                          = 6144,
	FPGAClusterAttributesV2INTEL                = 6150,
	FPGAKernelAttributesv2INTEL                 = 6161,
	TaskSequenceINTEL                           = 6162,
	FPMaxErrorINTEL                             = 6169,
	FPGALatencyControlINTEL                     = 6171,
	FPGAArgumentInterfacesINTEL                 = 6174,
	GlobalVariableHostAccessINTEL               = 6187,
	GlobalVariableFPGADecorationsINTEL          = 6189,
	SubgroupBufferPrefetchINTEL                 = 6220,
	Subgroup2DBlockIOINTEL                      = 6228,
	Subgroup2DBlockTransformINTEL               = 6229,
	Subgroup2DBlockTransposeINTEL               = 6230,
	SubgroupMatrixMultiplyAccumulateINTEL       = 6236,
	TernaryBitwiseFunctionINTEL                 = 6241,
	UntypedVariableLengthArrayINTEL             = 6243,
	SpecConditionalINTEL                        = 6245,
	FunctionVariantsINTEL                       = 6246,
	GroupUniformArithmeticKHR                   = 6400,
	TensorFloat32RoundingINTEL                  = 6425,
	MaskedGatherScatterINTEL                    = 6427,
	CacheControlsINTEL                          = 6441,
	RegisterLimitsINTEL                         = 6460,
	BindlessImagesINTEL                         = 6528,
}

RayQueryIntersection :: enum u32 {
	RayQueryCandidateIntersectionKHR = 0,
	RayQueryCommittedIntersectionKHR = 1,
}

RayQueryCommittedIntersectionType :: enum u32 {
	NoneKHR      = 0,
	TriangleKHR  = 1,
	GeneratedKHR = 2,
}

RayQueryCandidateIntersectionType :: enum u32 {
	TriangleKHR = 0,
	AABBKHR     = 1,
}

PackedVectorFormat :: enum u32 {
	PackedVectorFormat4x8Bit = 0,
}

CooperativeMatrixOperands :: bit_set[enum u32 {
	MatrixASignedComponentsKHR      = 0,
	MatrixBSignedComponentsKHR      = 1,
	MatrixCSignedComponentsKHR      = 2,
	MatrixResultSignedComponentsKHR = 3,
	SaturatingAccumulationKHR       = 4,
}; u32]

CooperativeMatrixLayout :: enum u32 {
	RowMajorKHR                 = 0,
	ColumnMajorKHR              = 1,
	RowBlockedInterleavedARM    = 4202,
	ColumnBlockedInterleavedARM = 4203,
}

CooperativeMatrixUse :: enum u32 {
	MatrixAKHR           = 0,
	MatrixBKHR           = 1,
	MatrixAccumulatorKHR = 2,
}

CooperativeMatrixReduce :: bit_set[enum u32 {
	Row    = 0,
	Column = 1,
	_2x2   = 2,
}; u32]

TensorClampMode :: enum u32 {
	Undefined      = 0,
	Constant       = 1,
	ClampToEdge    = 2,
	Repeat         = 3,
	RepeatMirrored = 4,
}

TensorAddressingOperands :: bit_set[enum u32 {
	TensorView = 0,
	DecodeFunc = 1,
}; u32]

InitializationModeQualifier :: enum u32 {
	InitOnDeviceReprogramINTEL = 0,
	InitOnDeviceResetINTEL     = 1,
}

LoadCacheControl :: enum u32 {
	UncachedINTEL            = 0,
	CachedINTEL              = 1,
	StreamingINTEL           = 2,
	InvalidateAfterReadINTEL = 3,
	ConstCachedINTEL         = 4,
}

StoreCacheControl :: enum u32 {
	UncachedINTEL     = 0,
	WriteThroughINTEL = 1,
	WriteBackINTEL    = 2,
	StreamingINTEL    = 3,
}

NamedMaximumNumberOfRegisters :: enum u32 {
	AutoINTEL = 0,
}

MatrixMultiplyAccumulateOperands :: bit_set[enum u32 {
	ASignedComponentsINTEL = 0,
	BSignedComponentsINTEL = 1,
	CBFloat16INTEL         = 2,
	ResultBFloat16INTEL    = 3,
	APackedInt8INTEL       = 4,
	BPackedInt8INTEL       = 5,
	APackedInt4INTEL       = 6,
	BPackedInt4INTEL       = 7,
	ATF32INTEL             = 8,
	BTF32INTEL             = 9,
	APackedFloat16INTEL    = 10,
	BPackedFloat16INTEL    = 11,
	APackedBFloat16INTEL   = 12,
	BPackedBFloat16INTEL   = 13,
}; u32]

FPEncoding :: enum u32 {
	BFloat16KHR   = 0,
	Float8E4M3EXT = 4214,
	Float8E5M2EXT = 4215,
}

CooperativeVectorMatrixLayout :: enum u32 {
	RowMajorNV           = 0,
	ColumnMajorNV        = 1,
	InferencingOptimalNV = 2,
	TrainingOptimalNV    = 3,
}

ComponentType :: enum u32 {
	Float16NV            = 0,
	Float32NV            = 1,
	Float64NV            = 2,
	SignedInt8NV         = 3,
	SignedInt16NV        = 4,
	SignedInt32NV        = 5,
	SignedInt64NV        = 6,
	UnsignedInt8NV       = 7,
	UnsignedInt16NV      = 8,
	UnsignedInt32NV      = 9,
	UnsignedInt64NV      = 10,
	SignedInt8PackedNV   = 1000491000,
	UnsignedInt8PackedNV = 1000491001,
	FloatE4M3NV          = 1000491002,
	FloatE5M2NV          = 1000491003,
}

PairLiteralIntegerIdRef :: bit_set[enum u32 {
}; u32]

PairIdRefLiteralInteger :: bit_set[enum u32 {
}; u32]

PairIdRefIdRef :: bit_set[enum u32 {
}; u32]

TensorOperands :: bit_set[enum u32 {
	NontemporalARM          = 0,
	OutOfBoundsValueARM     = 1,
	MakeElementAvailableARM = 2,
	MakeElementVisibleARM   = 3,
	NonPrivateElementARM    = 4,
}; u32]

OpNop :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Nop))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpUndef :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Undef))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSourceContinued :: proc(builder: ^Builder, continued_source: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SourceContinued))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	write_string(&builder.data, continued_source)
}

OpSource :: proc(builder: ^Builder, _operand_0: SourceLanguage, version: u32, file: Maybe(Id) = nil, source: Maybe(string) = nil) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Source))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, transmute(u32)_operand_0)
	append(&builder.data, u32(version))
	if file, ok := file.?; ok {
		append(&builder.data, u32(file))
		assert(file != 0)
	}
	if source, ok := source.?; ok {
		write_string(&builder.data, source)
	}
}

OpSourceExtension :: proc(builder: ^Builder, extension: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SourceExtension))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	write_string(&builder.data, extension)
}

OpName :: proc(builder: ^Builder, target: Id, name: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Name))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	write_string(&builder.data, name)
}

OpMemberName :: proc(builder: ^Builder, type: Id, member: u32, name: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemberName))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(type))
	assert(type != 0)
	append(&builder.data, u32(member))
	write_string(&builder.data, name)
}

OpString :: proc(builder: ^Builder, string: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.String))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, string)
	return builder.current_id^
}

OpLine :: proc(builder: ^Builder, file: Id, line: u32, column: u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Line))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(file))
	assert(file != 0)
	append(&builder.data, u32(line))
	append(&builder.data, u32(column))
}

OpExtension :: proc(builder: ^Builder, name: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Extension))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	write_string(&builder.data, name)
}

OpExtInstImport :: proc(builder: ^Builder, name: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExtInstImport))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, name)
	return builder.current_id^
}

OpExtInst :: proc(builder: ^Builder, result_type: Id, set: Id, instruction: u32, _operand_4: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExtInst))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(set))
	assert(set != 0)
	append(&builder.data, u32(instruction))
	for _operand_4 in _operand_4 {
		append(&builder.data, u32(_operand_4))
		assert(_operand_4 != 0)
	}
	return builder.current_id^
}

OpMemoryModel :: proc(builder: ^Builder, _operand_0: AddressingModel, _operand_1: MemoryModel) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemoryModel))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, transmute(u32)_operand_0)
	append(&builder.data, transmute(u32)_operand_1)
}

OpEntryPoint :: proc(builder: ^Builder, _operand_0: ExecutionModel, entry_point: Id, name: string, interface: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EntryPoint))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, transmute(u32)_operand_0)
	append(&builder.data, u32(entry_point))
	assert(entry_point != 0)
	write_string(&builder.data, name)
	for interface in interface {
		append(&builder.data, u32(interface))
		assert(interface != 0)
	}
}

OpExecutionMode :: proc(builder: ^Builder, entry_point: Id, mode: ExecutionMode, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExecutionMode))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(entry_point))
	assert(entry_point != 0)
	append(&builder.data, transmute(u32)mode)
	append(&builder.data, .._params)
}

OpCapability :: proc(builder: ^Builder, capability: Capability) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Capability))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, transmute(u32)capability)
}

OpTypeVoid :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeVoid))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeBool :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeBool))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeInt :: proc(builder: ^Builder, width: u32, signedness: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeInt))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(width))
	append(&builder.data, u32(signedness))
	return builder.current_id^
}

OpTypeFloat :: proc(builder: ^Builder, width: u32, floating_point_encoding: Maybe(FPEncoding) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeFloat))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(width))
	if floating_point_encoding, ok := floating_point_encoding.?; ok {
		append(&builder.data, transmute(u32)floating_point_encoding)
	}
	return builder.current_id^
}

OpTypeVector :: proc(builder: ^Builder, component_type: Id, component_count: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeVector))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(component_type))
	assert(component_type != 0)
	append(&builder.data, u32(component_count))
	return builder.current_id^
}

OpTypeMatrix :: proc(builder: ^Builder, column_type: Id, column_count: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeMatrix))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(column_type))
	assert(column_type != 0)
	append(&builder.data, u32(column_count))
	return builder.current_id^
}

OpTypeImage :: proc(builder: ^Builder, sampled_type: Id, _operand_2: Dim, depth: u32, arrayed: u32, ms: u32, sampled: u32, _operand_7: ImageFormat, _operand_8: Maybe(AccessQualifier) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeImage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_type))
	assert(sampled_type != 0)
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, u32(depth))
	append(&builder.data, u32(arrayed))
	append(&builder.data, u32(ms))
	append(&builder.data, u32(sampled))
	append(&builder.data, transmute(u32)_operand_7)
	if _operand_8, ok := _operand_8.?; ok {
		append(&builder.data, transmute(u32)_operand_8)
	}
	return builder.current_id^
}

OpTypeSampler :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeSampler))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeSampledImage :: proc(builder: ^Builder, image_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeSampledImage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image_type))
	assert(image_type != 0)
	return builder.current_id^
}

OpTypeArray :: proc(builder: ^Builder, element_type: Id, length: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeArray))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(element_type))
	assert(element_type != 0)
	append(&builder.data, u32(length))
	assert(length != 0)
	return builder.current_id^
}

OpTypeRuntimeArray :: proc(builder: ^Builder, element_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeRuntimeArray))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(element_type))
	assert(element_type != 0)
	return builder.current_id^
}

OpTypeStruct :: proc(builder: ^Builder, _operand_1: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeStruct))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	for _operand_1 in _operand_1 {
		append(&builder.data, u32(_operand_1))
		assert(_operand_1 != 0)
	}
	return builder.current_id^
}

OpTypeOpaque :: proc(builder: ^Builder, _operand_1: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeOpaque))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, _operand_1)
	return builder.current_id^
}

OpTypePointer :: proc(builder: ^Builder, _operand_1: StorageClass, type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypePointer))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_1)
	append(&builder.data, u32(type))
	assert(type != 0)
	return builder.current_id^
}

OpTypeFunction :: proc(builder: ^Builder, return_type: Id, _operand_2: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeFunction))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(return_type))
	assert(return_type != 0)
	for _operand_2 in _operand_2 {
		append(&builder.data, u32(_operand_2))
		assert(_operand_2 != 0)
	}
	return builder.current_id^
}

OpTypeEvent :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeDeviceEvent :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeDeviceEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeReserveId :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeReserveId))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeQueue :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeQueue))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypePipe :: proc(builder: ^Builder, qualifier: AccessQualifier) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypePipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)qualifier)
	return builder.current_id^
}

OpTypeForwardPointer :: proc(builder: ^Builder, pointer_type: Id, _operand_1: StorageClass) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeForwardPointer))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer_type))
	assert(pointer_type != 0)
	append(&builder.data, transmute(u32)_operand_1)
}

OpConstantTrue :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantTrue))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpConstantFalse :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantFalse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpConstant :: proc(builder: ^Builder, result_type: Id, value: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Constant))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	return builder.current_id^
}

OpConstantComposite :: proc(builder: ^Builder, result_type: Id, constituents: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantComposite))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
	return builder.current_id^
}

OpConstantSampler :: proc(builder: ^Builder, result_type: Id, _operand_2: SamplerAddressingMode, param: u32, _operand_4: SamplerFilterMode) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantSampler))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, u32(param))
	append(&builder.data, transmute(u32)_operand_4)
	return builder.current_id^
}

OpConstantNull :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantNull))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSpecConstantTrue :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantTrue))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSpecConstantFalse :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantFalse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSpecConstant :: proc(builder: ^Builder, result_type: Id, value: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstant))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	return builder.current_id^
}

OpSpecConstantComposite :: proc(builder: ^Builder, result_type: Id, constituents: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantComposite))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
	return builder.current_id^
}

OpSpecConstantOp :: proc(builder: ^Builder, result_type: Id, opcode: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantOp))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(opcode))
	return builder.current_id^
}

OpFunction :: proc(builder: ^Builder, result_type: Id, _operand_2: FunctionControl, function_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Function))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, u32(function_type))
	assert(function_type != 0)
	return builder.current_id^
}

OpFunctionParameter :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FunctionParameter))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpFunctionEnd :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.FunctionEnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpFunctionCall :: proc(builder: ^Builder, result_type: Id, function: Id, _operand_3: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FunctionCall))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(function))
	assert(function != 0)
	for _operand_3 in _operand_3 {
		append(&builder.data, u32(_operand_3))
		assert(_operand_3 != 0)
	}
	return builder.current_id^
}

OpVariable :: proc(builder: ^Builder, result_type: Id, _operand_2: StorageClass, initializer: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Variable))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_2)
	if initializer, ok := initializer.?; ok {
		append(&builder.data, u32(initializer))
		assert(initializer != 0)
	}
	return builder.current_id^
}

OpImageTexelPointer :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, sample: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageTexelPointer))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(sample))
	assert(sample != 0)
	return builder.current_id^
}

OpLoad :: proc(builder: ^Builder, result_type: Id, pointer: Id, _operand_3: Maybe(MemoryAccess) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Load))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpStore :: proc(builder: ^Builder, pointer: Id, object: Id, _operand_2: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Store))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	if _operand_2, ok := _operand_2.?; ok {
		append(&builder.data, transmute(u32)_operand_2)
		append(&builder.data, .._params)
	}
}

OpCopyMemory :: proc(builder: ^Builder, target: Id, source: Id, _operand_2: Maybe(MemoryAccess) = nil, _params_2: []u32 = {}, _operand_3: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CopyMemory))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, u32(source))
	assert(source != 0)
	if _operand_2, ok := _operand_2.?; ok {
		append(&builder.data, transmute(u32)_operand_2)
		append(&builder.data, .._params_2)
	}
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params)
	}
}

OpCopyMemorySized :: proc(builder: ^Builder, target: Id, source: Id, size: Id, _operand_3: Maybe(MemoryAccess) = nil, _params_3: []u32 = {}, _operand_4: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CopyMemorySized))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, u32(source))
	assert(source != 0)
	append(&builder.data, u32(size))
	assert(size != 0)
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params_3)
	}
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
}

OpAccessChain :: proc(builder: ^Builder, result_type: Id, base: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AccessChain))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpInBoundsAccessChain :: proc(builder: ^Builder, result_type: Id, base: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.InBoundsAccessChain))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpPtrAccessChain :: proc(builder: ^Builder, result_type: Id, base: Id, element: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrAccessChain))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(element))
	assert(element != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpArrayLength :: proc(builder: ^Builder, result_type: Id, structure: Id, array_member: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArrayLength))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(structure))
	assert(structure != 0)
	append(&builder.data, u32(array_member))
	return builder.current_id^
}

OpGenericPtrMemSemantics :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GenericPtrMemSemantics))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpInBoundsPtrAccessChain :: proc(builder: ^Builder, result_type: Id, base: Id, element: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.InBoundsPtrAccessChain))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(element))
	assert(element != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpDecorate :: proc(builder: ^Builder, target: Id, _operand_1: Decoration, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Decorate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, transmute(u32)_operand_1)
	append(&builder.data, .._params)
}

OpMemberDecorate :: proc(builder: ^Builder, structure_type: Id, member: u32, _operand_2: Decoration, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemberDecorate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(structure_type))
	assert(structure_type != 0)
	append(&builder.data, u32(member))
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, .._params)
}

OpDecorationGroup :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DecorationGroup))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpGroupDecorate :: proc(builder: ^Builder, decoration_group: Id, targets: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupDecorate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(decoration_group))
	assert(decoration_group != 0)
	for targets in targets {
		append(&builder.data, u32(targets))
		assert(targets != 0)
	}
}

OpGroupMemberDecorate :: proc(builder: ^Builder, decoration_group: Id, targets: ..Pair(Id, $L)) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupMemberDecorate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(decoration_group))
	assert(decoration_group != 0)
	for targets in targets {
		write_pair(&builder.data, targets)
	}
}

OpVectorExtractDynamic :: proc(builder: ^Builder, result_type: Id, vector: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VectorExtractDynamic))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpVectorInsertDynamic :: proc(builder: ^Builder, result_type: Id, vector: Id, component: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VectorInsertDynamic))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	append(&builder.data, u32(component))
	assert(component != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpVectorShuffle :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, components: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VectorShuffle))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	for components in components {
		append(&builder.data, u32(components))
	}
	return builder.current_id^
}

OpCompositeConstruct :: proc(builder: ^Builder, result_type: Id, constituents: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeConstruct))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
	return builder.current_id^
}

OpCompositeExtract :: proc(builder: ^Builder, result_type: Id, composite: Id, indexes: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeExtract))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(composite))
	assert(composite != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
	}
	return builder.current_id^
}

OpCompositeInsert :: proc(builder: ^Builder, result_type: Id, object: Id, composite: Id, indexes: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeInsert))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(object))
	assert(object != 0)
	append(&builder.data, u32(composite))
	assert(composite != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
	}
	return builder.current_id^
}

OpCopyObject :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CopyObject))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpTranspose :: proc(builder: ^Builder, result_type: Id, matrix_: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Transpose))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	return builder.current_id^
}

OpSampledImage :: proc(builder: ^Builder, result_type: Id, image: Id, sampler: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SampledImage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(sampler))
	assert(sampler != 0)
	return builder.current_id^
}

OpImageSampleImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSampleExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, transmute(u32)_operand_4)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSampleDrefImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleDrefImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSampleDrefExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleDrefExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	append(&builder.data, transmute(u32)_operand_5)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSampleProjImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleProjImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSampleProjExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleProjExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, transmute(u32)_operand_4)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSampleProjDrefImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleProjDrefImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSampleProjDrefExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleProjDrefExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	append(&builder.data, transmute(u32)_operand_5)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageFetch :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageFetch))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageGather :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, component: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageGather))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(component))
	assert(component != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageDrefGather :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageDrefGather))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageRead :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageRead))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageWrite :: proc(builder: ^Builder, image: Id, coordinate: Id, texel: Id, _operand_3: Maybe(ImageOperands) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageWrite))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(texel))
	assert(texel != 0)
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params)
	}
}

OpImage :: proc(builder: ^Builder, result_type: Id, sampled_image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Image))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	return builder.current_id^
}

OpImageQueryFormat :: proc(builder: ^Builder, result_type: Id, image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQueryFormat))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	return builder.current_id^
}

OpImageQueryOrder :: proc(builder: ^Builder, result_type: Id, image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQueryOrder))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	return builder.current_id^
}

OpImageQuerySizeLod :: proc(builder: ^Builder, result_type: Id, image: Id, level_of_detail: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQuerySizeLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(level_of_detail))
	assert(level_of_detail != 0)
	return builder.current_id^
}

OpImageQuerySize :: proc(builder: ^Builder, result_type: Id, image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQuerySize))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	return builder.current_id^
}

OpImageQueryLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQueryLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	return builder.current_id^
}

OpImageQueryLevels :: proc(builder: ^Builder, result_type: Id, image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQueryLevels))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	return builder.current_id^
}

OpImageQuerySamples :: proc(builder: ^Builder, result_type: Id, image: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageQuerySamples))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	return builder.current_id^
}

OpConvertFToU :: proc(builder: ^Builder, result_type: Id, float_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertFToU))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(float_value))
	assert(float_value != 0)
	return builder.current_id^
}

OpConvertFToS :: proc(builder: ^Builder, result_type: Id, float_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertFToS))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(float_value))
	assert(float_value != 0)
	return builder.current_id^
}

OpConvertSToF :: proc(builder: ^Builder, result_type: Id, signed_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertSToF))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(signed_value))
	assert(signed_value != 0)
	return builder.current_id^
}

OpConvertUToF :: proc(builder: ^Builder, result_type: Id, unsigned_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToF))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(unsigned_value))
	assert(unsigned_value != 0)
	return builder.current_id^
}

OpUConvert :: proc(builder: ^Builder, result_type: Id, unsigned_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UConvert))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(unsigned_value))
	assert(unsigned_value != 0)
	return builder.current_id^
}

OpSConvert :: proc(builder: ^Builder, result_type: Id, signed_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SConvert))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(signed_value))
	assert(signed_value != 0)
	return builder.current_id^
}

OpFConvert :: proc(builder: ^Builder, result_type: Id, float_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FConvert))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(float_value))
	assert(float_value != 0)
	return builder.current_id^
}

OpQuantizeToF16 :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.QuantizeToF16))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpConvertPtrToU :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertPtrToU))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpSatConvertSToU :: proc(builder: ^Builder, result_type: Id, signed_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SatConvertSToU))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(signed_value))
	assert(signed_value != 0)
	return builder.current_id^
}

OpSatConvertUToS :: proc(builder: ^Builder, result_type: Id, unsigned_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SatConvertUToS))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(unsigned_value))
	assert(unsigned_value != 0)
	return builder.current_id^
}

OpConvertUToPtr :: proc(builder: ^Builder, result_type: Id, integer_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToPtr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(integer_value))
	assert(integer_value != 0)
	return builder.current_id^
}

OpPtrCastToGeneric :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrCastToGeneric))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpGenericCastToPtr :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GenericCastToPtr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpGenericCastToPtrExplicit :: proc(builder: ^Builder, result_type: Id, pointer: Id, storage: StorageClass) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GenericCastToPtrExplicit))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, transmute(u32)storage)
	return builder.current_id^
}

OpBitcast :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Bitcast))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpSNegate :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SNegate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpFNegate :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FNegate))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpIAdd :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFAdd :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpISub :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ISub))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFSub :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FSub))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpIMul :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IMul))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFMul :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FMul))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUDiv :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UDiv))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSDiv :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SDiv))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFDiv :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FDiv))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUMod :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UMod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSRem :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SRem))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSMod :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SMod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFRem :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FRem))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFMod :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FMod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpVectorTimesScalar :: proc(builder: ^Builder, result_type: Id, vector: Id, scalar: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VectorTimesScalar))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	append(&builder.data, u32(scalar))
	assert(scalar != 0)
	return builder.current_id^
}

OpMatrixTimesScalar :: proc(builder: ^Builder, result_type: Id, matrix_: Id, scalar: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.MatrixTimesScalar))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, u32(scalar))
	assert(scalar != 0)
	return builder.current_id^
}

OpVectorTimesMatrix :: proc(builder: ^Builder, result_type: Id, vector: Id, matrix_: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VectorTimesMatrix))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	return builder.current_id^
}

OpMatrixTimesVector :: proc(builder: ^Builder, result_type: Id, matrix_: Id, vector: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.MatrixTimesVector))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, u32(vector))
	assert(vector != 0)
	return builder.current_id^
}

OpMatrixTimesMatrix :: proc(builder: ^Builder, result_type: Id, leftmatrix: Id, rightmatrix: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.MatrixTimesMatrix))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(leftmatrix))
	assert(leftmatrix != 0)
	append(&builder.data, u32(rightmatrix))
	assert(rightmatrix != 0)
	return builder.current_id^
}

OpOuterProduct :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.OuterProduct))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	return builder.current_id^
}

OpDot :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Dot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	return builder.current_id^
}

OpIAddCarry :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IAddCarry))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpISubBorrow :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ISubBorrow))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUMulExtended :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UMulExtended))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSMulExtended :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SMulExtended))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpAny :: proc(builder: ^Builder, result_type: Id, vector: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Any))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	return builder.current_id^
}

OpAll :: proc(builder: ^Builder, result_type: Id, vector: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.All))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector))
	assert(vector != 0)
	return builder.current_id^
}

OpIsNan :: proc(builder: ^Builder, result_type: Id, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsNan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpIsInf :: proc(builder: ^Builder, result_type: Id, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsInf))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpIsFinite :: proc(builder: ^Builder, result_type: Id, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsFinite))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpIsNormal :: proc(builder: ^Builder, result_type: Id, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsNormal))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpSignBitSet :: proc(builder: ^Builder, result_type: Id, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SignBitSet))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpLessOrGreater :: proc(builder: ^Builder, result_type: Id, x: Id, y: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LessOrGreater))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	append(&builder.data, u32(y))
	assert(y != 0)
	return builder.current_id^
}

OpOrdered :: proc(builder: ^Builder, result_type: Id, x: Id, y: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Ordered))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	append(&builder.data, u32(y))
	assert(y != 0)
	return builder.current_id^
}

OpUnordered :: proc(builder: ^Builder, result_type: Id, x: Id, y: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Unordered))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(x))
	assert(x != 0)
	append(&builder.data, u32(y))
	assert(y != 0)
	return builder.current_id^
}

OpLogicalEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LogicalEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpLogicalNotEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LogicalNotEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpLogicalOr :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LogicalOr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpLogicalAnd :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LogicalAnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpLogicalNot :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.LogicalNot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpSelect :: proc(builder: ^Builder, result_type: Id, condition: Id, object_1: Id, object_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Select))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(condition))
	assert(condition != 0)
	append(&builder.data, u32(object_1))
	assert(object_1 != 0)
	append(&builder.data, u32(object_2))
	assert(object_2 != 0)
	return builder.current_id^
}

OpIEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpINotEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.INotEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUGreaterThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UGreaterThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSGreaterThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SGreaterThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUGreaterThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UGreaterThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSGreaterThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SGreaterThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpULessThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ULessThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSLessThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SLessThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpULessThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ULessThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpSLessThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SLessThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdNotEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdNotEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordNotEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordNotEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdLessThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdLessThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordLessThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordLessThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdGreaterThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdGreaterThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordGreaterThan :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordGreaterThan))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdLessThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdLessThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordLessThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordLessThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFOrdGreaterThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FOrdGreaterThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpFUnordGreaterThanEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FUnordGreaterThanEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpShiftRightLogical :: proc(builder: ^Builder, result_type: Id, base: Id, shift: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ShiftRightLogical))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(shift))
	assert(shift != 0)
	return builder.current_id^
}

OpShiftRightArithmetic :: proc(builder: ^Builder, result_type: Id, base: Id, shift: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ShiftRightArithmetic))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(shift))
	assert(shift != 0)
	return builder.current_id^
}

OpShiftLeftLogical :: proc(builder: ^Builder, result_type: Id, base: Id, shift: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ShiftLeftLogical))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(shift))
	assert(shift != 0)
	return builder.current_id^
}

OpBitwiseOr :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitwiseOr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpBitwiseXor :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitwiseXor))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpBitwiseAnd :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitwiseAnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpNot :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Not))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpBitFieldInsert :: proc(builder: ^Builder, result_type: Id, base: Id, insert: Id, offset: Id, count: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitFieldInsert))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(insert))
	assert(insert != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(count))
	assert(count != 0)
	return builder.current_id^
}

OpBitFieldSExtract :: proc(builder: ^Builder, result_type: Id, base: Id, offset: Id, count: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitFieldSExtract))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(count))
	assert(count != 0)
	return builder.current_id^
}

OpBitFieldUExtract :: proc(builder: ^Builder, result_type: Id, base: Id, offset: Id, count: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitFieldUExtract))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(count))
	assert(count != 0)
	return builder.current_id^
}

OpBitReverse :: proc(builder: ^Builder, result_type: Id, base: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitReverse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	return builder.current_id^
}

OpBitCount :: proc(builder: ^Builder, result_type: Id, base: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitCount))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	return builder.current_id^
}

OpDPdx :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdx))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpDPdy :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdy))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpFwidth :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Fwidth))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpDPdxFine :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdxFine))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpDPdyFine :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdyFine))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpFwidthFine :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FwidthFine))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpDPdxCoarse :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdxCoarse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpDPdyCoarse :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DPdyCoarse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpFwidthCoarse :: proc(builder: ^Builder, result_type: Id, p: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FwidthCoarse))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(p))
	assert(p != 0)
	return builder.current_id^
}

OpEmitVertex :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EmitVertex))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpEndPrimitive :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EndPrimitive))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpEmitStreamVertex :: proc(builder: ^Builder, stream: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EmitStreamVertex))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(stream))
	assert(stream != 0)
}

OpEndStreamPrimitive :: proc(builder: ^Builder, stream: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EndStreamPrimitive))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(stream))
	assert(stream != 0)
}

OpControlBarrier :: proc(builder: ^Builder, execution: Id, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ControlBarrier))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpMemoryBarrier :: proc(builder: ^Builder, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemoryBarrier))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpAtomicLoad :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicLoad))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	return builder.current_id^
}

OpAtomicStore :: proc(builder: ^Builder, pointer: Id, memory: Id, semantics: Id, value: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicStore))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
}

OpAtomicExchange :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicExchange))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicCompareExchange :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, equal: Id, unequal: Id, value: Id, comparator: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicCompareExchange))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(equal))
	assert(equal != 0)
	append(&builder.data, u32(unequal))
	assert(unequal != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(comparator))
	assert(comparator != 0)
	return builder.current_id^
}

OpAtomicCompareExchangeWeak :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, equal: Id, unequal: Id, value: Id, comparator: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicCompareExchangeWeak))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(equal))
	assert(equal != 0)
	append(&builder.data, u32(unequal))
	assert(unequal != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(comparator))
	assert(comparator != 0)
	return builder.current_id^
}

OpAtomicIIncrement :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicIIncrement))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	return builder.current_id^
}

OpAtomicIDecrement :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicIDecrement))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	return builder.current_id^
}

OpAtomicIAdd :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicIAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicISub :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicISub))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicSMin :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicSMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicUMin :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicUMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicSMax :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicSMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicUMax :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicUMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicAnd :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicAnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicOr :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicOr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicXor :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicXor))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpPhi :: proc(builder: ^Builder, result_type: Id, _operand_2: ..Pair(Id, Id)) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Phi))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for _operand_2 in _operand_2 {
		write_pair(&builder.data, _operand_2)
	}
	return builder.current_id^
}

OpLoopMerge :: proc(builder: ^Builder, merge_block: Id, continue_target: Id, _operand_2: LoopControl, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.LoopMerge))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(merge_block))
	assert(merge_block != 0)
	append(&builder.data, u32(continue_target))
	assert(continue_target != 0)
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, .._params)
}

OpSelectionMerge :: proc(builder: ^Builder, merge_block: Id, _operand_1: SelectionControl) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SelectionMerge))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(merge_block))
	assert(merge_block != 0)
	append(&builder.data, transmute(u32)_operand_1)
}

OpLabel :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.Label))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpBranch :: proc(builder: ^Builder, target_label: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Branch))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target_label))
	assert(target_label != 0)
}

OpBranchConditional :: proc(builder: ^Builder, condition: Id, true_label: Id, false_label: Id, branch_weights: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.BranchConditional))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(condition))
	assert(condition != 0)
	append(&builder.data, u32(true_label))
	assert(true_label != 0)
	append(&builder.data, u32(false_label))
	assert(false_label != 0)
	for branch_weights in branch_weights {
		append(&builder.data, u32(branch_weights))
	}
}

OpSwitch :: proc(builder: ^Builder, selector: Id, default: Id, target: ..Pair($L, Id)) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Switch))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(selector))
	assert(selector != 0)
	append(&builder.data, u32(default))
	assert(default != 0)
	for target in target {
		write_pair(&builder.data, target)
	}
}

OpKill :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Kill))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpReturn :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Return))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpReturnValue :: proc(builder: ^Builder, value: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReturnValue))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(value))
	assert(value != 0)
}

OpUnreachable :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Unreachable))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpLifetimeStart :: proc(builder: ^Builder, pointer: Id, size: u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.LifetimeStart))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(size))
}

OpLifetimeStop :: proc(builder: ^Builder, pointer: Id, size: u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.LifetimeStop))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(size))
}

OpGroupAsyncCopy :: proc(builder: ^Builder, result_type: Id, execution: Id, destination: Id, source: Id, num_elements: Id, stride: Id, event: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupAsyncCopy))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(destination))
	assert(destination != 0)
	append(&builder.data, u32(source))
	assert(source != 0)
	append(&builder.data, u32(num_elements))
	assert(num_elements != 0)
	append(&builder.data, u32(stride))
	assert(stride != 0)
	append(&builder.data, u32(event))
	assert(event != 0)
	return builder.current_id^
}

OpGroupWaitEvents :: proc(builder: ^Builder, execution: Id, num_events: Id, events_list: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupWaitEvents))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(num_events))
	assert(num_events != 0)
	append(&builder.data, u32(events_list))
	assert(events_list != 0)
}

OpGroupAll :: proc(builder: ^Builder, result_type: Id, execution: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupAll))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupAny :: proc(builder: ^Builder, result_type: Id, execution: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupAny))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupBroadcast :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, localid: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupBroadcast))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(localid))
	assert(localid != 0)
	return builder.current_id^
}

OpGroupIAdd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupIAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFAdd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupUMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupUMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupSMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupSMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupUMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupUMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupSMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupSMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpReadPipe :: proc(builder: ^Builder, result_type: Id, pipe: Id, pointer: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReadPipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpWritePipe :: proc(builder: ^Builder, result_type: Id, pipe: Id, pointer: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.WritePipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpReservedReadPipe :: proc(builder: ^Builder, result_type: Id, pipe: Id, reserve_id: Id, index: Id, pointer: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReservedReadPipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpReservedWritePipe :: proc(builder: ^Builder, result_type: Id, pipe: Id, reserve_id: Id, index: Id, pointer: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReservedWritePipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpReserveReadPipePackets :: proc(builder: ^Builder, result_type: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReserveReadPipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(num_packets))
	assert(num_packets != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpReserveWritePipePackets :: proc(builder: ^Builder, result_type: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReserveWritePipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(num_packets))
	assert(num_packets != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpCommitReadPipe :: proc(builder: ^Builder, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CommitReadPipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
}

OpCommitWritePipe :: proc(builder: ^Builder, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CommitWritePipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
}

OpIsValidReserveId :: proc(builder: ^Builder, result_type: Id, reserve_id: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsValidReserveId))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	return builder.current_id^
}

OpGetNumPipePackets :: proc(builder: ^Builder, result_type: Id, pipe: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetNumPipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpGetMaxPipePackets :: proc(builder: ^Builder, result_type: Id, pipe: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetMaxPipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpGroupReserveReadPipePackets :: proc(builder: ^Builder, result_type: Id, execution: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupReserveReadPipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(num_packets))
	assert(num_packets != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpGroupReserveWritePipePackets :: proc(builder: ^Builder, result_type: Id, execution: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupReserveWritePipePackets))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(num_packets))
	assert(num_packets != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpGroupCommitReadPipe :: proc(builder: ^Builder, execution: Id, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupCommitReadPipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
}

OpGroupCommitWritePipe :: proc(builder: ^Builder, execution: Id, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupCommitWritePipe))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(pipe))
	assert(pipe != 0)
	append(&builder.data, u32(reserve_id))
	assert(reserve_id != 0)
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
}

OpEnqueueMarker :: proc(builder: ^Builder, result_type: Id, queue: Id, num_events: Id, wait_events: Id, ret_event: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.EnqueueMarker))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(queue))
	assert(queue != 0)
	append(&builder.data, u32(num_events))
	assert(num_events != 0)
	append(&builder.data, u32(wait_events))
	assert(wait_events != 0)
	append(&builder.data, u32(ret_event))
	assert(ret_event != 0)
	return builder.current_id^
}

OpEnqueueKernel :: proc(builder: ^Builder, result_type: Id, queue: Id, flags: Id, nd_range: Id, num_events: Id, wait_events: Id, ret_event: Id, invoke: Id, param: Id, param_size: Id, param_align: Id, local_size: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.EnqueueKernel))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(queue))
	assert(queue != 0)
	append(&builder.data, u32(flags))
	assert(flags != 0)
	append(&builder.data, u32(nd_range))
	assert(nd_range != 0)
	append(&builder.data, u32(num_events))
	assert(num_events != 0)
	append(&builder.data, u32(wait_events))
	assert(wait_events != 0)
	append(&builder.data, u32(ret_event))
	assert(ret_event != 0)
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	for local_size in local_size {
		append(&builder.data, u32(local_size))
		assert(local_size != 0)
	}
	return builder.current_id^
}

OpGetKernelNDrangeSubGroupCount :: proc(builder: ^Builder, result_type: Id, nd_range: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelNDrangeSubGroupCount))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(nd_range))
	assert(nd_range != 0)
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpGetKernelNDrangeMaxSubGroupSize :: proc(builder: ^Builder, result_type: Id, nd_range: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelNDrangeMaxSubGroupSize))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(nd_range))
	assert(nd_range != 0)
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpGetKernelWorkGroupSize :: proc(builder: ^Builder, result_type: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelWorkGroupSize))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpGetKernelPreferredWorkGroupSizeMultiple :: proc(builder: ^Builder, result_type: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelPreferredWorkGroupSizeMultiple))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpRetainEvent :: proc(builder: ^Builder, event: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RetainEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(event))
	assert(event != 0)
}

OpReleaseEvent :: proc(builder: ^Builder, event: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReleaseEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(event))
	assert(event != 0)
}

OpCreateUserEvent :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CreateUserEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpIsValidEvent :: proc(builder: ^Builder, result_type: Id, event: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsValidEvent))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(event))
	assert(event != 0)
	return builder.current_id^
}

OpSetUserEventStatus :: proc(builder: ^Builder, event: Id, status: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SetUserEventStatus))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(event))
	assert(event != 0)
	append(&builder.data, u32(status))
	assert(status != 0)
}

OpCaptureEventProfilingInfo :: proc(builder: ^Builder, event: Id, profiling_info: Id, value: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CaptureEventProfilingInfo))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(event))
	assert(event != 0)
	append(&builder.data, u32(profiling_info))
	assert(profiling_info != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
}

OpGetDefaultQueue :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetDefaultQueue))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpBuildNDRange :: proc(builder: ^Builder, result_type: Id, globalworksize: Id, localworksize: Id, globalworkoffset: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BuildNDRange))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(globalworksize))
	assert(globalworksize != 0)
	append(&builder.data, u32(localworksize))
	assert(localworksize != 0)
	append(&builder.data, u32(globalworkoffset))
	assert(globalworkoffset != 0)
	return builder.current_id^
}

OpImageSparseSampleImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseSampleExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, transmute(u32)_operand_4)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSparseSampleDrefImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleDrefImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseSampleDrefExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleDrefExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	append(&builder.data, transmute(u32)_operand_5)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSparseSampleProjImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleProjImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseSampleProjExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleProjExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, transmute(u32)_operand_4)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSparseSampleProjDrefImplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleProjDrefImplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseSampleProjDrefExplicitLod :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseSampleProjDrefExplicitLod))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	append(&builder.data, transmute(u32)_operand_5)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpImageSparseFetch :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseFetch))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseGather :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, component: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseGather))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(component))
	assert(component != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseDrefGather :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseDrefGather))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(d_ref_))
	assert(d_ref_ != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpImageSparseTexelsResident :: proc(builder: ^Builder, result_type: Id, resident_code: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseTexelsResident))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(resident_code))
	assert(resident_code != 0)
	return builder.current_id^
}

OpNoLine :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.NoLine))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpAtomicFlagTestAndSet :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicFlagTestAndSet))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	return builder.current_id^
}

OpAtomicFlagClear :: proc(builder: ^Builder, pointer: Id, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicFlagClear))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpImageSparseRead :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSparseRead))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpSizeOf :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SizeOf))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpTypePipeStorage :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypePipeStorage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpConstantPipeStorage :: proc(builder: ^Builder, result_type: Id, packet_size: u32, packet_alignment: u32, capacity: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantPipeStorage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packet_size))
	append(&builder.data, u32(packet_alignment))
	append(&builder.data, u32(capacity))
	return builder.current_id^
}

OpCreatePipeFromPipeStorage :: proc(builder: ^Builder, result_type: Id, pipe_storage: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CreatePipeFromPipeStorage))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pipe_storage))
	assert(pipe_storage != 0)
	return builder.current_id^
}

OpGetKernelLocalSizeForSubgroupCount :: proc(builder: ^Builder, result_type: Id, subgroup_count: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelLocalSizeForSubgroupCount))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(subgroup_count))
	assert(subgroup_count != 0)
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpGetKernelMaxNumSubgroups :: proc(builder: ^Builder, result_type: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GetKernelMaxNumSubgroups))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(invoke))
	assert(invoke != 0)
	append(&builder.data, u32(param))
	assert(param != 0)
	append(&builder.data, u32(param_size))
	assert(param_size != 0)
	append(&builder.data, u32(param_align))
	assert(param_align != 0)
	return builder.current_id^
}

OpTypeNamedBarrier :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeNamedBarrier))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpNamedBarrierInitialize :: proc(builder: ^Builder, result_type: Id, subgroup_count: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.NamedBarrierInitialize))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(subgroup_count))
	assert(subgroup_count != 0)
	return builder.current_id^
}

OpMemoryNamedBarrier :: proc(builder: ^Builder, named_barrier: Id, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemoryNamedBarrier))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(named_barrier))
	assert(named_barrier != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpModuleProcessed :: proc(builder: ^Builder, process: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ModuleProcessed))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	write_string(&builder.data, process)
}

OpExecutionModeId :: proc(builder: ^Builder, entry_point: Id, mode: ExecutionMode, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExecutionModeId))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(entry_point))
	assert(entry_point != 0)
	append(&builder.data, transmute(u32)mode)
	append(&builder.data, .._params)
}

OpDecorateId :: proc(builder: ^Builder, target: Id, _operand_1: Decoration, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.DecorateId))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, transmute(u32)_operand_1)
	append(&builder.data, .._params)
}

OpGroupNonUniformElect :: proc(builder: ^Builder, result_type: Id, execution: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformElect))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	return builder.current_id^
}

OpGroupNonUniformAll :: proc(builder: ^Builder, result_type: Id, execution: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformAll))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupNonUniformAny :: proc(builder: ^Builder, result_type: Id, execution: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformAny))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupNonUniformAllEqual :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformAllEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformBroadcast :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, invocation_id: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBroadcast))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(invocation_id))
	assert(invocation_id != 0)
	return builder.current_id^
}

OpGroupNonUniformBroadcastFirst :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBroadcastFirst))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformBallot :: proc(builder: ^Builder, result_type: Id, execution: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBallot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupNonUniformInverseBallot :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformInverseBallot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformBallotBitExtract :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBallotBitExtract))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpGroupNonUniformBallotBitCount :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBallotBitCount))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformBallotFindLSB :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBallotFindLSB))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformBallotFindMSB :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBallotFindMSB))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpGroupNonUniformShuffle :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, invocation_id: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformShuffle))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(invocation_id))
	assert(invocation_id != 0)
	return builder.current_id^
}

OpGroupNonUniformShuffleXor :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, mask: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformShuffleXor))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(mask))
	assert(mask != 0)
	return builder.current_id^
}

OpGroupNonUniformShuffleUp :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, delta: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformShuffleUp))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(delta))
	assert(delta != 0)
	return builder.current_id^
}

OpGroupNonUniformShuffleDown :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, delta: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformShuffleDown))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(delta))
	assert(delta != 0)
	return builder.current_id^
}

OpGroupNonUniformIAdd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformIAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformFAdd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformFAdd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformIMul :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformIMul))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformFMul :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformFMul))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformSMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformSMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformUMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformUMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformFMin :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformFMin))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformSMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformSMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformUMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformUMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformFMax :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformFMax))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformBitwiseAnd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBitwiseAnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformBitwiseOr :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBitwiseOr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformBitwiseXor :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformBitwiseXor))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformLogicalAnd :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformLogicalAnd))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformLogicalOr :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformLogicalOr))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformLogicalXor :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformLogicalXor))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(value))
	assert(value != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpGroupNonUniformQuadBroadcast :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformQuadBroadcast))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpGroupNonUniformQuadSwap :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, direction: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformQuadSwap))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	return builder.current_id^
}

OpCopyLogical :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CopyLogical))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpPtrEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpPtrNotEqual :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrNotEqual))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpPtrDiff :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrDiff))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpColorAttachmentReadEXT :: proc(builder: ^Builder, result_type: Id, attachment: Id, sample: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ColorAttachmentReadEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(attachment))
	assert(attachment != 0)
	if sample, ok := sample.?; ok {
		append(&builder.data, u32(sample))
		assert(sample != 0)
	}
	return builder.current_id^
}

OpDepthAttachmentReadEXT :: proc(builder: ^Builder, result_type: Id, sample: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.DepthAttachmentReadEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	if sample, ok := sample.?; ok {
		append(&builder.data, u32(sample))
		assert(sample != 0)
	}
	return builder.current_id^
}

OpStencilAttachmentReadEXT :: proc(builder: ^Builder, result_type: Id, sample: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.StencilAttachmentReadEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	if sample, ok := sample.?; ok {
		append(&builder.data, u32(sample))
		assert(sample != 0)
	}
	return builder.current_id^
}

OpTypeTensorARM :: proc(builder: ^Builder, element_type: Id, rank: Maybe(Id) = nil, shape: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeTensorARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(element_type))
	assert(element_type != 0)
	if rank, ok := rank.?; ok {
		append(&builder.data, u32(rank))
		assert(rank != 0)
	}
	if shape, ok := shape.?; ok {
		append(&builder.data, u32(shape))
		assert(shape != 0)
	}
	return builder.current_id^
}

OpTensorReadARM :: proc(builder: ^Builder, result_type: Id, tensor: Id, coordinates: Id, _operand_4: Maybe(TensorOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorReadARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensor))
	assert(tensor != 0)
	append(&builder.data, u32(coordinates))
	assert(coordinates != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpTensorWriteARM :: proc(builder: ^Builder, tensor: Id, coordinates: Id, object: Id, _operand_3: Maybe(TensorOperands) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorWriteARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(tensor))
	assert(tensor != 0)
	append(&builder.data, u32(coordinates))
	assert(coordinates != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params)
	}
}

OpTensorQuerySizeARM :: proc(builder: ^Builder, result_type: Id, tensor: Id, dimension: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorQuerySizeARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensor))
	assert(tensor != 0)
	append(&builder.data, u32(dimension))
	assert(dimension != 0)
	return builder.current_id^
}

OpGraphConstantARM :: proc(builder: ^Builder, result_type: Id, graphconstantid: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphConstantARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(graphconstantid))
	return builder.current_id^
}

OpGraphEntryPointARM :: proc(builder: ^Builder, graph: Id, name: string, interface: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphEntryPointARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(graph))
	assert(graph != 0)
	write_string(&builder.data, name)
	for interface in interface {
		append(&builder.data, u32(interface))
		assert(interface != 0)
	}
}

OpGraphARM :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpGraphInputARM :: proc(builder: ^Builder, result_type: Id, inputindex: Id, elementindex: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphInputARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(inputindex))
	assert(inputindex != 0)
	for elementindex in elementindex {
		append(&builder.data, u32(elementindex))
		assert(elementindex != 0)
	}
	return builder.current_id^
}

OpGraphSetOutputARM :: proc(builder: ^Builder, value: Id, outputindex: Id, elementindex: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphSetOutputARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(outputindex))
	assert(outputindex != 0)
	for elementindex in elementindex {
		append(&builder.data, u32(elementindex))
		assert(elementindex != 0)
	}
}

OpGraphEndARM :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.GraphEndARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpTypeGraphARM :: proc(builder: ^Builder, numinputs: u32, inouttypes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeGraphARM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(numinputs))
	for inouttypes in inouttypes {
		append(&builder.data, u32(inouttypes))
		assert(inouttypes != 0)
	}
	return builder.current_id^
}

OpTerminateInvocation :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TerminateInvocation))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpTypeUntypedPointerKHR :: proc(builder: ^Builder, _operand_1: StorageClass) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeUntypedPointerKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_1)
	return builder.current_id^
}

OpUntypedVariableKHR :: proc(builder: ^Builder, result_type: Id, _operand_2: StorageClass, data_type: Maybe(Id) = nil, initializer: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedVariableKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)_operand_2)
	if data_type, ok := data_type.?; ok {
		append(&builder.data, u32(data_type))
		assert(data_type != 0)
	}
	if initializer, ok := initializer.?; ok {
		append(&builder.data, u32(initializer))
		assert(initializer != 0)
	}
	return builder.current_id^
}

OpUntypedAccessChainKHR :: proc(builder: ^Builder, result_type: Id, base_type: Id, base: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedAccessChainKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base_type))
	assert(base_type != 0)
	append(&builder.data, u32(base))
	assert(base != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpUntypedInBoundsAccessChainKHR :: proc(builder: ^Builder, result_type: Id, base_type: Id, base: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedInBoundsAccessChainKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base_type))
	assert(base_type != 0)
	append(&builder.data, u32(base))
	assert(base != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpSubgroupBallotKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupBallotKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpSubgroupFirstInvocationKHR :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupFirstInvocationKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpUntypedPtrAccessChainKHR :: proc(builder: ^Builder, result_type: Id, base_type: Id, base: Id, element: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedPtrAccessChainKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base_type))
	assert(base_type != 0)
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(element))
	assert(element != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpUntypedInBoundsPtrAccessChainKHR :: proc(builder: ^Builder, result_type: Id, base_type: Id, base: Id, element: Id, indexes: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedInBoundsPtrAccessChainKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base_type))
	assert(base_type != 0)
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(element))
	assert(element != 0)
	for indexes in indexes {
		append(&builder.data, u32(indexes))
		assert(indexes != 0)
	}
	return builder.current_id^
}

OpUntypedArrayLengthKHR :: proc(builder: ^Builder, result_type: Id, structure: Id, pointer: Id, array_member: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedArrayLengthKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(structure))
	assert(structure != 0)
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(array_member))
	return builder.current_id^
}

OpUntypedPrefetchKHR :: proc(builder: ^Builder, pointer_type: Id, num_bytes: Id, rw: Maybe(Id) = nil, locality: Maybe(Id) = nil, cache_type: Maybe(Id) = nil) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedPrefetchKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer_type))
	assert(pointer_type != 0)
	append(&builder.data, u32(num_bytes))
	assert(num_bytes != 0)
	if rw, ok := rw.?; ok {
		append(&builder.data, u32(rw))
		assert(rw != 0)
	}
	if locality, ok := locality.?; ok {
		append(&builder.data, u32(locality))
		assert(locality != 0)
	}
	if cache_type, ok := cache_type.?; ok {
		append(&builder.data, u32(cache_type))
		assert(cache_type != 0)
	}
}

OpSubgroupAllKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAllKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpSubgroupAnyKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAnyKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpSubgroupAllEqualKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAllEqualKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupNonUniformRotateKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, value: Id, delta: Id, clustersize: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformRotateKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(delta))
	assert(delta != 0)
	if clustersize, ok := clustersize.?; ok {
		append(&builder.data, u32(clustersize))
		assert(clustersize != 0)
	}
	return builder.current_id^
}

OpSubgroupReadInvocationKHR :: proc(builder: ^Builder, result_type: Id, value: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupReadInvocationKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpExtInstWithForwardRefsKHR :: proc(builder: ^Builder, result_type: Id, set: Id, instruction: u32, _operand_4: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExtInstWithForwardRefsKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(set))
	assert(set != 0)
	append(&builder.data, u32(instruction))
	for _operand_4 in _operand_4 {
		append(&builder.data, u32(_operand_4))
		assert(_operand_4 != 0)
	}
	return builder.current_id^
}

OpUntypedGroupAsyncCopyKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, destination: Id, source: Id, element_num_bytes: Id, num_elements: Id, stride: Id, event: Id, destination_memory_operands: Maybe(MemoryAccess) = nil, _params_9: []u32 = {}, source_memory_operands: Maybe(MemoryAccess) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedGroupAsyncCopyKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(destination))
	assert(destination != 0)
	append(&builder.data, u32(source))
	assert(source != 0)
	append(&builder.data, u32(element_num_bytes))
	assert(element_num_bytes != 0)
	append(&builder.data, u32(num_elements))
	assert(num_elements != 0)
	append(&builder.data, u32(stride))
	assert(stride != 0)
	append(&builder.data, u32(event))
	assert(event != 0)
	if destination_memory_operands, ok := destination_memory_operands.?; ok {
		append(&builder.data, transmute(u32)destination_memory_operands)
		append(&builder.data, .._params_9)
	}
	if source_memory_operands, ok := source_memory_operands.?; ok {
		append(&builder.data, transmute(u32)source_memory_operands)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpTraceRayKHR :: proc(builder: ^Builder, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, payload: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TraceRayKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(ray_flags))
	assert(ray_flags != 0)
	append(&builder.data, u32(cull_mask))
	assert(cull_mask != 0)
	append(&builder.data, u32(sbt_offset))
	assert(sbt_offset != 0)
	append(&builder.data, u32(sbt_stride))
	assert(sbt_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(ray_origin))
	assert(ray_origin != 0)
	append(&builder.data, u32(ray_tmin))
	assert(ray_tmin != 0)
	append(&builder.data, u32(ray_direction))
	assert(ray_direction != 0)
	append(&builder.data, u32(ray_tmax))
	assert(ray_tmax != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
}

OpExecuteCallableKHR :: proc(builder: ^Builder, sbt_index: Id, callable_data: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExecuteCallableKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(sbt_index))
	assert(sbt_index != 0)
	append(&builder.data, u32(callable_data))
	assert(callable_data != 0)
}

OpConvertUToAccelerationStructureKHR :: proc(builder: ^Builder, result_type: Id, accel: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToAccelerationStructureKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(accel))
	assert(accel != 0)
	return builder.current_id^
}

OpIgnoreIntersectionKHR :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.IgnoreIntersectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpTerminateRayKHR :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TerminateRayKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpSDot :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SDot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpUDot :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UDot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpSUDot :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SUDot))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpSDotAccSat :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SDotAccSat))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	append(&builder.data, u32(accumulator))
	assert(accumulator != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpUDotAccSat :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UDotAccSat))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	append(&builder.data, u32(accumulator))
	assert(accumulator != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpSUDotAccSat :: proc(builder: ^Builder, result_type: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SUDotAccSat))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(vector_1))
	assert(vector_1 != 0)
	append(&builder.data, u32(vector_2))
	assert(vector_2 != 0)
	append(&builder.data, u32(accumulator))
	assert(accumulator != 0)
	if packed_vector_format, ok := packed_vector_format.?; ok {
		append(&builder.data, transmute(u32)packed_vector_format)
	}
	return builder.current_id^
}

OpTypeCooperativeMatrixKHR :: proc(builder: ^Builder, component_type: Id, scope: Id, rows: Id, columns: Id, use: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeCooperativeMatrixKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(component_type))
	assert(component_type != 0)
	append(&builder.data, u32(scope))
	assert(scope != 0)
	append(&builder.data, u32(rows))
	assert(rows != 0)
	append(&builder.data, u32(columns))
	assert(columns != 0)
	append(&builder.data, u32(use))
	assert(use != 0)
	return builder.current_id^
}

OpCooperativeMatrixLoadKHR :: proc(builder: ^Builder, result_type: Id, pointer: Id, memorylayout: Id, stride: Maybe(Id) = nil, memory_operand: Maybe(MemoryAccess) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixLoadKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memorylayout))
	assert(memorylayout != 0)
	if stride, ok := stride.?; ok {
		append(&builder.data, u32(stride))
		assert(stride != 0)
	}
	if memory_operand, ok := memory_operand.?; ok {
		append(&builder.data, transmute(u32)memory_operand)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpCooperativeMatrixStoreKHR :: proc(builder: ^Builder, pointer: Id, object: Id, memorylayout: Id, stride: Maybe(Id) = nil, memory_operand: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixStoreKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	append(&builder.data, u32(memorylayout))
	assert(memorylayout != 0)
	if stride, ok := stride.?; ok {
		append(&builder.data, u32(stride))
		assert(stride != 0)
	}
	if memory_operand, ok := memory_operand.?; ok {
		append(&builder.data, transmute(u32)memory_operand)
		append(&builder.data, .._params)
	}
}

OpCooperativeMatrixMulAddKHR :: proc(builder: ^Builder, result_type: Id, a: Id, b: Id, c: Id, cooperative_matrix_operands: Maybe(CooperativeMatrixOperands) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixMulAddKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(c))
	assert(c != 0)
	if cooperative_matrix_operands, ok := cooperative_matrix_operands.?; ok {
		append(&builder.data, transmute(u32)cooperative_matrix_operands)
	}
	return builder.current_id^
}

OpCooperativeMatrixLengthKHR :: proc(builder: ^Builder, result_type: Id, type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixLengthKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(type))
	assert(type != 0)
	return builder.current_id^
}

OpConstantCompositeReplicateEXT :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantCompositeReplicateEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpSpecConstantCompositeReplicateEXT :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantCompositeReplicateEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpCompositeConstructReplicateEXT :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeConstructReplicateEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpTypeRayQueryKHR :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeRayQueryKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpRayQueryInitializeKHR :: proc(builder: ^Builder, rayquery: Id, accel: Id, rayflags: Id, cullmask: Id, rayorigin: Id, raytmin: Id, raydirection: Id, raytmax: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryInitializeKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(rayflags))
	assert(rayflags != 0)
	append(&builder.data, u32(cullmask))
	assert(cullmask != 0)
	append(&builder.data, u32(rayorigin))
	assert(rayorigin != 0)
	append(&builder.data, u32(raytmin))
	assert(raytmin != 0)
	append(&builder.data, u32(raydirection))
	assert(raydirection != 0)
	append(&builder.data, u32(raytmax))
	assert(raytmax != 0)
}

OpRayQueryTerminateKHR :: proc(builder: ^Builder, rayquery: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryTerminateKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
}

OpRayQueryGenerateIntersectionKHR :: proc(builder: ^Builder, rayquery: Id, hitt: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGenerateIntersectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(hitt))
	assert(hitt != 0)
}

OpRayQueryConfirmIntersectionKHR :: proc(builder: ^Builder, rayquery: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryConfirmIntersectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
}

OpRayQueryProceedKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryProceedKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionTypeKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionTypeKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpImageSampleWeightedQCOM :: proc(builder: ^Builder, result_type: Id, texture: Id, coordinates: Id, weights: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleWeightedQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(texture))
	assert(texture != 0)
	append(&builder.data, u32(coordinates))
	assert(coordinates != 0)
	append(&builder.data, u32(weights))
	assert(weights != 0)
	return builder.current_id^
}

OpImageBoxFilterQCOM :: proc(builder: ^Builder, result_type: Id, texture: Id, coordinates: Id, box_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBoxFilterQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(texture))
	assert(texture != 0)
	append(&builder.data, u32(coordinates))
	assert(coordinates != 0)
	append(&builder.data, u32(box_size))
	assert(box_size != 0)
	return builder.current_id^
}

OpImageBlockMatchSSDQCOM :: proc(builder: ^Builder, result_type: Id, target: Id, target_coordinates: Id, reference: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchSSDQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference))
	assert(reference != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpImageBlockMatchSADQCOM :: proc(builder: ^Builder, result_type: Id, target: Id, target_coordinates: Id, reference: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchSADQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference))
	assert(reference != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpBitCastArrayQCOM :: proc(builder: ^Builder, result_type: Id, source_array: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitCastArrayQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(source_array))
	assert(source_array != 0)
	return builder.current_id^
}

OpImageBlockMatchWindowSSDQCOM :: proc(builder: ^Builder, result_type: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchWindowSSDQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target_sampled_image))
	assert(target_sampled_image != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference_sampled_image))
	assert(reference_sampled_image != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpImageBlockMatchWindowSADQCOM :: proc(builder: ^Builder, result_type: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchWindowSADQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target_sampled_image))
	assert(target_sampled_image != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference_sampled_image))
	assert(reference_sampled_image != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpImageBlockMatchGatherSSDQCOM :: proc(builder: ^Builder, result_type: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchGatherSSDQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target_sampled_image))
	assert(target_sampled_image != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference_sampled_image))
	assert(reference_sampled_image != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpImageBlockMatchGatherSADQCOM :: proc(builder: ^Builder, result_type: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageBlockMatchGatherSADQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target_sampled_image))
	assert(target_sampled_image != 0)
	append(&builder.data, u32(target_coordinates))
	assert(target_coordinates != 0)
	append(&builder.data, u32(reference_sampled_image))
	assert(reference_sampled_image != 0)
	append(&builder.data, u32(reference_coordinates))
	assert(reference_coordinates != 0)
	append(&builder.data, u32(block_size))
	assert(block_size != 0)
	return builder.current_id^
}

OpCompositeConstructCoopMatQCOM :: proc(builder: ^Builder, result_type: Id, source_array: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeConstructCoopMatQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(source_array))
	assert(source_array != 0)
	return builder.current_id^
}

OpCompositeExtractCoopMatQCOM :: proc(builder: ^Builder, result_type: Id, source_cooperative_matrix: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeExtractCoopMatQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(source_cooperative_matrix))
	assert(source_cooperative_matrix != 0)
	return builder.current_id^
}

OpExtractSubArrayQCOM :: proc(builder: ^Builder, result_type: Id, source_array: Id, index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExtractSubArrayQCOM))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(source_array))
	assert(source_array != 0)
	append(&builder.data, u32(index))
	assert(index != 0)
	return builder.current_id^
}

OpGroupIAddNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupIAddNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFAddNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFAddNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFMinNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFMinNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupUMinNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupUMinNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupSMinNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupSMinNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFMaxNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFMaxNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupUMaxNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupUMaxNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupSMaxNonUniformAMD :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupSMaxNonUniformAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpFragmentMaskFetchAMD :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FragmentMaskFetchAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	return builder.current_id^
}

OpFragmentFetchAMD :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, fragment_index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FragmentFetchAMD))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(fragment_index))
	assert(fragment_index != 0)
	return builder.current_id^
}

OpReadClockKHR :: proc(builder: ^Builder, result_type: Id, scope: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReadClockKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(scope))
	assert(scope != 0)
	return builder.current_id^
}

OpAllocateNodePayloadsAMDX :: proc(builder: ^Builder, result_type: Id, visibility: Id, payload_count: Id, node_index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AllocateNodePayloadsAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(visibility))
	assert(visibility != 0)
	append(&builder.data, u32(payload_count))
	assert(payload_count != 0)
	append(&builder.data, u32(node_index))
	assert(node_index != 0)
	return builder.current_id^
}

OpEnqueueNodePayloadsAMDX :: proc(builder: ^Builder, payload_array: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EnqueueNodePayloadsAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(payload_array))
	assert(payload_array != 0)
}

OpTypeNodePayloadArrayAMDX :: proc(builder: ^Builder, payload_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeNodePayloadArrayAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload_type))
	assert(payload_type != 0)
	return builder.current_id^
}

OpFinishWritingNodePayloadAMDX :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FinishWritingNodePayloadAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpNodePayloadArrayLengthAMDX :: proc(builder: ^Builder, result_type: Id, payload_array: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.NodePayloadArrayLengthAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload_array))
	assert(payload_array != 0)
	return builder.current_id^
}

OpIsNodePayloadValidAMDX :: proc(builder: ^Builder, result_type: Id, payload_type: Id, node_index: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsNodePayloadValidAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload_type))
	assert(payload_type != 0)
	append(&builder.data, u32(node_index))
	assert(node_index != 0)
	return builder.current_id^
}

OpConstantStringAMDX :: proc(builder: ^Builder, literal_string: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantStringAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, literal_string)
	return builder.current_id^
}

OpSpecConstantStringAMDX :: proc(builder: ^Builder, literal_string: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantStringAMDX))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, literal_string)
	return builder.current_id^
}

OpGroupNonUniformQuadAllKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformQuadAllKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpGroupNonUniformQuadAnyKHR :: proc(builder: ^Builder, result_type: Id, predicate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformQuadAnyKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(predicate))
	assert(predicate != 0)
	return builder.current_id^
}

OpHitObjectRecordHitMotionNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_offset: Id, sbt_record_stride: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id, hitobject_attributes: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordHitMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(instanceid))
	assert(instanceid != 0)
	append(&builder.data, u32(primitiveid))
	assert(primitiveid != 0)
	append(&builder.data, u32(geometryindex))
	assert(geometryindex != 0)
	append(&builder.data, u32(hit_kind))
	assert(hit_kind != 0)
	append(&builder.data, u32(sbt_record_offset))
	assert(sbt_record_offset != 0)
	append(&builder.data, u32(sbt_record_stride))
	assert(sbt_record_stride != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(current_time))
	assert(current_time != 0)
	append(&builder.data, u32(hitobject_attributes))
	assert(hitobject_attributes != 0)
}

OpHitObjectRecordHitWithIndexMotionNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id, hitobject_attributes: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordHitWithIndexMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(instanceid))
	assert(instanceid != 0)
	append(&builder.data, u32(primitiveid))
	assert(primitiveid != 0)
	append(&builder.data, u32(geometryindex))
	assert(geometryindex != 0)
	append(&builder.data, u32(hit_kind))
	assert(hit_kind != 0)
	append(&builder.data, u32(sbt_record_index))
	assert(sbt_record_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(current_time))
	assert(current_time != 0)
	append(&builder.data, u32(hitobject_attributes))
	assert(hitobject_attributes != 0)
}

OpHitObjectRecordMissMotionNV :: proc(builder: ^Builder, hit_object: Id, sbt_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordMissMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(sbt_index))
	assert(sbt_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(current_time))
	assert(current_time != 0)
}

OpHitObjectGetWorldToObjectNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetWorldToObjectNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetObjectToWorldNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetObjectToWorldNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetObjectRayDirectionNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetObjectRayDirectionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetObjectRayOriginNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetObjectRayOriginNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectTraceRayMotionNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, rayflags: Id, cullmask: Id, sbt_record_offset: Id, sbt_record_stride: Id, miss_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, time: Id, payload: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectTraceRayMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(rayflags))
	assert(rayflags != 0)
	append(&builder.data, u32(cullmask))
	assert(cullmask != 0)
	append(&builder.data, u32(sbt_record_offset))
	assert(sbt_record_offset != 0)
	append(&builder.data, u32(sbt_record_stride))
	assert(sbt_record_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(time))
	assert(time != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
}

OpHitObjectGetShaderRecordBufferHandleNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetShaderRecordBufferHandleNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetShaderBindingTableRecordIndexNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetShaderBindingTableRecordIndexNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectRecordEmptyNV :: proc(builder: ^Builder, hit_object: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordEmptyNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
}

OpHitObjectTraceRayNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, rayflags: Id, cullmask: Id, sbt_record_offset: Id, sbt_record_stride: Id, miss_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, payload: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectTraceRayNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(rayflags))
	assert(rayflags != 0)
	append(&builder.data, u32(cullmask))
	assert(cullmask != 0)
	append(&builder.data, u32(sbt_record_offset))
	assert(sbt_record_offset != 0)
	append(&builder.data, u32(sbt_record_stride))
	assert(sbt_record_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
}

OpHitObjectRecordHitNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_offset: Id, sbt_record_stride: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, hitobject_attributes: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(instanceid))
	assert(instanceid != 0)
	append(&builder.data, u32(primitiveid))
	assert(primitiveid != 0)
	append(&builder.data, u32(geometryindex))
	assert(geometryindex != 0)
	append(&builder.data, u32(hit_kind))
	assert(hit_kind != 0)
	append(&builder.data, u32(sbt_record_offset))
	assert(sbt_record_offset != 0)
	append(&builder.data, u32(sbt_record_stride))
	assert(sbt_record_stride != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(hitobject_attributes))
	assert(hitobject_attributes != 0)
}

OpHitObjectRecordHitWithIndexNV :: proc(builder: ^Builder, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, hitobject_attributes: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordHitWithIndexNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(acceleration_structure))
	assert(acceleration_structure != 0)
	append(&builder.data, u32(instanceid))
	assert(instanceid != 0)
	append(&builder.data, u32(primitiveid))
	assert(primitiveid != 0)
	append(&builder.data, u32(geometryindex))
	assert(geometryindex != 0)
	append(&builder.data, u32(hit_kind))
	assert(hit_kind != 0)
	append(&builder.data, u32(sbt_record_index))
	assert(sbt_record_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
	append(&builder.data, u32(hitobject_attributes))
	assert(hitobject_attributes != 0)
}

OpHitObjectRecordMissNV :: proc(builder: ^Builder, hit_object: Id, sbt_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectRecordMissNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(sbt_index))
	assert(sbt_index != 0)
	append(&builder.data, u32(origin))
	assert(origin != 0)
	append(&builder.data, u32(tmin))
	assert(tmin != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(tmax))
	assert(tmax != 0)
}

OpHitObjectExecuteShaderNV :: proc(builder: ^Builder, hit_object: Id, payload: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectExecuteShaderNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
}

OpHitObjectGetCurrentTimeNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetCurrentTimeNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetAttributesNV :: proc(builder: ^Builder, hit_object: Id, hit_object_attribute: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetAttributesNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	append(&builder.data, u32(hit_object_attribute))
	assert(hit_object_attribute != 0)
}

OpHitObjectGetHitKindNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetHitKindNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetPrimitiveIndexNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetPrimitiveIndexNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetGeometryIndexNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetGeometryIndexNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetInstanceIdNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetInstanceIdNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetInstanceCustomIndexNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetInstanceCustomIndexNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetWorldRayDirectionNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetWorldRayDirectionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetWorldRayOriginNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetWorldRayOriginNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetRayTMaxNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetRayTMaxNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetRayTMinNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetRayTMinNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectIsEmptyNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectIsEmptyNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectIsHitNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectIsHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectIsMissNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectIsMissNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpReorderThreadWithHitObjectNV :: proc(builder: ^Builder, hit_object: Id, hint: Maybe(Id) = nil, bits: Maybe(Id) = nil) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReorderThreadWithHitObjectNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	if hint, ok := hint.?; ok {
		append(&builder.data, u32(hint))
		assert(hint != 0)
	}
	if bits, ok := bits.?; ok {
		append(&builder.data, u32(bits))
		assert(bits != 0)
	}
}

OpReorderThreadWithHintNV :: proc(builder: ^Builder, hint: Id, bits: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReorderThreadWithHintNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(hint))
	assert(hint != 0)
	append(&builder.data, u32(bits))
	assert(bits != 0)
}

OpTypeHitObjectNV :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeHitObjectNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpImageSampleFootprintNV :: proc(builder: ^Builder, result_type: Id, sampled_image: Id, coordinate: Id, granularity: Id, coarse: Id, _operand_6: Maybe(ImageOperands) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ImageSampleFootprintNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sampled_image))
	assert(sampled_image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(granularity))
	assert(granularity != 0)
	append(&builder.data, u32(coarse))
	assert(coarse != 0)
	if _operand_6, ok := _operand_6.?; ok {
		append(&builder.data, transmute(u32)_operand_6)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpTypeCooperativeVectorNV :: proc(builder: ^Builder, component_type: Id, component_count: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeCooperativeVectorNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(component_type))
	assert(component_type != 0)
	append(&builder.data, u32(component_count))
	assert(component_count != 0)
	return builder.current_id^
}

OpCooperativeVectorMatrixMulNV :: proc(builder: ^Builder, result_type: Id, input: Id, inputinterpretation: Id, matrix_: Id, matrixoffset: Id, matrixinterpretation: Id, m: Id, k: Id, memorylayout: Id, transpose: Id, matrixstride: Maybe(Id) = nil, _operand_12: Maybe(CooperativeMatrixOperands) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorMatrixMulNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(inputinterpretation))
	assert(inputinterpretation != 0)
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, u32(matrixoffset))
	assert(matrixoffset != 0)
	append(&builder.data, u32(matrixinterpretation))
	assert(matrixinterpretation != 0)
	append(&builder.data, u32(m))
	assert(m != 0)
	append(&builder.data, u32(k))
	assert(k != 0)
	append(&builder.data, u32(memorylayout))
	assert(memorylayout != 0)
	append(&builder.data, u32(transpose))
	assert(transpose != 0)
	if matrixstride, ok := matrixstride.?; ok {
		append(&builder.data, u32(matrixstride))
		assert(matrixstride != 0)
	}
	if _operand_12, ok := _operand_12.?; ok {
		append(&builder.data, transmute(u32)_operand_12)
	}
	return builder.current_id^
}

OpCooperativeVectorOuterProductAccumulateNV :: proc(builder: ^Builder, pointer: Id, offset: Id, a: Id, b: Id, memorylayout: Id, matrixinterpretation: Id, matrixstride: Maybe(Id) = nil) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorOuterProductAccumulateNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(memorylayout))
	assert(memorylayout != 0)
	append(&builder.data, u32(matrixinterpretation))
	assert(matrixinterpretation != 0)
	if matrixstride, ok := matrixstride.?; ok {
		append(&builder.data, u32(matrixstride))
		assert(matrixstride != 0)
	}
}

OpCooperativeVectorReduceSumAccumulateNV :: proc(builder: ^Builder, pointer: Id, offset: Id, v: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorReduceSumAccumulateNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(v))
	assert(v != 0)
}

OpCooperativeVectorMatrixMulAddNV :: proc(builder: ^Builder, result_type: Id, input: Id, inputinterpretation: Id, matrix_: Id, matrixoffset: Id, matrixinterpretation: Id, bias: Id, biasoffset: Id, biasinterpretation: Id, m: Id, k: Id, memorylayout: Id, transpose: Id, matrixstride: Maybe(Id) = nil, _operand_15: Maybe(CooperativeMatrixOperands) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorMatrixMulAddNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(inputinterpretation))
	assert(inputinterpretation != 0)
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, u32(matrixoffset))
	assert(matrixoffset != 0)
	append(&builder.data, u32(matrixinterpretation))
	assert(matrixinterpretation != 0)
	append(&builder.data, u32(bias))
	assert(bias != 0)
	append(&builder.data, u32(biasoffset))
	assert(biasoffset != 0)
	append(&builder.data, u32(biasinterpretation))
	assert(biasinterpretation != 0)
	append(&builder.data, u32(m))
	assert(m != 0)
	append(&builder.data, u32(k))
	assert(k != 0)
	append(&builder.data, u32(memorylayout))
	assert(memorylayout != 0)
	append(&builder.data, u32(transpose))
	assert(transpose != 0)
	if matrixstride, ok := matrixstride.?; ok {
		append(&builder.data, u32(matrixstride))
		assert(matrixstride != 0)
	}
	if _operand_15, ok := _operand_15.?; ok {
		append(&builder.data, transmute(u32)_operand_15)
	}
	return builder.current_id^
}

OpCooperativeMatrixConvertNV :: proc(builder: ^Builder, result_type: Id, matrix_: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixConvertNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	return builder.current_id^
}

OpEmitMeshTasksEXT :: proc(builder: ^Builder, group_count_x: Id, group_count_y: Id, group_count_z: Id, payload: Maybe(Id) = nil) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EmitMeshTasksEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(group_count_x))
	assert(group_count_x != 0)
	append(&builder.data, u32(group_count_y))
	assert(group_count_y != 0)
	append(&builder.data, u32(group_count_z))
	assert(group_count_z != 0)
	if payload, ok := payload.?; ok {
		append(&builder.data, u32(payload))
		assert(payload != 0)
	}
}

OpSetMeshOutputsEXT :: proc(builder: ^Builder, vertex_count: Id, primitive_count: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SetMeshOutputsEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(vertex_count))
	assert(vertex_count != 0)
	append(&builder.data, u32(primitive_count))
	assert(primitive_count != 0)
}

OpGroupNonUniformPartitionNV :: proc(builder: ^Builder, result_type: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupNonUniformPartitionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpWritePackedPrimitiveIndices4x8NV :: proc(builder: ^Builder, index_offset: Id, packed_indices: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.WritePackedPrimitiveIndices4x8NV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(index_offset))
	assert(index_offset != 0)
	append(&builder.data, u32(packed_indices))
	assert(packed_indices != 0)
}

OpFetchMicroTriangleVertexPositionNV :: proc(builder: ^Builder, result_type: Id, accel: Id, instance_id: Id, geometry_index: Id, primitive_index: Id, barycentric: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FetchMicroTriangleVertexPositionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(instance_id))
	assert(instance_id != 0)
	append(&builder.data, u32(geometry_index))
	assert(geometry_index != 0)
	append(&builder.data, u32(primitive_index))
	assert(primitive_index != 0)
	append(&builder.data, u32(barycentric))
	assert(barycentric != 0)
	return builder.current_id^
}

OpFetchMicroTriangleVertexBarycentricNV :: proc(builder: ^Builder, result_type: Id, accel: Id, instance_id: Id, geometry_index: Id, primitive_index: Id, barycentric: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FetchMicroTriangleVertexBarycentricNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(instance_id))
	assert(instance_id != 0)
	append(&builder.data, u32(geometry_index))
	assert(geometry_index != 0)
	append(&builder.data, u32(primitive_index))
	assert(primitive_index != 0)
	append(&builder.data, u32(barycentric))
	assert(barycentric != 0)
	return builder.current_id^
}

OpCooperativeVectorLoadNV :: proc(builder: ^Builder, result_type: Id, pointer: Id, offset: Id, _operand_4: Maybe(MemoryAccess) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorLoadNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpCooperativeVectorStoreNV :: proc(builder: ^Builder, pointer: Id, offset: Id, object: Id, _operand_3: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeVectorStoreNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(offset))
	assert(offset != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	if _operand_3, ok := _operand_3.?; ok {
		append(&builder.data, transmute(u32)_operand_3)
		append(&builder.data, .._params)
	}
}

OpReportIntersectionKHR :: proc(builder: ^Builder, result_type: Id, hit: Id, hitkind: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReportIntersectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit))
	assert(hit != 0)
	append(&builder.data, u32(hitkind))
	assert(hitkind != 0)
	return builder.current_id^
}

OpIgnoreIntersectionNV :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.IgnoreIntersectionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpTerminateRayNV :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TerminateRayNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpTraceNV :: proc(builder: ^Builder, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, payloadid: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TraceNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(ray_flags))
	assert(ray_flags != 0)
	append(&builder.data, u32(cull_mask))
	assert(cull_mask != 0)
	append(&builder.data, u32(sbt_offset))
	assert(sbt_offset != 0)
	append(&builder.data, u32(sbt_stride))
	assert(sbt_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(ray_origin))
	assert(ray_origin != 0)
	append(&builder.data, u32(ray_tmin))
	assert(ray_tmin != 0)
	append(&builder.data, u32(ray_direction))
	assert(ray_direction != 0)
	append(&builder.data, u32(ray_tmax))
	assert(ray_tmax != 0)
	append(&builder.data, u32(payloadid))
	assert(payloadid != 0)
}

OpTraceMotionNV :: proc(builder: ^Builder, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, time: Id, payloadid: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TraceMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(ray_flags))
	assert(ray_flags != 0)
	append(&builder.data, u32(cull_mask))
	assert(cull_mask != 0)
	append(&builder.data, u32(sbt_offset))
	assert(sbt_offset != 0)
	append(&builder.data, u32(sbt_stride))
	assert(sbt_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(ray_origin))
	assert(ray_origin != 0)
	append(&builder.data, u32(ray_tmin))
	assert(ray_tmin != 0)
	append(&builder.data, u32(ray_direction))
	assert(ray_direction != 0)
	append(&builder.data, u32(ray_tmax))
	assert(ray_tmax != 0)
	append(&builder.data, u32(time))
	assert(time != 0)
	append(&builder.data, u32(payloadid))
	assert(payloadid != 0)
}

OpTraceRayMotionNV :: proc(builder: ^Builder, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, time: Id, payload: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TraceRayMotionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(accel))
	assert(accel != 0)
	append(&builder.data, u32(ray_flags))
	assert(ray_flags != 0)
	append(&builder.data, u32(cull_mask))
	assert(cull_mask != 0)
	append(&builder.data, u32(sbt_offset))
	assert(sbt_offset != 0)
	append(&builder.data, u32(sbt_stride))
	assert(sbt_stride != 0)
	append(&builder.data, u32(miss_index))
	assert(miss_index != 0)
	append(&builder.data, u32(ray_origin))
	assert(ray_origin != 0)
	append(&builder.data, u32(ray_tmin))
	assert(ray_tmin != 0)
	append(&builder.data, u32(ray_direction))
	assert(ray_direction != 0)
	append(&builder.data, u32(ray_tmax))
	assert(ray_tmax != 0)
	append(&builder.data, u32(time))
	assert(time != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
}

OpRayQueryGetIntersectionTriangleVertexPositionsKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionTriangleVertexPositionsKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpTypeAccelerationStructureKHR :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAccelerationStructureKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpExecuteCallableNV :: proc(builder: ^Builder, sbt_index: Id, callable_dataid: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExecuteCallableNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(sbt_index))
	assert(sbt_index != 0)
	append(&builder.data, u32(callable_dataid))
	assert(callable_dataid != 0)
}

OpRayQueryGetIntersectionClusterIdNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionClusterIdNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpHitObjectGetClusterIdNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetClusterIdNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpTypeCooperativeMatrixNV :: proc(builder: ^Builder, component_type: Id, execution: Id, rows: Id, columns: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeCooperativeMatrixNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(component_type))
	assert(component_type != 0)
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(rows))
	assert(rows != 0)
	append(&builder.data, u32(columns))
	assert(columns != 0)
	return builder.current_id^
}

OpCooperativeMatrixLoadNV :: proc(builder: ^Builder, result_type: Id, pointer: Id, stride: Id, column_major: Id, _operand_5: Maybe(MemoryAccess) = nil, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixLoadNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(stride))
	assert(stride != 0)
	append(&builder.data, u32(column_major))
	assert(column_major != 0)
	if _operand_5, ok := _operand_5.?; ok {
		append(&builder.data, transmute(u32)_operand_5)
		append(&builder.data, .._params)
	}
	return builder.current_id^
}

OpCooperativeMatrixStoreNV :: proc(builder: ^Builder, pointer: Id, object: Id, stride: Id, column_major: Id, _operand_4: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixStoreNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	append(&builder.data, u32(stride))
	assert(stride != 0)
	append(&builder.data, u32(column_major))
	assert(column_major != 0)
	if _operand_4, ok := _operand_4.?; ok {
		append(&builder.data, transmute(u32)_operand_4)
		append(&builder.data, .._params)
	}
}

OpCooperativeMatrixMulAddNV :: proc(builder: ^Builder, result_type: Id, a: Id, b: Id, c: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixMulAddNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(c))
	assert(c != 0)
	return builder.current_id^
}

OpCooperativeMatrixLengthNV :: proc(builder: ^Builder, result_type: Id, type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixLengthNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(type))
	assert(type != 0)
	return builder.current_id^
}

OpBeginInvocationInterlockEXT :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.BeginInvocationInterlockEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpEndInvocationInterlockEXT :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.EndInvocationInterlockEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpCooperativeMatrixReduceNV :: proc(builder: ^Builder, result_type: Id, matrix_: Id, reduce: CooperativeMatrixReduce, combinefunc: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixReduceNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, transmute(u32)reduce)
	append(&builder.data, u32(combinefunc))
	assert(combinefunc != 0)
	return builder.current_id^
}

OpCooperativeMatrixLoadTensorNV :: proc(builder: ^Builder, result_type: Id, pointer: Id, object: Id, tensorlayout: Id, memory_operand: MemoryAccess, _params_5: []u32 = {}, tensor_addressing_operands: TensorAddressingOperands, _params: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixLoadTensorNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	append(&builder.data, transmute(u32)memory_operand)
	append(&builder.data, .._params_5)
	append(&builder.data, transmute(u32)tensor_addressing_operands)
	append(&builder.data, .._params)
	return builder.current_id^
}

OpCooperativeMatrixStoreTensorNV :: proc(builder: ^Builder, pointer: Id, object: Id, tensorlayout: Id, memory_operand: MemoryAccess, _params_3: []u32 = {}, tensor_addressing_operands: TensorAddressingOperands, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixStoreTensorNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(object))
	assert(object != 0)
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	append(&builder.data, transmute(u32)memory_operand)
	append(&builder.data, .._params_3)
	append(&builder.data, transmute(u32)tensor_addressing_operands)
	append(&builder.data, .._params)
}

OpCooperativeMatrixPerElementOpNV :: proc(builder: ^Builder, result_type: Id, matrix_: Id, func: Id, operands: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixPerElementOpNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	append(&builder.data, u32(func))
	assert(func != 0)
	for operands in operands {
		append(&builder.data, u32(operands))
		assert(operands != 0)
	}
	return builder.current_id^
}

OpTypeTensorLayoutNV :: proc(builder: ^Builder, dim: Id, clampmode: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeTensorLayoutNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(dim))
	assert(dim != 0)
	append(&builder.data, u32(clampmode))
	assert(clampmode != 0)
	return builder.current_id^
}

OpTypeTensorViewNV :: proc(builder: ^Builder, dim: Id, hasdimensions: Id, p: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeTensorViewNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(dim))
	assert(dim != 0)
	append(&builder.data, u32(hasdimensions))
	assert(hasdimensions != 0)
	for p in p {
		append(&builder.data, u32(p))
		assert(p != 0)
	}
	return builder.current_id^
}

OpCreateTensorLayoutNV :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CreateTensorLayoutNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTensorLayoutSetDimensionNV :: proc(builder: ^Builder, result_type: Id, tensorlayout: Id, dim: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorLayoutSetDimensionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	for dim in dim {
		append(&builder.data, u32(dim))
		assert(dim != 0)
	}
	return builder.current_id^
}

OpTensorLayoutSetStrideNV :: proc(builder: ^Builder, result_type: Id, tensorlayout: Id, stride: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorLayoutSetStrideNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	for stride in stride {
		append(&builder.data, u32(stride))
		assert(stride != 0)
	}
	return builder.current_id^
}

OpTensorLayoutSliceNV :: proc(builder: ^Builder, result_type: Id, tensorlayout: Id, operands: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorLayoutSliceNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	for operands in operands {
		append(&builder.data, u32(operands))
		assert(operands != 0)
	}
	return builder.current_id^
}

OpTensorLayoutSetClampValueNV :: proc(builder: ^Builder, result_type: Id, tensorlayout: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorLayoutSetClampValueNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpCreateTensorViewNV :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CreateTensorViewNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTensorViewSetDimensionNV :: proc(builder: ^Builder, result_type: Id, tensorview: Id, dim: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorViewSetDimensionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorview))
	assert(tensorview != 0)
	for dim in dim {
		append(&builder.data, u32(dim))
		assert(dim != 0)
	}
	return builder.current_id^
}

OpTensorViewSetStrideNV :: proc(builder: ^Builder, result_type: Id, tensorview: Id, stride: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorViewSetStrideNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorview))
	assert(tensorview != 0)
	for stride in stride {
		append(&builder.data, u32(stride))
		assert(stride != 0)
	}
	return builder.current_id^
}

OpDemoteToHelperInvocation :: proc(builder: ^Builder) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.DemoteToHelperInvocation))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

}

OpIsHelperInvocationEXT :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IsHelperInvocationEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTensorViewSetClipNV :: proc(builder: ^Builder, result_type: Id, tensorview: Id, cliprowoffset: Id, cliprowspan: Id, clipcoloffset: Id, clipcolspan: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorViewSetClipNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorview))
	assert(tensorview != 0)
	append(&builder.data, u32(cliprowoffset))
	assert(cliprowoffset != 0)
	append(&builder.data, u32(cliprowspan))
	assert(cliprowspan != 0)
	append(&builder.data, u32(clipcoloffset))
	assert(clipcoloffset != 0)
	append(&builder.data, u32(clipcolspan))
	assert(clipcolspan != 0)
	return builder.current_id^
}

OpTensorLayoutSetBlockSizeNV :: proc(builder: ^Builder, result_type: Id, tensorlayout: Id, blocksize: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TensorLayoutSetBlockSizeNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(tensorlayout))
	assert(tensorlayout != 0)
	for blocksize in blocksize {
		append(&builder.data, u32(blocksize))
		assert(blocksize != 0)
	}
	return builder.current_id^
}

OpCooperativeMatrixTransposeNV :: proc(builder: ^Builder, result_type: Id, matrix_: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CooperativeMatrixTransposeNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(matrix_))
	assert(matrix_ != 0)
	return builder.current_id^
}

OpConvertUToImageNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToImageNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertUToSamplerNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToSamplerNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertImageToUNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertImageToUNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertSamplerToUNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertSamplerToUNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertUToSampledImageNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertUToSampledImageNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertSampledImageToUNV :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertSampledImageToUNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpSamplerImageAddressingModeNV :: proc(builder: ^Builder, bit_width: u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SamplerImageAddressingModeNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(bit_width))
}

OpRawAccessChainNV :: proc(builder: ^Builder, result_type: Id, base: Id, byte_stride: Id, element_index: Id, byte_offset: Id, _operand_6: Maybe(RawAccessChainOperands) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RawAccessChainNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(base))
	assert(base != 0)
	append(&builder.data, u32(byte_stride))
	assert(byte_stride != 0)
	append(&builder.data, u32(element_index))
	assert(element_index != 0)
	append(&builder.data, u32(byte_offset))
	assert(byte_offset != 0)
	if _operand_6, ok := _operand_6.?; ok {
		append(&builder.data, transmute(u32)_operand_6)
	}
	return builder.current_id^
}

OpRayQueryGetIntersectionSpherePositionNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionSpherePositionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionSphereRadiusNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionSphereRadiusNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionLSSPositionsNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionLSSPositionsNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionLSSRadiiNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionLSSRadiiNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionLSSHitValueNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionLSSHitValueNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpHitObjectGetSpherePositionNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetSpherePositionNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetSphereRadiusNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetSphereRadiusNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetLSSPositionsNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetLSSPositionsNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectGetLSSRadiiNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectGetLSSRadiiNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectIsSphereHitNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectIsSphereHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpHitObjectIsLSSHitNV :: proc(builder: ^Builder, result_type: Id, hit_object: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.HitObjectIsLSSHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(hit_object))
	assert(hit_object != 0)
	return builder.current_id^
}

OpRayQueryIsSphereHitNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryIsSphereHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryIsLSSHitNV :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryIsLSSHitNV))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpSubgroupShuffleINTEL :: proc(builder: ^Builder, result_type: Id, data: Id, invocationid: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupShuffleINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(data))
	assert(data != 0)
	append(&builder.data, u32(invocationid))
	assert(invocationid != 0)
	return builder.current_id^
}

OpSubgroupShuffleDownINTEL :: proc(builder: ^Builder, result_type: Id, current: Id, next: Id, delta: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupShuffleDownINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(current))
	assert(current != 0)
	append(&builder.data, u32(next))
	assert(next != 0)
	append(&builder.data, u32(delta))
	assert(delta != 0)
	return builder.current_id^
}

OpSubgroupShuffleUpINTEL :: proc(builder: ^Builder, result_type: Id, previous: Id, current: Id, delta: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupShuffleUpINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(previous))
	assert(previous != 0)
	append(&builder.data, u32(current))
	assert(current != 0)
	append(&builder.data, u32(delta))
	assert(delta != 0)
	return builder.current_id^
}

OpSubgroupShuffleXorINTEL :: proc(builder: ^Builder, result_type: Id, data: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupShuffleXorINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(data))
	assert(data != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpSubgroupBlockReadINTEL :: proc(builder: ^Builder, result_type: Id, ptr: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupBlockReadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(ptr))
	assert(ptr != 0)
	return builder.current_id^
}

OpSubgroupBlockWriteINTEL :: proc(builder: ^Builder, ptr: Id, data: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupBlockWriteINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(ptr))
	assert(ptr != 0)
	append(&builder.data, u32(data))
	assert(data != 0)
}

OpSubgroupImageBlockReadINTEL :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupImageBlockReadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	return builder.current_id^
}

OpSubgroupImageBlockWriteINTEL :: proc(builder: ^Builder, image: Id, coordinate: Id, data: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupImageBlockWriteINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(data))
	assert(data != 0)
}

OpSubgroupImageMediaBlockReadINTEL :: proc(builder: ^Builder, result_type: Id, image: Id, coordinate: Id, width: Id, height: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupImageMediaBlockReadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(width))
	assert(width != 0)
	append(&builder.data, u32(height))
	assert(height != 0)
	return builder.current_id^
}

OpSubgroupImageMediaBlockWriteINTEL :: proc(builder: ^Builder, image: Id, coordinate: Id, width: Id, height: Id, data: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupImageMediaBlockWriteINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(image))
	assert(image != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(width))
	assert(width != 0)
	append(&builder.data, u32(height))
	assert(height != 0)
	append(&builder.data, u32(data))
	assert(data != 0)
}

OpUCountLeadingZerosINTEL :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UCountLeadingZerosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpUCountTrailingZerosINTEL :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UCountTrailingZerosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpAbsISubINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AbsISubINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpAbsUSubINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AbsUSubINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpIAddSatINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IAddSatINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUAddSatINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UAddSatINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpIAverageINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IAverageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUAverageINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UAverageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpIAverageRoundedINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IAverageRoundedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUAverageRoundedINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UAverageRoundedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpISubSatINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ISubSatINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUSubSatINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.USubSatINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpIMul32x16INTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.IMul32x16INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpUMul32x16INTEL :: proc(builder: ^Builder, result_type: Id, operand_1: Id, operand_2: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UMul32x16INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand_1))
	assert(operand_1 != 0)
	append(&builder.data, u32(operand_2))
	assert(operand_2 != 0)
	return builder.current_id^
}

OpConstantFunctionPointerINTEL :: proc(builder: ^Builder, result_type: Id, function: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantFunctionPointerINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(function))
	assert(function != 0)
	return builder.current_id^
}

OpFunctionPointerCallINTEL :: proc(builder: ^Builder, result_type: Id, operand_1: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FunctionPointerCallINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for operand_1 in operand_1 {
		append(&builder.data, u32(operand_1))
		assert(operand_1 != 0)
	}
	return builder.current_id^
}

OpAsmTargetINTEL :: proc(builder: ^Builder, asm_target: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AsmTargetINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	write_string(&builder.data, asm_target)
	return builder.current_id^
}

OpAsmINTEL :: proc(builder: ^Builder, result_type: Id, asm_type: Id, target: Id, asm_instructions: string, constraints: string) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AsmINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(asm_type))
	assert(asm_type != 0)
	append(&builder.data, u32(target))
	assert(target != 0)
	write_string(&builder.data, asm_instructions)
	write_string(&builder.data, constraints)
	return builder.current_id^
}

OpAsmCallINTEL :: proc(builder: ^Builder, result_type: Id, asm_: Id, argument: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AsmCallINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(asm_))
	assert(asm_ != 0)
	for argument in argument {
		append(&builder.data, u32(argument))
		assert(argument != 0)
	}
	return builder.current_id^
}

OpAtomicFMinEXT :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicFMinEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAtomicFMaxEXT :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicFMaxEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpAssumeTrueKHR :: proc(builder: ^Builder, condition: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.AssumeTrueKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(condition))
	assert(condition != 0)
}

OpExpectKHR :: proc(builder: ^Builder, result_type: Id, value: Id, expectedvalue: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ExpectKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(value))
	assert(value != 0)
	append(&builder.data, u32(expectedvalue))
	assert(expectedvalue != 0)
	return builder.current_id^
}

OpDecorateString :: proc(builder: ^Builder, target: Id, _operand_1: Decoration, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.DecorateString))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(target))
	assert(target != 0)
	append(&builder.data, transmute(u32)_operand_1)
	append(&builder.data, .._params)
}

OpMemberDecorateString :: proc(builder: ^Builder, struct_type: Id, member: u32, _operand_2: Decoration, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MemberDecorateString))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(struct_type))
	assert(struct_type != 0)
	append(&builder.data, u32(member))
	append(&builder.data, transmute(u32)_operand_2)
	append(&builder.data, .._params)
}

OpVmeImageINTEL :: proc(builder: ^Builder, result_type: Id, image_type: Id, sampler: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VmeImageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image_type))
	assert(image_type != 0)
	append(&builder.data, u32(sampler))
	assert(sampler != 0)
	return builder.current_id^
}

OpTypeVmeImageINTEL :: proc(builder: ^Builder, image_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeVmeImageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image_type))
	assert(image_type != 0)
	return builder.current_id^
}

OpTypeAvcImePayloadINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcRefPayloadINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcRefPayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcSicPayloadINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcSicPayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcMcePayloadINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcMcePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcMceResultINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcMceResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcImeResultINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImeResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcImeResultSingleReferenceStreamoutINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImeResultSingleReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcImeResultDualReferenceStreamoutINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImeResultDualReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcImeSingleReferenceStreaminINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImeSingleReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcImeDualReferenceStreaminINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcImeDualReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcRefResultINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcRefResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpTypeAvcSicResultINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeAvcSicResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, reference_base_penalty: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(reference_base_penalty))
	assert(reference_base_penalty != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultInterShapePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetInterShapePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, packed_shape_penalty: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetInterShapePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_shape_penalty))
	assert(packed_shape_penalty != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetInterDirectionPenaltyINTEL :: proc(builder: ^Builder, result_type: Id, direction_cost: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetInterDirectionPenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(direction_cost))
	assert(direction_cost != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceSetMotionVectorCostFunctionINTEL :: proc(builder: ^Builder, result_type: Id, packed_cost_center_delta: Id, packed_cost_table: Id, cost_precision: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetMotionVectorCostFunctionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_cost_center_delta))
	assert(packed_cost_center_delta != 0)
	append(&builder.data, u32(packed_cost_table))
	assert(packed_cost_table != 0)
	append(&builder.data, u32(cost_precision))
	assert(cost_precision != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, slice_type: Id, qp: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(slice_type))
	assert(slice_type != 0)
	append(&builder.data, u32(qp))
	assert(qp != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupAvcMceSetAcOnlyHaarINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetAcOnlyHaarINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL :: proc(builder: ^Builder, result_type: Id, source_field_polarity: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(source_field_polarity))
	assert(source_field_polarity != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL :: proc(builder: ^Builder, result_type: Id, reference_field_polarity: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(reference_field_polarity))
	assert(reference_field_polarity != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL :: proc(builder: ^Builder, result_type: Id, forward_reference_field_polarity: Id, backward_reference_field_polarity: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(forward_reference_field_polarity))
	assert(forward_reference_field_polarity != 0)
	append(&builder.data, u32(backward_reference_field_polarity))
	assert(backward_reference_field_polarity != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToImePayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToImePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToImeResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToImeResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToRefPayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToRefPayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToRefResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToRefResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToSicPayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToSicPayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceConvertToSicResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceConvertToSicResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetMotionVectorsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetMotionVectorsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterDistortionsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterDistortionsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetBestInterDistortionsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetBestInterDistortionsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterMajorShapeINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterMajorShapeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterMinorShapeINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterMinorShapeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterDirectionsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterDirectionsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterMotionVectorCountINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterMotionVectorCountINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterReferenceIdsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterReferenceIdsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL :: proc(builder: ^Builder, result_type: Id, packed_reference_ids: Id, packed_reference_parameter_field_polarities: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_reference_ids))
	assert(packed_reference_ids != 0)
	append(&builder.data, u32(packed_reference_parameter_field_polarities))
	assert(packed_reference_parameter_field_polarities != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeInitializeINTEL :: proc(builder: ^Builder, result_type: Id, src_coord: Id, partition_mask: Id, sad_adjustment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeInitializeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_coord))
	assert(src_coord != 0)
	append(&builder.data, u32(partition_mask))
	assert(partition_mask != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetSingleReferenceINTEL :: proc(builder: ^Builder, result_type: Id, ref_offset: Id, search_window_config: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetSingleReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(ref_offset))
	assert(ref_offset != 0)
	append(&builder.data, u32(search_window_config))
	assert(search_window_config != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetDualReferenceINTEL :: proc(builder: ^Builder, result_type: Id, fwd_ref_offset: Id, bwd_ref_offset: Id, search_window_config: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetDualReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(fwd_ref_offset))
	assert(fwd_ref_offset != 0)
	append(&builder.data, u32(bwd_ref_offset))
	assert(bwd_ref_offset != 0)
	append(&builder.data, u32(search_window_config))
	assert(search_window_config != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeRefWindowSizeINTEL :: proc(builder: ^Builder, result_type: Id, search_window_config: Id, dual_ref: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeRefWindowSizeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(search_window_config))
	assert(search_window_config != 0)
	append(&builder.data, u32(dual_ref))
	assert(dual_ref != 0)
	return builder.current_id^
}

OpSubgroupAvcImeAdjustRefOffsetINTEL :: proc(builder: ^Builder, result_type: Id, ref_offset: Id, src_coord: Id, ref_window_size: Id, image_size: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeAdjustRefOffsetINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(ref_offset))
	assert(ref_offset != 0)
	append(&builder.data, u32(src_coord))
	assert(src_coord != 0)
	append(&builder.data, u32(ref_window_size))
	assert(ref_window_size != 0)
	append(&builder.data, u32(image_size))
	assert(image_size != 0)
	return builder.current_id^
}

OpSubgroupAvcImeConvertToMcePayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeConvertToMcePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetMaxMotionVectorCountINTEL :: proc(builder: ^Builder, result_type: Id, max_motion_vector_count: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetMaxMotionVectorCountINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(max_motion_vector_count))
	assert(max_motion_vector_count != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetUnidirectionalMixDisableINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetUnidirectionalMixDisableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL :: proc(builder: ^Builder, result_type: Id, threshold: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(threshold))
	assert(threshold != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeSetWeightedSadINTEL :: proc(builder: ^Builder, result_type: Id, packed_sad_weights: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeSetWeightedSadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_sad_weights))
	assert(packed_sad_weights != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithSingleReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithDualReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id, streamin_components: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(streamin_components))
	assert(streamin_components != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id, streamin_components: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(streamin_components))
	assert(streamin_components != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id, streamin_components: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(streamin_components))
	assert(streamin_components != 0)
	return builder.current_id^
}

OpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id, streamin_components: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(streamin_components))
	assert(streamin_components != 0)
	return builder.current_id^
}

OpSubgroupAvcImeConvertToMceResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeConvertToMceResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetSingleReferenceStreaminINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetSingleReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetDualReferenceStreaminINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetDualReferenceStreaminINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeStripSingleReferenceStreamoutINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeStripSingleReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeStripDualReferenceStreamoutINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeStripDualReferenceStreamoutINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id, direction: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id, direction: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id, major_shape: Id, direction: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	append(&builder.data, u32(major_shape))
	assert(major_shape != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetBorderReachedINTEL :: proc(builder: ^Builder, result_type: Id, image_select: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetBorderReachedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(image_select))
	assert(image_select != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetTruncatedSearchIndicationINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetTruncatedSearchIndicationINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcFmeInitializeINTEL :: proc(builder: ^Builder, result_type: Id, src_coord: Id, motion_vectors: Id, major_shapes: Id, minor_shapes: Id, direction: Id, pixel_resolution: Id, sad_adjustment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcFmeInitializeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_coord))
	assert(src_coord != 0)
	append(&builder.data, u32(motion_vectors))
	assert(motion_vectors != 0)
	append(&builder.data, u32(major_shapes))
	assert(major_shapes != 0)
	append(&builder.data, u32(minor_shapes))
	assert(minor_shapes != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(pixel_resolution))
	assert(pixel_resolution != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	return builder.current_id^
}

OpSubgroupAvcBmeInitializeINTEL :: proc(builder: ^Builder, result_type: Id, src_coord: Id, motion_vectors: Id, major_shapes: Id, minor_shapes: Id, direction: Id, pixel_resolution: Id, bidirectional_weight: Id, sad_adjustment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcBmeInitializeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_coord))
	assert(src_coord != 0)
	append(&builder.data, u32(motion_vectors))
	assert(motion_vectors != 0)
	append(&builder.data, u32(major_shapes))
	assert(major_shapes != 0)
	append(&builder.data, u32(minor_shapes))
	assert(minor_shapes != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	append(&builder.data, u32(pixel_resolution))
	assert(pixel_resolution != 0)
	append(&builder.data, u32(bidirectional_weight))
	assert(bidirectional_weight != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	return builder.current_id^
}

OpSubgroupAvcRefConvertToMcePayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefConvertToMcePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefSetBidirectionalMixDisableINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefSetBidirectionalMixDisableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefSetBilinearFilterEnableINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefSetBilinearFilterEnableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefEvaluateWithSingleReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefEvaluateWithSingleReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefEvaluateWithDualReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefEvaluateWithDualReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefEvaluateWithMultiReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, packed_reference_ids: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefEvaluateWithMultiReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(packed_reference_ids))
	assert(packed_reference_ids != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, packed_reference_ids: Id, packed_reference_field_polarities: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(packed_reference_ids))
	assert(packed_reference_ids != 0)
	append(&builder.data, u32(packed_reference_field_polarities))
	assert(packed_reference_field_polarities != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcRefConvertToMceResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcRefConvertToMceResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicInitializeINTEL :: proc(builder: ^Builder, result_type: Id, src_coord: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicInitializeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_coord))
	assert(src_coord != 0)
	return builder.current_id^
}

OpSubgroupAvcSicConfigureSkcINTEL :: proc(builder: ^Builder, result_type: Id, skip_block_partition_type: Id, skip_motion_vector_mask: Id, motion_vectors: Id, bidirectional_weight: Id, sad_adjustment: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicConfigureSkcINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(skip_block_partition_type))
	assert(skip_block_partition_type != 0)
	append(&builder.data, u32(skip_motion_vector_mask))
	assert(skip_motion_vector_mask != 0)
	append(&builder.data, u32(motion_vectors))
	assert(motion_vectors != 0)
	append(&builder.data, u32(bidirectional_weight))
	assert(bidirectional_weight != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicConfigureIpeLumaINTEL :: proc(builder: ^Builder, result_type: Id, luma_intra_partition_mask: Id, intra_neighbour_availabilty: Id, left_edge_luma_pixels: Id, upper_left_corner_luma_pixel: Id, upper_edge_luma_pixels: Id, upper_right_edge_luma_pixels: Id, sad_adjustment: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicConfigureIpeLumaINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(luma_intra_partition_mask))
	assert(luma_intra_partition_mask != 0)
	append(&builder.data, u32(intra_neighbour_availabilty))
	assert(intra_neighbour_availabilty != 0)
	append(&builder.data, u32(left_edge_luma_pixels))
	assert(left_edge_luma_pixels != 0)
	append(&builder.data, u32(upper_left_corner_luma_pixel))
	assert(upper_left_corner_luma_pixel != 0)
	append(&builder.data, u32(upper_edge_luma_pixels))
	assert(upper_edge_luma_pixels != 0)
	append(&builder.data, u32(upper_right_edge_luma_pixels))
	assert(upper_right_edge_luma_pixels != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicConfigureIpeLumaChromaINTEL :: proc(builder: ^Builder, result_type: Id, luma_intra_partition_mask: Id, intra_neighbour_availabilty: Id, left_edge_luma_pixels: Id, upper_left_corner_luma_pixel: Id, upper_edge_luma_pixels: Id, upper_right_edge_luma_pixels: Id, left_edge_chroma_pixels: Id, upper_left_corner_chroma_pixel: Id, upper_edge_chroma_pixels: Id, sad_adjustment: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicConfigureIpeLumaChromaINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(luma_intra_partition_mask))
	assert(luma_intra_partition_mask != 0)
	append(&builder.data, u32(intra_neighbour_availabilty))
	assert(intra_neighbour_availabilty != 0)
	append(&builder.data, u32(left_edge_luma_pixels))
	assert(left_edge_luma_pixels != 0)
	append(&builder.data, u32(upper_left_corner_luma_pixel))
	assert(upper_left_corner_luma_pixel != 0)
	append(&builder.data, u32(upper_edge_luma_pixels))
	assert(upper_edge_luma_pixels != 0)
	append(&builder.data, u32(upper_right_edge_luma_pixels))
	assert(upper_right_edge_luma_pixels != 0)
	append(&builder.data, u32(left_edge_chroma_pixels))
	assert(left_edge_chroma_pixels != 0)
	append(&builder.data, u32(upper_left_corner_chroma_pixel))
	assert(upper_left_corner_chroma_pixel != 0)
	append(&builder.data, u32(upper_edge_chroma_pixels))
	assert(upper_edge_chroma_pixels != 0)
	append(&builder.data, u32(sad_adjustment))
	assert(sad_adjustment != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetMotionVectorMaskINTEL :: proc(builder: ^Builder, result_type: Id, skip_block_partition_type: Id, direction: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetMotionVectorMaskINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(skip_block_partition_type))
	assert(skip_block_partition_type != 0)
	append(&builder.data, u32(direction))
	assert(direction != 0)
	return builder.current_id^
}

OpSubgroupAvcSicConvertToMcePayloadINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicConvertToMcePayloadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL :: proc(builder: ^Builder, result_type: Id, packed_shape_penalty: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetIntraLumaShapePenaltyINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_shape_penalty))
	assert(packed_shape_penalty != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL :: proc(builder: ^Builder, result_type: Id, luma_mode_penalty: Id, luma_packed_neighbor_modes: Id, luma_packed_non_dc_penalty: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(luma_mode_penalty))
	assert(luma_mode_penalty != 0)
	append(&builder.data, u32(luma_packed_neighbor_modes))
	assert(luma_packed_neighbor_modes != 0)
	append(&builder.data, u32(luma_packed_non_dc_penalty))
	assert(luma_packed_non_dc_penalty != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL :: proc(builder: ^Builder, result_type: Id, chroma_mode_base_penalty: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(chroma_mode_base_penalty))
	assert(chroma_mode_base_penalty != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetBilinearFilterEnableINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetBilinearFilterEnableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetSkcForwardTransformEnableINTEL :: proc(builder: ^Builder, result_type: Id, packed_sad_coefficients: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetSkcForwardTransformEnableINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packed_sad_coefficients))
	assert(packed_sad_coefficients != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL :: proc(builder: ^Builder, result_type: Id, block_based_skip_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicSetBlockBasedRawSkipSadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(block_based_skip_type))
	assert(block_based_skip_type != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicEvaluateIpeINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicEvaluateIpeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicEvaluateWithSingleReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicEvaluateWithSingleReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(ref_image))
	assert(ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicEvaluateWithDualReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicEvaluateWithDualReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(fwd_ref_image))
	assert(fwd_ref_image != 0)
	append(&builder.data, u32(bwd_ref_image))
	assert(bwd_ref_image != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicEvaluateWithMultiReferenceINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, packed_reference_ids: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicEvaluateWithMultiReferenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(packed_reference_ids))
	assert(packed_reference_ids != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL :: proc(builder: ^Builder, result_type: Id, src_image: Id, packed_reference_ids: Id, packed_reference_field_polarities: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(src_image))
	assert(src_image != 0)
	append(&builder.data, u32(packed_reference_ids))
	assert(packed_reference_ids != 0)
	append(&builder.data, u32(packed_reference_field_polarities))
	assert(packed_reference_field_polarities != 0)
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicConvertToMceResultINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicConvertToMceResultINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetIpeLumaShapeINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetIpeLumaShapeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetBestIpeLumaDistortionINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetBestIpeLumaDistortionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetBestIpeChromaDistortionINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetBestIpeChromaDistortionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetPackedIpeLumaModesINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetPackedIpeLumaModesINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetIpeChromaModeINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetIpeChromaModeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpSubgroupAvcSicGetInterRawSadsINTEL :: proc(builder: ^Builder, result_type: Id, payload: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupAvcSicGetInterRawSadsINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(payload))
	assert(payload != 0)
	return builder.current_id^
}

OpVariableLengthArrayINTEL :: proc(builder: ^Builder, result_type: Id, length: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.VariableLengthArrayINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(length))
	assert(length != 0)
	return builder.current_id^
}

OpSaveMemoryINTEL :: proc(builder: ^Builder, result_type: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SaveMemoryINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpRestoreMemoryINTEL :: proc(builder: ^Builder, ptr: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.RestoreMemoryINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(ptr))
	assert(ptr != 0)
}

OpArbitraryFloatSinCosPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, roundingaccuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSinCosPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(roundingaccuracy))
	return builder.current_id^
}

OpArbitraryFloatCastINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCastINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatCastFromIntINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, mresult: u32, fromsign: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCastFromIntINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(fromsign))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatCastToIntINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, tosign: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCastToIntINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(tosign))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatAddINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatAddINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatSubINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSubINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatMulINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatMulINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatDivINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatDivINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatGTINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatGTINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	return builder.current_id^
}

OpArbitraryFloatGEINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatGEINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	return builder.current_id^
}

OpArbitraryFloatLTINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLTINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	return builder.current_id^
}

OpArbitraryFloatLEINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLEINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	return builder.current_id^
}

OpArbitraryFloatEQINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatEQINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	return builder.current_id^
}

OpArbitraryFloatRecipINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatRecipINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatRSqrtINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatRSqrtINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatCbrtINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCbrtINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatHypotINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatHypotINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatSqrtINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSqrtINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatLogINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLogINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatLog2INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLog2INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatLog10INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLog10INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatLog1pINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatLog1pINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatExpINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatExpINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatExp2INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatExp2INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatExp10INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatExp10INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatExpm1INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatExpm1INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatSinINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSinINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatCosINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatSinCosINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSinCosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatSinPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatSinPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatCosPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatCosPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatASinINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatASinINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatASinPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatASinPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatACosINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, m1: u32, mout: u32, enablesubnormals: u32, roundingmode: u32, roundingaccuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatACosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(m1))
	append(&builder.data, u32(mout))
	append(&builder.data, u32(enablesubnormals))
	append(&builder.data, u32(roundingmode))
	append(&builder.data, u32(roundingaccuracy))
	return builder.current_id^
}

OpArbitraryFloatACosPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatACosPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatATanINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatATanINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatATanPiINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatATanPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatATan2INTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatATan2INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatPowINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatPowINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatPowRINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatPowRINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(mb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpArbitraryFloatPowNINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, ma: u32, b: Id, signofb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArbitraryFloatPowNINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(ma))
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(signofb))
	append(&builder.data, u32(mresult))
	append(&builder.data, u32(subnormal))
	append(&builder.data, u32(rounding))
	append(&builder.data, u32(accuracy))
	return builder.current_id^
}

OpLoopControlINTEL :: proc(builder: ^Builder, loop_control_parameters: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.LoopControlINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	for loop_control_parameters in loop_control_parameters {
		append(&builder.data, u32(loop_control_parameters))
	}
}

OpAliasDomainDeclINTEL :: proc(builder: ^Builder, name: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AliasDomainDeclINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	if name, ok := name.?; ok {
		append(&builder.data, u32(name))
		assert(name != 0)
	}
	return builder.current_id^
}

OpAliasScopeDeclINTEL :: proc(builder: ^Builder, alias_domain: Id, name: Maybe(Id) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AliasScopeDeclINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, u32(alias_domain))
	assert(alias_domain != 0)
	if name, ok := name.?; ok {
		append(&builder.data, u32(name))
		assert(name != 0)
	}
	return builder.current_id^
}

OpAliasScopeListDeclINTEL :: proc(builder: ^Builder, _operand_1: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AliasScopeListDeclINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	for _operand_1 in _operand_1 {
		append(&builder.data, u32(_operand_1))
		assert(_operand_1 != 0)
	}
	return builder.current_id^
}

OpFixedSqrtINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedSqrtINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedRecipINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedRecipINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedRsqrtINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedRsqrtINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedSinINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedSinINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedCosINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedCosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedSinCosINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedSinCosINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedSinPiINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedSinPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedCosPiINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedCosPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedSinCosPiINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedSinCosPiINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedLogINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedLogINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpFixedExpINTEL :: proc(builder: ^Builder, result_type: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FixedExpINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	append(&builder.data, u32(s))
	append(&builder.data, u32(i))
	append(&builder.data, u32(ri))
	append(&builder.data, u32(q))
	append(&builder.data, u32(o))
	return builder.current_id^
}

OpPtrCastToCrossWorkgroupINTEL :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.PtrCastToCrossWorkgroupINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpCrossWorkgroupCastToPtrINTEL :: proc(builder: ^Builder, result_type: Id, pointer: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CrossWorkgroupCastToPtrINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	return builder.current_id^
}

OpReadPipeBlockingINTEL :: proc(builder: ^Builder, result_type: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ReadPipeBlockingINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpWritePipeBlockingINTEL :: proc(builder: ^Builder, result_type: Id, packet_size: Id, packet_alignment: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.WritePipeBlockingINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(packet_size))
	assert(packet_size != 0)
	append(&builder.data, u32(packet_alignment))
	assert(packet_alignment != 0)
	return builder.current_id^
}

OpFPGARegINTEL :: proc(builder: ^Builder, result_type: Id, input: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.FPGARegINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(input))
	assert(input != 0)
	return builder.current_id^
}

OpRayQueryGetRayTMinKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetRayTMinKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetRayFlagsKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetRayFlagsKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionTKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionTKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionInstanceCustomIndexKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionInstanceCustomIndexKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionInstanceIdKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionInstanceIdKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionGeometryIndexKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionGeometryIndexKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionPrimitiveIndexKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionPrimitiveIndexKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionBarycentricsKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionBarycentricsKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionFrontFaceKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionFrontFaceKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionCandidateAABBOpaqueKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionCandidateAABBOpaqueKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionObjectRayDirectionKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionObjectRayDirectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionObjectRayOriginKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionObjectRayOriginKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetWorldRayDirectionKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetWorldRayDirectionKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetWorldRayOriginKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetWorldRayOriginKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionObjectToWorldKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionObjectToWorldKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpRayQueryGetIntersectionWorldToObjectKHR :: proc(builder: ^Builder, result_type: Id, rayquery: Id, intersection: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RayQueryGetIntersectionWorldToObjectKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(rayquery))
	assert(rayquery != 0)
	append(&builder.data, u32(intersection))
	assert(intersection != 0)
	return builder.current_id^
}

OpAtomicFAddEXT :: proc(builder: ^Builder, result_type: Id, pointer: Id, memory: Id, semantics: Id, value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.AtomicFAddEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(pointer))
	assert(pointer != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
	append(&builder.data, u32(value))
	assert(value != 0)
	return builder.current_id^
}

OpTypeBufferSurfaceINTEL :: proc(builder: ^Builder, accessqualifier: AccessQualifier) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeBufferSurfaceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	append(&builder.data, transmute(u32)accessqualifier)
	return builder.current_id^
}

OpTypeStructContinuedINTEL :: proc(builder: ^Builder, _operand_0: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeStructContinuedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	for _operand_0 in _operand_0 {
		append(&builder.data, u32(_operand_0))
		assert(_operand_0 != 0)
	}
}

OpConstantCompositeContinuedINTEL :: proc(builder: ^Builder, constituents: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConstantCompositeContinuedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
}

OpSpecConstantCompositeContinuedINTEL :: proc(builder: ^Builder, constituents: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantCompositeContinuedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
}

OpCompositeConstructContinuedINTEL :: proc(builder: ^Builder, result_type: Id, constituents: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.CompositeConstructContinuedINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for constituents in constituents {
		append(&builder.data, u32(constituents))
		assert(constituents != 0)
	}
	return builder.current_id^
}

OpConvertFToBF16INTEL :: proc(builder: ^Builder, result_type: Id, float_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertFToBF16INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(float_value))
	assert(float_value != 0)
	return builder.current_id^
}

OpConvertBF16ToFINTEL :: proc(builder: ^Builder, result_type: Id, bfloat16_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertBF16ToFINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(bfloat16_value))
	assert(bfloat16_value != 0)
	return builder.current_id^
}

OpControlBarrierArriveINTEL :: proc(builder: ^Builder, execution: Id, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ControlBarrierArriveINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpControlBarrierWaitINTEL :: proc(builder: ^Builder, execution: Id, memory: Id, semantics: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ControlBarrierWaitINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, u32(memory))
	assert(memory != 0)
	append(&builder.data, u32(semantics))
	assert(semantics != 0)
}

OpArithmeticFenceEXT :: proc(builder: ^Builder, result_type: Id, target: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ArithmeticFenceEXT))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target))
	assert(target != 0)
	return builder.current_id^
}

OpTaskSequenceCreateINTEL :: proc(builder: ^Builder, result_type: Id, function: Id, pipelined: u32, usestallenableclusters: u32, getcapacity: u32, asynccapacity: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TaskSequenceCreateINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(function))
	assert(function != 0)
	append(&builder.data, u32(pipelined))
	append(&builder.data, u32(usestallenableclusters))
	append(&builder.data, u32(getcapacity))
	append(&builder.data, u32(asynccapacity))
	return builder.current_id^
}

OpTaskSequenceAsyncINTEL :: proc(builder: ^Builder, sequence: Id, arguments: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TaskSequenceAsyncINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(sequence))
	assert(sequence != 0)
	for arguments in arguments {
		append(&builder.data, u32(arguments))
		assert(arguments != 0)
	}
}

OpTaskSequenceGetINTEL :: proc(builder: ^Builder, result_type: Id, sequence: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TaskSequenceGetINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(sequence))
	assert(sequence != 0)
	return builder.current_id^
}

OpTaskSequenceReleaseINTEL :: proc(builder: ^Builder, sequence: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.TaskSequenceReleaseINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(sequence))
	assert(sequence != 0)
}

OpTypeTaskSequenceINTEL :: proc(builder: ^Builder) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.TypeTaskSequenceINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, next_id(builder))
	return builder.current_id^
}

OpSubgroupBlockPrefetchINTEL :: proc(builder: ^Builder, ptr: Id, numbytes: Id, _operand_2: Maybe(MemoryAccess) = nil, _params: ..u32) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupBlockPrefetchINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(ptr))
	assert(ptr != 0)
	append(&builder.data, u32(numbytes))
	assert(numbytes != 0)
	if _operand_2, ok := _operand_2.?; ok {
		append(&builder.data, transmute(u32)_operand_2)
		append(&builder.data, .._params)
	}
}

OpSubgroup2DBlockLoadINTEL :: proc(builder: ^Builder, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Subgroup2DBlockLoadINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(element_size))
	assert(element_size != 0)
	append(&builder.data, u32(block_width))
	assert(block_width != 0)
	append(&builder.data, u32(block_height))
	assert(block_height != 0)
	append(&builder.data, u32(block_count))
	assert(block_count != 0)
	append(&builder.data, u32(src_base_pointer))
	assert(src_base_pointer != 0)
	append(&builder.data, u32(memory_width))
	assert(memory_width != 0)
	append(&builder.data, u32(memory_height))
	assert(memory_height != 0)
	append(&builder.data, u32(memory_pitch))
	assert(memory_pitch != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(dst_pointer))
	assert(dst_pointer != 0)
}

OpSubgroup2DBlockLoadTransformINTEL :: proc(builder: ^Builder, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Subgroup2DBlockLoadTransformINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(element_size))
	assert(element_size != 0)
	append(&builder.data, u32(block_width))
	assert(block_width != 0)
	append(&builder.data, u32(block_height))
	assert(block_height != 0)
	append(&builder.data, u32(block_count))
	assert(block_count != 0)
	append(&builder.data, u32(src_base_pointer))
	assert(src_base_pointer != 0)
	append(&builder.data, u32(memory_width))
	assert(memory_width != 0)
	append(&builder.data, u32(memory_height))
	assert(memory_height != 0)
	append(&builder.data, u32(memory_pitch))
	assert(memory_pitch != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(dst_pointer))
	assert(dst_pointer != 0)
}

OpSubgroup2DBlockLoadTransposeINTEL :: proc(builder: ^Builder, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Subgroup2DBlockLoadTransposeINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(element_size))
	assert(element_size != 0)
	append(&builder.data, u32(block_width))
	assert(block_width != 0)
	append(&builder.data, u32(block_height))
	assert(block_height != 0)
	append(&builder.data, u32(block_count))
	assert(block_count != 0)
	append(&builder.data, u32(src_base_pointer))
	assert(src_base_pointer != 0)
	append(&builder.data, u32(memory_width))
	assert(memory_width != 0)
	append(&builder.data, u32(memory_height))
	assert(memory_height != 0)
	append(&builder.data, u32(memory_pitch))
	assert(memory_pitch != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
	append(&builder.data, u32(dst_pointer))
	assert(dst_pointer != 0)
}

OpSubgroup2DBlockPrefetchINTEL :: proc(builder: ^Builder, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Subgroup2DBlockPrefetchINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(element_size))
	assert(element_size != 0)
	append(&builder.data, u32(block_width))
	assert(block_width != 0)
	append(&builder.data, u32(block_height))
	assert(block_height != 0)
	append(&builder.data, u32(block_count))
	assert(block_count != 0)
	append(&builder.data, u32(src_base_pointer))
	assert(src_base_pointer != 0)
	append(&builder.data, u32(memory_width))
	assert(memory_width != 0)
	append(&builder.data, u32(memory_height))
	assert(memory_height != 0)
	append(&builder.data, u32(memory_pitch))
	assert(memory_pitch != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
}

OpSubgroup2DBlockStoreINTEL :: proc(builder: ^Builder, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_pointer: Id, dst_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.Subgroup2DBlockStoreINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(element_size))
	assert(element_size != 0)
	append(&builder.data, u32(block_width))
	assert(block_width != 0)
	append(&builder.data, u32(block_height))
	assert(block_height != 0)
	append(&builder.data, u32(block_count))
	assert(block_count != 0)
	append(&builder.data, u32(src_pointer))
	assert(src_pointer != 0)
	append(&builder.data, u32(dst_base_pointer))
	assert(dst_base_pointer != 0)
	append(&builder.data, u32(memory_width))
	assert(memory_width != 0)
	append(&builder.data, u32(memory_height))
	assert(memory_height != 0)
	append(&builder.data, u32(memory_pitch))
	assert(memory_pitch != 0)
	append(&builder.data, u32(coordinate))
	assert(coordinate != 0)
}

OpSubgroupMatrixMultiplyAccumulateINTEL :: proc(builder: ^Builder, result_type: Id, k_dim: Id, matrix_a: Id, matrix_b: Id, matrix_c: Id, _operand_6: Maybe(MatrixMultiplyAccumulateOperands) = nil) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SubgroupMatrixMultiplyAccumulateINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(k_dim))
	assert(k_dim != 0)
	append(&builder.data, u32(matrix_a))
	assert(matrix_a != 0)
	append(&builder.data, u32(matrix_b))
	assert(matrix_b != 0)
	append(&builder.data, u32(matrix_c))
	assert(matrix_c != 0)
	if _operand_6, ok := _operand_6.?; ok {
		append(&builder.data, transmute(u32)_operand_6)
	}
	return builder.current_id^
}

OpBitwiseFunctionINTEL :: proc(builder: ^Builder, result_type: Id, a: Id, b: Id, c: Id, lutindex: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.BitwiseFunctionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(a))
	assert(a != 0)
	append(&builder.data, u32(b))
	assert(b != 0)
	append(&builder.data, u32(c))
	assert(c != 0)
	append(&builder.data, u32(lutindex))
	assert(lutindex != 0)
	return builder.current_id^
}

OpUntypedVariableLengthArrayINTEL :: proc(builder: ^Builder, result_type: Id, element_type: Id, length: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.UntypedVariableLengthArrayINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(element_type))
	assert(element_type != 0)
	append(&builder.data, u32(length))
	assert(length != 0)
	return builder.current_id^
}

OpConditionalExtensionINTEL :: proc(builder: ^Builder, condition: Id, name: string) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConditionalExtensionINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(condition))
	assert(condition != 0)
	write_string(&builder.data, name)
}

OpConditionalEntryPointINTEL :: proc(builder: ^Builder, condition: Id, _operand_1: ExecutionModel, entry_point: Id, name: string, interface: ..Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConditionalEntryPointINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(condition))
	assert(condition != 0)
	append(&builder.data, transmute(u32)_operand_1)
	append(&builder.data, u32(entry_point))
	assert(entry_point != 0)
	write_string(&builder.data, name)
	for interface in interface {
		append(&builder.data, u32(interface))
		assert(interface != 0)
	}
}

OpConditionalCapabilityINTEL :: proc(builder: ^Builder, condition: Id, capability: Capability) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConditionalCapabilityINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(condition))
	assert(condition != 0)
	append(&builder.data, transmute(u32)capability)
}

OpSpecConstantTargetINTEL :: proc(builder: ^Builder, result_type: Id, target: u32, features: ..u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantTargetINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(target))
	for features in features {
		append(&builder.data, u32(features))
	}
	return builder.current_id^
}

OpSpecConstantArchitectureINTEL :: proc(builder: ^Builder, result_type: Id, category: u32, family: u32, opcode: u32, architecture: u32) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantArchitectureINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(category))
	append(&builder.data, u32(family))
	append(&builder.data, u32(opcode))
	append(&builder.data, u32(architecture))
	return builder.current_id^
}

OpSpecConstantCapabilitiesINTEL :: proc(builder: ^Builder, result_type: Id, capabilities: ..Capability) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.SpecConstantCapabilitiesINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for capabilities in capabilities {
		append(&builder.data, transmute(u32)capabilities)
	}
	return builder.current_id^
}

OpConditionalCopyObjectINTEL :: proc(builder: ^Builder, result_type: Id, _operand_2: ..Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConditionalCopyObjectINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	for _operand_2 in _operand_2 {
		append(&builder.data, u32(_operand_2))
		assert(_operand_2 != 0)
	}
	return builder.current_id^
}

OpGroupIMulKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupIMulKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupFMulKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupFMulKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupBitwiseAndKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupBitwiseAndKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupBitwiseOrKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupBitwiseOrKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupBitwiseXorKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupBitwiseXorKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupLogicalAndKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupLogicalAndKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupLogicalOrKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupLogicalOrKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpGroupLogicalXorKHR :: proc(builder: ^Builder, result_type: Id, execution: Id, operation: GroupOperation, x: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.GroupLogicalXorKHR))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(execution))
	assert(execution != 0)
	append(&builder.data, transmute(u32)operation)
	append(&builder.data, u32(x))
	assert(x != 0)
	return builder.current_id^
}

OpRoundFToTF32INTEL :: proc(builder: ^Builder, result_type: Id, float_value: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.RoundFToTF32INTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(float_value))
	assert(float_value != 0)
	return builder.current_id^
}

OpMaskedGatherINTEL :: proc(builder: ^Builder, result_type: Id, ptrvector: Id, alignment: u32, mask: Id, fillempty: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.MaskedGatherINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(ptrvector))
	assert(ptrvector != 0)
	append(&builder.data, u32(alignment))
	append(&builder.data, u32(mask))
	assert(mask != 0)
	append(&builder.data, u32(fillempty))
	assert(fillempty != 0)
	return builder.current_id^
}

OpMaskedScatterINTEL :: proc(builder: ^Builder, inputvector: Id, ptrvector: Id, alignment: u32, mask: Id) -> () {
	start := len(builder.data)
	append(&builder.data, u32(Op.MaskedScatterINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(inputvector))
	assert(inputvector != 0)
	append(&builder.data, u32(ptrvector))
	assert(ptrvector != 0)
	append(&builder.data, u32(alignment))
	append(&builder.data, u32(mask))
	assert(mask != 0)
}

OpConvertHandleToImageINTEL :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertHandleToImageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertHandleToSamplerINTEL :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertHandleToSamplerINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

OpConvertHandleToSampledImageINTEL :: proc(builder: ^Builder, result_type: Id, operand: Id) -> (result: Id) {
	start := len(builder.data)
	append(&builder.data, u32(Op.ConvertHandleToSampledImageINTEL))
	defer builder.data[start] |= u32(len(builder.data) - start) << 16

	append(&builder.data, u32(result_type))
	assert(result_type != 0)
	append(&builder.data, next_id(builder))
	append(&builder.data, u32(operand))
	assert(operand != 0)
	return builder.current_id^
}

Op :: enum u32 {
	Nop = 0,
	Undef = 1,
	SourceContinued = 2,
	Source = 3,
	SourceExtension = 4,
	Name = 5,
	MemberName = 6,
	String = 7,
	Line = 8,
	Extension = 10,
	ExtInstImport = 11,
	ExtInst = 12,
	MemoryModel = 14,
	EntryPoint = 15,
	ExecutionMode = 16,
	Capability = 17,
	TypeVoid = 19,
	TypeBool = 20,
	TypeInt = 21,
	TypeFloat = 22,
	TypeVector = 23,
	TypeMatrix = 24,
	TypeImage = 25,
	TypeSampler = 26,
	TypeSampledImage = 27,
	TypeArray = 28,
	TypeRuntimeArray = 29,
	TypeStruct = 30,
	TypeOpaque = 31,
	TypePointer = 32,
	TypeFunction = 33,
	TypeEvent = 34,
	TypeDeviceEvent = 35,
	TypeReserveId = 36,
	TypeQueue = 37,
	TypePipe = 38,
	TypeForwardPointer = 39,
	ConstantTrue = 41,
	ConstantFalse = 42,
	Constant = 43,
	ConstantComposite = 44,
	ConstantSampler = 45,
	ConstantNull = 46,
	SpecConstantTrue = 48,
	SpecConstantFalse = 49,
	SpecConstant = 50,
	SpecConstantComposite = 51,
	SpecConstantOp = 52,
	Function = 54,
	FunctionParameter = 55,
	FunctionEnd = 56,
	FunctionCall = 57,
	Variable = 59,
	ImageTexelPointer = 60,
	Load = 61,
	Store = 62,
	CopyMemory = 63,
	CopyMemorySized = 64,
	AccessChain = 65,
	InBoundsAccessChain = 66,
	PtrAccessChain = 67,
	ArrayLength = 68,
	GenericPtrMemSemantics = 69,
	InBoundsPtrAccessChain = 70,
	Decorate = 71,
	MemberDecorate = 72,
	DecorationGroup = 73,
	GroupDecorate = 74,
	GroupMemberDecorate = 75,
	VectorExtractDynamic = 77,
	VectorInsertDynamic = 78,
	VectorShuffle = 79,
	CompositeConstruct = 80,
	CompositeExtract = 81,
	CompositeInsert = 82,
	CopyObject = 83,
	Transpose = 84,
	SampledImage = 86,
	ImageSampleImplicitLod = 87,
	ImageSampleExplicitLod = 88,
	ImageSampleDrefImplicitLod = 89,
	ImageSampleDrefExplicitLod = 90,
	ImageSampleProjImplicitLod = 91,
	ImageSampleProjExplicitLod = 92,
	ImageSampleProjDrefImplicitLod = 93,
	ImageSampleProjDrefExplicitLod = 94,
	ImageFetch = 95,
	ImageGather = 96,
	ImageDrefGather = 97,
	ImageRead = 98,
	ImageWrite = 99,
	Image = 100,
	ImageQueryFormat = 101,
	ImageQueryOrder = 102,
	ImageQuerySizeLod = 103,
	ImageQuerySize = 104,
	ImageQueryLod = 105,
	ImageQueryLevels = 106,
	ImageQuerySamples = 107,
	ConvertFToU = 109,
	ConvertFToS = 110,
	ConvertSToF = 111,
	ConvertUToF = 112,
	UConvert = 113,
	SConvert = 114,
	FConvert = 115,
	QuantizeToF16 = 116,
	ConvertPtrToU = 117,
	SatConvertSToU = 118,
	SatConvertUToS = 119,
	ConvertUToPtr = 120,
	PtrCastToGeneric = 121,
	GenericCastToPtr = 122,
	GenericCastToPtrExplicit = 123,
	Bitcast = 124,
	SNegate = 126,
	FNegate = 127,
	IAdd = 128,
	FAdd = 129,
	ISub = 130,
	FSub = 131,
	IMul = 132,
	FMul = 133,
	UDiv = 134,
	SDiv = 135,
	FDiv = 136,
	UMod = 137,
	SRem = 138,
	SMod = 139,
	FRem = 140,
	FMod = 141,
	VectorTimesScalar = 142,
	MatrixTimesScalar = 143,
	VectorTimesMatrix = 144,
	MatrixTimesVector = 145,
	MatrixTimesMatrix = 146,
	OuterProduct = 147,
	Dot = 148,
	IAddCarry = 149,
	ISubBorrow = 150,
	UMulExtended = 151,
	SMulExtended = 152,
	Any = 154,
	All = 155,
	IsNan = 156,
	IsInf = 157,
	IsFinite = 158,
	IsNormal = 159,
	SignBitSet = 160,
	LessOrGreater = 161,
	Ordered = 162,
	Unordered = 163,
	LogicalEqual = 164,
	LogicalNotEqual = 165,
	LogicalOr = 166,
	LogicalAnd = 167,
	LogicalNot = 168,
	Select = 169,
	IEqual = 170,
	INotEqual = 171,
	UGreaterThan = 172,
	SGreaterThan = 173,
	UGreaterThanEqual = 174,
	SGreaterThanEqual = 175,
	ULessThan = 176,
	SLessThan = 177,
	ULessThanEqual = 178,
	SLessThanEqual = 179,
	FOrdEqual = 180,
	FUnordEqual = 181,
	FOrdNotEqual = 182,
	FUnordNotEqual = 183,
	FOrdLessThan = 184,
	FUnordLessThan = 185,
	FOrdGreaterThan = 186,
	FUnordGreaterThan = 187,
	FOrdLessThanEqual = 188,
	FUnordLessThanEqual = 189,
	FOrdGreaterThanEqual = 190,
	FUnordGreaterThanEqual = 191,
	ShiftRightLogical = 194,
	ShiftRightArithmetic = 195,
	ShiftLeftLogical = 196,
	BitwiseOr = 197,
	BitwiseXor = 198,
	BitwiseAnd = 199,
	Not = 200,
	BitFieldInsert = 201,
	BitFieldSExtract = 202,
	BitFieldUExtract = 203,
	BitReverse = 204,
	BitCount = 205,
	DPdx = 207,
	DPdy = 208,
	Fwidth = 209,
	DPdxFine = 210,
	DPdyFine = 211,
	FwidthFine = 212,
	DPdxCoarse = 213,
	DPdyCoarse = 214,
	FwidthCoarse = 215,
	EmitVertex = 218,
	EndPrimitive = 219,
	EmitStreamVertex = 220,
	EndStreamPrimitive = 221,
	ControlBarrier = 224,
	MemoryBarrier = 225,
	AtomicLoad = 227,
	AtomicStore = 228,
	AtomicExchange = 229,
	AtomicCompareExchange = 230,
	AtomicCompareExchangeWeak = 231,
	AtomicIIncrement = 232,
	AtomicIDecrement = 233,
	AtomicIAdd = 234,
	AtomicISub = 235,
	AtomicSMin = 236,
	AtomicUMin = 237,
	AtomicSMax = 238,
	AtomicUMax = 239,
	AtomicAnd = 240,
	AtomicOr = 241,
	AtomicXor = 242,
	Phi = 245,
	LoopMerge = 246,
	SelectionMerge = 247,
	Label = 248,
	Branch = 249,
	BranchConditional = 250,
	Switch = 251,
	Kill = 252,
	Return = 253,
	ReturnValue = 254,
	Unreachable = 255,
	LifetimeStart = 256,
	LifetimeStop = 257,
	GroupAsyncCopy = 259,
	GroupWaitEvents = 260,
	GroupAll = 261,
	GroupAny = 262,
	GroupBroadcast = 263,
	GroupIAdd = 264,
	GroupFAdd = 265,
	GroupFMin = 266,
	GroupUMin = 267,
	GroupSMin = 268,
	GroupFMax = 269,
	GroupUMax = 270,
	GroupSMax = 271,
	ReadPipe = 274,
	WritePipe = 275,
	ReservedReadPipe = 276,
	ReservedWritePipe = 277,
	ReserveReadPipePackets = 278,
	ReserveWritePipePackets = 279,
	CommitReadPipe = 280,
	CommitWritePipe = 281,
	IsValidReserveId = 282,
	GetNumPipePackets = 283,
	GetMaxPipePackets = 284,
	GroupReserveReadPipePackets = 285,
	GroupReserveWritePipePackets = 286,
	GroupCommitReadPipe = 287,
	GroupCommitWritePipe = 288,
	EnqueueMarker = 291,
	EnqueueKernel = 292,
	GetKernelNDrangeSubGroupCount = 293,
	GetKernelNDrangeMaxSubGroupSize = 294,
	GetKernelWorkGroupSize = 295,
	GetKernelPreferredWorkGroupSizeMultiple = 296,
	RetainEvent = 297,
	ReleaseEvent = 298,
	CreateUserEvent = 299,
	IsValidEvent = 300,
	SetUserEventStatus = 301,
	CaptureEventProfilingInfo = 302,
	GetDefaultQueue = 303,
	BuildNDRange = 304,
	ImageSparseSampleImplicitLod = 305,
	ImageSparseSampleExplicitLod = 306,
	ImageSparseSampleDrefImplicitLod = 307,
	ImageSparseSampleDrefExplicitLod = 308,
	ImageSparseSampleProjImplicitLod = 309,
	ImageSparseSampleProjExplicitLod = 310,
	ImageSparseSampleProjDrefImplicitLod = 311,
	ImageSparseSampleProjDrefExplicitLod = 312,
	ImageSparseFetch = 313,
	ImageSparseGather = 314,
	ImageSparseDrefGather = 315,
	ImageSparseTexelsResident = 316,
	NoLine = 317,
	AtomicFlagTestAndSet = 318,
	AtomicFlagClear = 319,
	ImageSparseRead = 320,
	SizeOf = 321,
	TypePipeStorage = 322,
	ConstantPipeStorage = 323,
	CreatePipeFromPipeStorage = 324,
	GetKernelLocalSizeForSubgroupCount = 325,
	GetKernelMaxNumSubgroups = 326,
	TypeNamedBarrier = 327,
	NamedBarrierInitialize = 328,
	MemoryNamedBarrier = 329,
	ModuleProcessed = 330,
	ExecutionModeId = 331,
	DecorateId = 332,
	GroupNonUniformElect = 333,
	GroupNonUniformAll = 334,
	GroupNonUniformAny = 335,
	GroupNonUniformAllEqual = 336,
	GroupNonUniformBroadcast = 337,
	GroupNonUniformBroadcastFirst = 338,
	GroupNonUniformBallot = 339,
	GroupNonUniformInverseBallot = 340,
	GroupNonUniformBallotBitExtract = 341,
	GroupNonUniformBallotBitCount = 342,
	GroupNonUniformBallotFindLSB = 343,
	GroupNonUniformBallotFindMSB = 344,
	GroupNonUniformShuffle = 345,
	GroupNonUniformShuffleXor = 346,
	GroupNonUniformShuffleUp = 347,
	GroupNonUniformShuffleDown = 348,
	GroupNonUniformIAdd = 349,
	GroupNonUniformFAdd = 350,
	GroupNonUniformIMul = 351,
	GroupNonUniformFMul = 352,
	GroupNonUniformSMin = 353,
	GroupNonUniformUMin = 354,
	GroupNonUniformFMin = 355,
	GroupNonUniformSMax = 356,
	GroupNonUniformUMax = 357,
	GroupNonUniformFMax = 358,
	GroupNonUniformBitwiseAnd = 359,
	GroupNonUniformBitwiseOr = 360,
	GroupNonUniformBitwiseXor = 361,
	GroupNonUniformLogicalAnd = 362,
	GroupNonUniformLogicalOr = 363,
	GroupNonUniformLogicalXor = 364,
	GroupNonUniformQuadBroadcast = 365,
	GroupNonUniformQuadSwap = 366,
	CopyLogical = 400,
	PtrEqual = 401,
	PtrNotEqual = 402,
	PtrDiff = 403,
	ColorAttachmentReadEXT = 4160,
	DepthAttachmentReadEXT = 4161,
	StencilAttachmentReadEXT = 4162,
	TypeTensorARM = 4163,
	TensorReadARM = 4164,
	TensorWriteARM = 4165,
	TensorQuerySizeARM = 4166,
	GraphConstantARM = 4181,
	GraphEntryPointARM = 4182,
	GraphARM = 4183,
	GraphInputARM = 4184,
	GraphSetOutputARM = 4185,
	GraphEndARM = 4186,
	TypeGraphARM = 4190,
	TerminateInvocation = 4416,
	TypeUntypedPointerKHR = 4417,
	UntypedVariableKHR = 4418,
	UntypedAccessChainKHR = 4419,
	UntypedInBoundsAccessChainKHR = 4420,
	SubgroupBallotKHR = 4421,
	SubgroupFirstInvocationKHR = 4422,
	UntypedPtrAccessChainKHR = 4423,
	UntypedInBoundsPtrAccessChainKHR = 4424,
	UntypedArrayLengthKHR = 4425,
	UntypedPrefetchKHR = 4426,
	SubgroupAllKHR = 4428,
	SubgroupAnyKHR = 4429,
	SubgroupAllEqualKHR = 4430,
	GroupNonUniformRotateKHR = 4431,
	SubgroupReadInvocationKHR = 4432,
	ExtInstWithForwardRefsKHR = 4433,
	UntypedGroupAsyncCopyKHR = 4434,
	TraceRayKHR = 4445,
	ExecuteCallableKHR = 4446,
	ConvertUToAccelerationStructureKHR = 4447,
	IgnoreIntersectionKHR = 4448,
	TerminateRayKHR = 4449,
	SDot = 4450,
	UDot = 4451,
	SUDot = 4452,
	SDotAccSat = 4453,
	UDotAccSat = 4454,
	SUDotAccSat = 4455,
	TypeCooperativeMatrixKHR = 4456,
	CooperativeMatrixLoadKHR = 4457,
	CooperativeMatrixStoreKHR = 4458,
	CooperativeMatrixMulAddKHR = 4459,
	CooperativeMatrixLengthKHR = 4460,
	ConstantCompositeReplicateEXT = 4461,
	SpecConstantCompositeReplicateEXT = 4462,
	CompositeConstructReplicateEXT = 4463,
	TypeRayQueryKHR = 4472,
	RayQueryInitializeKHR = 4473,
	RayQueryTerminateKHR = 4474,
	RayQueryGenerateIntersectionKHR = 4475,
	RayQueryConfirmIntersectionKHR = 4476,
	RayQueryProceedKHR = 4477,
	RayQueryGetIntersectionTypeKHR = 4479,
	ImageSampleWeightedQCOM = 4480,
	ImageBoxFilterQCOM = 4481,
	ImageBlockMatchSSDQCOM = 4482,
	ImageBlockMatchSADQCOM = 4483,
	BitCastArrayQCOM = 4497,
	ImageBlockMatchWindowSSDQCOM = 4500,
	ImageBlockMatchWindowSADQCOM = 4501,
	ImageBlockMatchGatherSSDQCOM = 4502,
	ImageBlockMatchGatherSADQCOM = 4503,
	CompositeConstructCoopMatQCOM = 4540,
	CompositeExtractCoopMatQCOM = 4541,
	ExtractSubArrayQCOM = 4542,
	GroupIAddNonUniformAMD = 5000,
	GroupFAddNonUniformAMD = 5001,
	GroupFMinNonUniformAMD = 5002,
	GroupUMinNonUniformAMD = 5003,
	GroupSMinNonUniformAMD = 5004,
	GroupFMaxNonUniformAMD = 5005,
	GroupUMaxNonUniformAMD = 5006,
	GroupSMaxNonUniformAMD = 5007,
	FragmentMaskFetchAMD = 5011,
	FragmentFetchAMD = 5012,
	ReadClockKHR = 5056,
	AllocateNodePayloadsAMDX = 5074,
	EnqueueNodePayloadsAMDX = 5075,
	TypeNodePayloadArrayAMDX = 5076,
	FinishWritingNodePayloadAMDX = 5078,
	NodePayloadArrayLengthAMDX = 5090,
	IsNodePayloadValidAMDX = 5101,
	ConstantStringAMDX = 5103,
	SpecConstantStringAMDX = 5104,
	GroupNonUniformQuadAllKHR = 5110,
	GroupNonUniformQuadAnyKHR = 5111,
	HitObjectRecordHitMotionNV = 5249,
	HitObjectRecordHitWithIndexMotionNV = 5250,
	HitObjectRecordMissMotionNV = 5251,
	HitObjectGetWorldToObjectNV = 5252,
	HitObjectGetObjectToWorldNV = 5253,
	HitObjectGetObjectRayDirectionNV = 5254,
	HitObjectGetObjectRayOriginNV = 5255,
	HitObjectTraceRayMotionNV = 5256,
	HitObjectGetShaderRecordBufferHandleNV = 5257,
	HitObjectGetShaderBindingTableRecordIndexNV = 5258,
	HitObjectRecordEmptyNV = 5259,
	HitObjectTraceRayNV = 5260,
	HitObjectRecordHitNV = 5261,
	HitObjectRecordHitWithIndexNV = 5262,
	HitObjectRecordMissNV = 5263,
	HitObjectExecuteShaderNV = 5264,
	HitObjectGetCurrentTimeNV = 5265,
	HitObjectGetAttributesNV = 5266,
	HitObjectGetHitKindNV = 5267,
	HitObjectGetPrimitiveIndexNV = 5268,
	HitObjectGetGeometryIndexNV = 5269,
	HitObjectGetInstanceIdNV = 5270,
	HitObjectGetInstanceCustomIndexNV = 5271,
	HitObjectGetWorldRayDirectionNV = 5272,
	HitObjectGetWorldRayOriginNV = 5273,
	HitObjectGetRayTMaxNV = 5274,
	HitObjectGetRayTMinNV = 5275,
	HitObjectIsEmptyNV = 5276,
	HitObjectIsHitNV = 5277,
	HitObjectIsMissNV = 5278,
	ReorderThreadWithHitObjectNV = 5279,
	ReorderThreadWithHintNV = 5280,
	TypeHitObjectNV = 5281,
	ImageSampleFootprintNV = 5283,
	TypeCooperativeVectorNV = 5288,
	CooperativeVectorMatrixMulNV = 5289,
	CooperativeVectorOuterProductAccumulateNV = 5290,
	CooperativeVectorReduceSumAccumulateNV = 5291,
	CooperativeVectorMatrixMulAddNV = 5292,
	CooperativeMatrixConvertNV = 5293,
	EmitMeshTasksEXT = 5294,
	SetMeshOutputsEXT = 5295,
	GroupNonUniformPartitionNV = 5296,
	WritePackedPrimitiveIndices4x8NV = 5299,
	FetchMicroTriangleVertexPositionNV = 5300,
	FetchMicroTriangleVertexBarycentricNV = 5301,
	CooperativeVectorLoadNV = 5302,
	CooperativeVectorStoreNV = 5303,
	ReportIntersectionKHR = 5334,
	IgnoreIntersectionNV = 5335,
	TerminateRayNV = 5336,
	TraceNV = 5337,
	TraceMotionNV = 5338,
	TraceRayMotionNV = 5339,
	RayQueryGetIntersectionTriangleVertexPositionsKHR = 5340,
	TypeAccelerationStructureKHR = 5341,
	ExecuteCallableNV = 5344,
	RayQueryGetIntersectionClusterIdNV = 5345,
	HitObjectGetClusterIdNV = 5346,
	TypeCooperativeMatrixNV = 5358,
	CooperativeMatrixLoadNV = 5359,
	CooperativeMatrixStoreNV = 5360,
	CooperativeMatrixMulAddNV = 5361,
	CooperativeMatrixLengthNV = 5362,
	BeginInvocationInterlockEXT = 5364,
	EndInvocationInterlockEXT = 5365,
	CooperativeMatrixReduceNV = 5366,
	CooperativeMatrixLoadTensorNV = 5367,
	CooperativeMatrixStoreTensorNV = 5368,
	CooperativeMatrixPerElementOpNV = 5369,
	TypeTensorLayoutNV = 5370,
	TypeTensorViewNV = 5371,
	CreateTensorLayoutNV = 5372,
	TensorLayoutSetDimensionNV = 5373,
	TensorLayoutSetStrideNV = 5374,
	TensorLayoutSliceNV = 5375,
	TensorLayoutSetClampValueNV = 5376,
	CreateTensorViewNV = 5377,
	TensorViewSetDimensionNV = 5378,
	TensorViewSetStrideNV = 5379,
	DemoteToHelperInvocation = 5380,
	IsHelperInvocationEXT = 5381,
	TensorViewSetClipNV = 5382,
	TensorLayoutSetBlockSizeNV = 5384,
	CooperativeMatrixTransposeNV = 5390,
	ConvertUToImageNV = 5391,
	ConvertUToSamplerNV = 5392,
	ConvertImageToUNV = 5393,
	ConvertSamplerToUNV = 5394,
	ConvertUToSampledImageNV = 5395,
	ConvertSampledImageToUNV = 5396,
	SamplerImageAddressingModeNV = 5397,
	RawAccessChainNV = 5398,
	RayQueryGetIntersectionSpherePositionNV = 5427,
	RayQueryGetIntersectionSphereRadiusNV = 5428,
	RayQueryGetIntersectionLSSPositionsNV = 5429,
	RayQueryGetIntersectionLSSRadiiNV = 5430,
	RayQueryGetIntersectionLSSHitValueNV = 5431,
	HitObjectGetSpherePositionNV = 5432,
	HitObjectGetSphereRadiusNV = 5433,
	HitObjectGetLSSPositionsNV = 5434,
	HitObjectGetLSSRadiiNV = 5435,
	HitObjectIsSphereHitNV = 5436,
	HitObjectIsLSSHitNV = 5437,
	RayQueryIsSphereHitNV = 5438,
	RayQueryIsLSSHitNV = 5439,
	SubgroupShuffleINTEL = 5571,
	SubgroupShuffleDownINTEL = 5572,
	SubgroupShuffleUpINTEL = 5573,
	SubgroupShuffleXorINTEL = 5574,
	SubgroupBlockReadINTEL = 5575,
	SubgroupBlockWriteINTEL = 5576,
	SubgroupImageBlockReadINTEL = 5577,
	SubgroupImageBlockWriteINTEL = 5578,
	SubgroupImageMediaBlockReadINTEL = 5580,
	SubgroupImageMediaBlockWriteINTEL = 5581,
	UCountLeadingZerosINTEL = 5585,
	UCountTrailingZerosINTEL = 5586,
	AbsISubINTEL = 5587,
	AbsUSubINTEL = 5588,
	IAddSatINTEL = 5589,
	UAddSatINTEL = 5590,
	IAverageINTEL = 5591,
	UAverageINTEL = 5592,
	IAverageRoundedINTEL = 5593,
	UAverageRoundedINTEL = 5594,
	ISubSatINTEL = 5595,
	USubSatINTEL = 5596,
	IMul32x16INTEL = 5597,
	UMul32x16INTEL = 5598,
	ConstantFunctionPointerINTEL = 5600,
	FunctionPointerCallINTEL = 5601,
	AsmTargetINTEL = 5609,
	AsmINTEL = 5610,
	AsmCallINTEL = 5611,
	AtomicFMinEXT = 5614,
	AtomicFMaxEXT = 5615,
	AssumeTrueKHR = 5630,
	ExpectKHR = 5631,
	DecorateString = 5632,
	MemberDecorateString = 5633,
	VmeImageINTEL = 5699,
	TypeVmeImageINTEL = 5700,
	TypeAvcImePayloadINTEL = 5701,
	TypeAvcRefPayloadINTEL = 5702,
	TypeAvcSicPayloadINTEL = 5703,
	TypeAvcMcePayloadINTEL = 5704,
	TypeAvcMceResultINTEL = 5705,
	TypeAvcImeResultINTEL = 5706,
	TypeAvcImeResultSingleReferenceStreamoutINTEL = 5707,
	TypeAvcImeResultDualReferenceStreamoutINTEL = 5708,
	TypeAvcImeSingleReferenceStreaminINTEL = 5709,
	TypeAvcImeDualReferenceStreaminINTEL = 5710,
	TypeAvcRefResultINTEL = 5711,
	TypeAvcSicResultINTEL = 5712,
	SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL = 5713,
	SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL = 5714,
	SubgroupAvcMceGetDefaultInterShapePenaltyINTEL = 5715,
	SubgroupAvcMceSetInterShapePenaltyINTEL = 5716,
	SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL = 5717,
	SubgroupAvcMceSetInterDirectionPenaltyINTEL = 5718,
	SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL = 5719,
	SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL = 5720,
	SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL = 5721,
	SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL = 5722,
	SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL = 5723,
	SubgroupAvcMceSetMotionVectorCostFunctionINTEL = 5724,
	SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL = 5725,
	SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL = 5726,
	SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL = 5727,
	SubgroupAvcMceSetAcOnlyHaarINTEL = 5728,
	SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL = 5729,
	SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL = 5730,
	SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL = 5731,
	SubgroupAvcMceConvertToImePayloadINTEL = 5732,
	SubgroupAvcMceConvertToImeResultINTEL = 5733,
	SubgroupAvcMceConvertToRefPayloadINTEL = 5734,
	SubgroupAvcMceConvertToRefResultINTEL = 5735,
	SubgroupAvcMceConvertToSicPayloadINTEL = 5736,
	SubgroupAvcMceConvertToSicResultINTEL = 5737,
	SubgroupAvcMceGetMotionVectorsINTEL = 5738,
	SubgroupAvcMceGetInterDistortionsINTEL = 5739,
	SubgroupAvcMceGetBestInterDistortionsINTEL = 5740,
	SubgroupAvcMceGetInterMajorShapeINTEL = 5741,
	SubgroupAvcMceGetInterMinorShapeINTEL = 5742,
	SubgroupAvcMceGetInterDirectionsINTEL = 5743,
	SubgroupAvcMceGetInterMotionVectorCountINTEL = 5744,
	SubgroupAvcMceGetInterReferenceIdsINTEL = 5745,
	SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL = 5746,
	SubgroupAvcImeInitializeINTEL = 5747,
	SubgroupAvcImeSetSingleReferenceINTEL = 5748,
	SubgroupAvcImeSetDualReferenceINTEL = 5749,
	SubgroupAvcImeRefWindowSizeINTEL = 5750,
	SubgroupAvcImeAdjustRefOffsetINTEL = 5751,
	SubgroupAvcImeConvertToMcePayloadINTEL = 5752,
	SubgroupAvcImeSetMaxMotionVectorCountINTEL = 5753,
	SubgroupAvcImeSetUnidirectionalMixDisableINTEL = 5754,
	SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL = 5755,
	SubgroupAvcImeSetWeightedSadINTEL = 5756,
	SubgroupAvcImeEvaluateWithSingleReferenceINTEL = 5757,
	SubgroupAvcImeEvaluateWithDualReferenceINTEL = 5758,
	SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL = 5759,
	SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL = 5760,
	SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL = 5761,
	SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL = 5762,
	SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL = 5763,
	SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL = 5764,
	SubgroupAvcImeConvertToMceResultINTEL = 5765,
	SubgroupAvcImeGetSingleReferenceStreaminINTEL = 5766,
	SubgroupAvcImeGetDualReferenceStreaminINTEL = 5767,
	SubgroupAvcImeStripSingleReferenceStreamoutINTEL = 5768,
	SubgroupAvcImeStripDualReferenceStreamoutINTEL = 5769,
	SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL = 5770,
	SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL = 5771,
	SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL = 5772,
	SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL = 5773,
	SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL = 5774,
	SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL = 5775,
	SubgroupAvcImeGetBorderReachedINTEL = 5776,
	SubgroupAvcImeGetTruncatedSearchIndicationINTEL = 5777,
	SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL = 5778,
	SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL = 5779,
	SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL = 5780,
	SubgroupAvcFmeInitializeINTEL = 5781,
	SubgroupAvcBmeInitializeINTEL = 5782,
	SubgroupAvcRefConvertToMcePayloadINTEL = 5783,
	SubgroupAvcRefSetBidirectionalMixDisableINTEL = 5784,
	SubgroupAvcRefSetBilinearFilterEnableINTEL = 5785,
	SubgroupAvcRefEvaluateWithSingleReferenceINTEL = 5786,
	SubgroupAvcRefEvaluateWithDualReferenceINTEL = 5787,
	SubgroupAvcRefEvaluateWithMultiReferenceINTEL = 5788,
	SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL = 5789,
	SubgroupAvcRefConvertToMceResultINTEL = 5790,
	SubgroupAvcSicInitializeINTEL = 5791,
	SubgroupAvcSicConfigureSkcINTEL = 5792,
	SubgroupAvcSicConfigureIpeLumaINTEL = 5793,
	SubgroupAvcSicConfigureIpeLumaChromaINTEL = 5794,
	SubgroupAvcSicGetMotionVectorMaskINTEL = 5795,
	SubgroupAvcSicConvertToMcePayloadINTEL = 5796,
	SubgroupAvcSicSetIntraLumaShapePenaltyINTEL = 5797,
	SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL = 5798,
	SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL = 5799,
	SubgroupAvcSicSetBilinearFilterEnableINTEL = 5800,
	SubgroupAvcSicSetSkcForwardTransformEnableINTEL = 5801,
	SubgroupAvcSicSetBlockBasedRawSkipSadINTEL = 5802,
	SubgroupAvcSicEvaluateIpeINTEL = 5803,
	SubgroupAvcSicEvaluateWithSingleReferenceINTEL = 5804,
	SubgroupAvcSicEvaluateWithDualReferenceINTEL = 5805,
	SubgroupAvcSicEvaluateWithMultiReferenceINTEL = 5806,
	SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL = 5807,
	SubgroupAvcSicConvertToMceResultINTEL = 5808,
	SubgroupAvcSicGetIpeLumaShapeINTEL = 5809,
	SubgroupAvcSicGetBestIpeLumaDistortionINTEL = 5810,
	SubgroupAvcSicGetBestIpeChromaDistortionINTEL = 5811,
	SubgroupAvcSicGetPackedIpeLumaModesINTEL = 5812,
	SubgroupAvcSicGetIpeChromaModeINTEL = 5813,
	SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL = 5814,
	SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL = 5815,
	SubgroupAvcSicGetInterRawSadsINTEL = 5816,
	VariableLengthArrayINTEL = 5818,
	SaveMemoryINTEL = 5819,
	RestoreMemoryINTEL = 5820,
	ArbitraryFloatSinCosPiINTEL = 5840,
	ArbitraryFloatCastINTEL = 5841,
	ArbitraryFloatCastFromIntINTEL = 5842,
	ArbitraryFloatCastToIntINTEL = 5843,
	ArbitraryFloatAddINTEL = 5846,
	ArbitraryFloatSubINTEL = 5847,
	ArbitraryFloatMulINTEL = 5848,
	ArbitraryFloatDivINTEL = 5849,
	ArbitraryFloatGTINTEL = 5850,
	ArbitraryFloatGEINTEL = 5851,
	ArbitraryFloatLTINTEL = 5852,
	ArbitraryFloatLEINTEL = 5853,
	ArbitraryFloatEQINTEL = 5854,
	ArbitraryFloatRecipINTEL = 5855,
	ArbitraryFloatRSqrtINTEL = 5856,
	ArbitraryFloatCbrtINTEL = 5857,
	ArbitraryFloatHypotINTEL = 5858,
	ArbitraryFloatSqrtINTEL = 5859,
	ArbitraryFloatLogINTEL = 5860,
	ArbitraryFloatLog2INTEL = 5861,
	ArbitraryFloatLog10INTEL = 5862,
	ArbitraryFloatLog1pINTEL = 5863,
	ArbitraryFloatExpINTEL = 5864,
	ArbitraryFloatExp2INTEL = 5865,
	ArbitraryFloatExp10INTEL = 5866,
	ArbitraryFloatExpm1INTEL = 5867,
	ArbitraryFloatSinINTEL = 5868,
	ArbitraryFloatCosINTEL = 5869,
	ArbitraryFloatSinCosINTEL = 5870,
	ArbitraryFloatSinPiINTEL = 5871,
	ArbitraryFloatCosPiINTEL = 5872,
	ArbitraryFloatASinINTEL = 5873,
	ArbitraryFloatASinPiINTEL = 5874,
	ArbitraryFloatACosINTEL = 5875,
	ArbitraryFloatACosPiINTEL = 5876,
	ArbitraryFloatATanINTEL = 5877,
	ArbitraryFloatATanPiINTEL = 5878,
	ArbitraryFloatATan2INTEL = 5879,
	ArbitraryFloatPowINTEL = 5880,
	ArbitraryFloatPowRINTEL = 5881,
	ArbitraryFloatPowNINTEL = 5882,
	LoopControlINTEL = 5887,
	AliasDomainDeclINTEL = 5911,
	AliasScopeDeclINTEL = 5912,
	AliasScopeListDeclINTEL = 5913,
	FixedSqrtINTEL = 5923,
	FixedRecipINTEL = 5924,
	FixedRsqrtINTEL = 5925,
	FixedSinINTEL = 5926,
	FixedCosINTEL = 5927,
	FixedSinCosINTEL = 5928,
	FixedSinPiINTEL = 5929,
	FixedCosPiINTEL = 5930,
	FixedSinCosPiINTEL = 5931,
	FixedLogINTEL = 5932,
	FixedExpINTEL = 5933,
	PtrCastToCrossWorkgroupINTEL = 5934,
	CrossWorkgroupCastToPtrINTEL = 5938,
	ReadPipeBlockingINTEL = 5946,
	WritePipeBlockingINTEL = 5947,
	FPGARegINTEL = 5949,
	RayQueryGetRayTMinKHR = 6016,
	RayQueryGetRayFlagsKHR = 6017,
	RayQueryGetIntersectionTKHR = 6018,
	RayQueryGetIntersectionInstanceCustomIndexKHR = 6019,
	RayQueryGetIntersectionInstanceIdKHR = 6020,
	RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR = 6021,
	RayQueryGetIntersectionGeometryIndexKHR = 6022,
	RayQueryGetIntersectionPrimitiveIndexKHR = 6023,
	RayQueryGetIntersectionBarycentricsKHR = 6024,
	RayQueryGetIntersectionFrontFaceKHR = 6025,
	RayQueryGetIntersectionCandidateAABBOpaqueKHR = 6026,
	RayQueryGetIntersectionObjectRayDirectionKHR = 6027,
	RayQueryGetIntersectionObjectRayOriginKHR = 6028,
	RayQueryGetWorldRayDirectionKHR = 6029,
	RayQueryGetWorldRayOriginKHR = 6030,
	RayQueryGetIntersectionObjectToWorldKHR = 6031,
	RayQueryGetIntersectionWorldToObjectKHR = 6032,
	AtomicFAddEXT = 6035,
	TypeBufferSurfaceINTEL = 6086,
	TypeStructContinuedINTEL = 6090,
	ConstantCompositeContinuedINTEL = 6091,
	SpecConstantCompositeContinuedINTEL = 6092,
	CompositeConstructContinuedINTEL = 6096,
	ConvertFToBF16INTEL = 6116,
	ConvertBF16ToFINTEL = 6117,
	ControlBarrierArriveINTEL = 6142,
	ControlBarrierWaitINTEL = 6143,
	ArithmeticFenceEXT = 6145,
	TaskSequenceCreateINTEL = 6163,
	TaskSequenceAsyncINTEL = 6164,
	TaskSequenceGetINTEL = 6165,
	TaskSequenceReleaseINTEL = 6166,
	TypeTaskSequenceINTEL = 6199,
	SubgroupBlockPrefetchINTEL = 6221,
	Subgroup2DBlockLoadINTEL = 6231,
	Subgroup2DBlockLoadTransformINTEL = 6232,
	Subgroup2DBlockLoadTransposeINTEL = 6233,
	Subgroup2DBlockPrefetchINTEL = 6234,
	Subgroup2DBlockStoreINTEL = 6235,
	SubgroupMatrixMultiplyAccumulateINTEL = 6237,
	BitwiseFunctionINTEL = 6242,
	UntypedVariableLengthArrayINTEL = 6244,
	ConditionalExtensionINTEL = 6248,
	ConditionalEntryPointINTEL = 6249,
	ConditionalCapabilityINTEL = 6250,
	SpecConstantTargetINTEL = 6251,
	SpecConstantArchitectureINTEL = 6252,
	SpecConstantCapabilitiesINTEL = 6253,
	ConditionalCopyObjectINTEL = 6254,
	GroupIMulKHR = 6401,
	GroupFMulKHR = 6402,
	GroupBitwiseAndKHR = 6403,
	GroupBitwiseOrKHR = 6404,
	GroupBitwiseXorKHR = 6405,
	GroupLogicalAndKHR = 6406,
	GroupLogicalOrKHR = 6407,
	GroupLogicalXorKHR = 6408,
	RoundFToTF32INTEL = 6426,
	MaskedGatherINTEL = 6428,
	MaskedScatterINTEL = 6429,
	ConvertHandleToImageINTEL = 6529,
	ConvertHandleToSamplerINTEL = 6530,
	ConvertHandleToSampledImageINTEL = 6531,
}
