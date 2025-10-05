// This file is auto generated from the official khronos json files
package spirv

import "core:slice"

VERSION      :: 0x00010600
REVISION     :: 4
MAGIC_NUMBER :: 0x07230203

Id :: distinct u32

write_string :: proc(instructions: ^[dynamic]u32, str: string) {
	start := len(instructions)
	resize(instructions, len(instructions) + (len(str) + 1 + 3) / 4)
	copy(slice.to_bytes(instructions[start:]), transmute([]byte)str)
}

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

write_OpNop :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.Nop))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpUndef :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.Undef))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSourceContinued :: proc(out: ^[dynamic]u32, continued_source: string) {
	start := len(out)
	append(out, u32(Op.SourceContinued))
	defer out[start] |= u32(len(out) - start) << 16

	write_string(out, continued_source)
}

write_OpSource :: proc(out: ^[dynamic]u32, _operand_0: SourceLanguage, version: u32, file: Maybe(Id) = nil, source: Maybe(string) = nil) {
	start := len(out)
	append(out, u32(Op.Source))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, transmute(u32)_operand_0)
	append(out, u32(version))
	if file, ok := file.?; ok do append(out, u32(file))
	if source, ok := source.?; ok do write_string(out, source)
}

write_OpSourceExtension :: proc(out: ^[dynamic]u32, extension: string) {
	start := len(out)
	append(out, u32(Op.SourceExtension))
	defer out[start] |= u32(len(out) - start) << 16

	write_string(out, extension)
}

write_OpName :: proc(out: ^[dynamic]u32, target: Id, name: string) {
	start := len(out)
	append(out, u32(Op.Name))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	write_string(out, name)
}

write_OpMemberName :: proc(out: ^[dynamic]u32, type: Id, member: u32, name: string) {
	start := len(out)
	append(out, u32(Op.MemberName))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(type))
	append(out, u32(member))
	write_string(out, name)
}

write_OpString :: proc(out: ^[dynamic]u32, result: Id, string: string) {
	start := len(out)
	append(out, u32(Op.String))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, string)
}

write_OpLine :: proc(out: ^[dynamic]u32, file: Id, line: u32, column: u32) {
	start := len(out)
	append(out, u32(Op.Line))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(file))
	append(out, u32(line))
	append(out, u32(column))
}

write_OpExtension :: proc(out: ^[dynamic]u32, name: string) {
	start := len(out)
	append(out, u32(Op.Extension))
	defer out[start] |= u32(len(out) - start) << 16

	write_string(out, name)
}

write_OpExtInstImport :: proc(out: ^[dynamic]u32, result: Id, name: string) {
	start := len(out)
	append(out, u32(Op.ExtInstImport))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, name)
}

write_OpExtInst :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, set: Id, instruction: u32, _operand_4: ..Id) {
	start := len(out)
	append(out, u32(Op.ExtInst))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(set))
	append(out, u32(instruction))
	for _operand_4 in _operand_4 do append(out, u32(_operand_4))
}

write_OpMemoryModel :: proc(out: ^[dynamic]u32, _operand_0: AddressingModel, _operand_1: MemoryModel) {
	start := len(out)
	append(out, u32(Op.MemoryModel))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, transmute(u32)_operand_0)
	append(out, transmute(u32)_operand_1)
}

write_OpEntryPoint :: proc(out: ^[dynamic]u32, _operand_0: ExecutionModel, entry_point: Id, name: string, interface: ..Id) {
	start := len(out)
	append(out, u32(Op.EntryPoint))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, transmute(u32)_operand_0)
	append(out, u32(entry_point))
	write_string(out, name)
	for interface in interface do append(out, u32(interface))
}

write_OpExecutionMode :: proc(out: ^[dynamic]u32, entry_point: Id, mode: ExecutionMode) {
	start := len(out)
	append(out, u32(Op.ExecutionMode))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(entry_point))
	append(out, transmute(u32)mode)
}

write_OpCapability :: proc(out: ^[dynamic]u32, capability: Capability) {
	start := len(out)
	append(out, u32(Op.Capability))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, transmute(u32)capability)
}

write_OpTypeVoid :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeVoid))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeBool :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeBool))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeInt :: proc(out: ^[dynamic]u32, result: Id, width: u32, signedness: u32) {
	start := len(out)
	append(out, u32(Op.TypeInt))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(width))
	append(out, u32(signedness))
}

write_OpTypeFloat :: proc(out: ^[dynamic]u32, result: Id, width: u32, floating_point_encoding: Maybe(FPEncoding) = nil) {
	start := len(out)
	append(out, u32(Op.TypeFloat))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(width))
	if floating_point_encoding, ok := floating_point_encoding.?; ok do append(out, transmute(u32)floating_point_encoding)
}

write_OpTypeVector :: proc(out: ^[dynamic]u32, result: Id, component_type: Id, component_count: u32) {
	start := len(out)
	append(out, u32(Op.TypeVector))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(component_type))
	append(out, u32(component_count))
}

write_OpTypeMatrix :: proc(out: ^[dynamic]u32, result: Id, column_type: Id, column_count: u32) {
	start := len(out)
	append(out, u32(Op.TypeMatrix))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(column_type))
	append(out, u32(column_count))
}

write_OpTypeImage :: proc(out: ^[dynamic]u32, result: Id, sampled_type: Id, _operand_2: Dim, depth: u32, arrayed: u32, ms: u32, sampled: u32, _operand_7: ImageFormat, _operand_8: Maybe(AccessQualifier) = nil) {
	start := len(out)
	append(out, u32(Op.TypeImage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(sampled_type))
	append(out, transmute(u32)_operand_2)
	append(out, u32(depth))
	append(out, u32(arrayed))
	append(out, u32(ms))
	append(out, u32(sampled))
	append(out, transmute(u32)_operand_7)
	if _operand_8, ok := _operand_8.?; ok do append(out, transmute(u32)_operand_8)
}

write_OpTypeSampler :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeSampler))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeSampledImage :: proc(out: ^[dynamic]u32, result: Id, image_type: Id) {
	start := len(out)
	append(out, u32(Op.TypeSampledImage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(image_type))
}

write_OpTypeArray :: proc(out: ^[dynamic]u32, result: Id, element_type: Id, length: Id) {
	start := len(out)
	append(out, u32(Op.TypeArray))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(element_type))
	append(out, u32(length))
}

write_OpTypeRuntimeArray :: proc(out: ^[dynamic]u32, result: Id, element_type: Id) {
	start := len(out)
	append(out, u32(Op.TypeRuntimeArray))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(element_type))
}

write_OpTypeStruct :: proc(out: ^[dynamic]u32, result: Id, _operand_1: ..Id) {
	start := len(out)
	append(out, u32(Op.TypeStruct))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	for _operand_1 in _operand_1 do append(out, u32(_operand_1))
}

write_OpTypeOpaque :: proc(out: ^[dynamic]u32, result: Id, _operand_1: string) {
	start := len(out)
	append(out, u32(Op.TypeOpaque))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, _operand_1)
}

write_OpTypePointer :: proc(out: ^[dynamic]u32, result: Id, _operand_1: StorageClass, type: Id) {
	start := len(out)
	append(out, u32(Op.TypePointer))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, transmute(u32)_operand_1)
	append(out, u32(type))
}

write_OpTypeFunction :: proc(out: ^[dynamic]u32, result: Id, return_type: Id, _operand_2: ..Id) {
	start := len(out)
	append(out, u32(Op.TypeFunction))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(return_type))
	for _operand_2 in _operand_2 do append(out, u32(_operand_2))
}

write_OpTypeEvent :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeDeviceEvent :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeDeviceEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeReserveId :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeReserveId))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeQueue :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeQueue))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypePipe :: proc(out: ^[dynamic]u32, result: Id, qualifier: AccessQualifier) {
	start := len(out)
	append(out, u32(Op.TypePipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, transmute(u32)qualifier)
}

write_OpTypeForwardPointer :: proc(out: ^[dynamic]u32, pointer_type: Id, _operand_1: StorageClass) {
	start := len(out)
	append(out, u32(Op.TypeForwardPointer))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer_type))
	append(out, transmute(u32)_operand_1)
}

write_OpConstantTrue :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.ConstantTrue))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpConstantFalse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.ConstantFalse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpConstant :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: u32) {
	start := len(out)
	append(out, u32(Op.Constant))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpConstantComposite :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.ConstantComposite))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for constituents in constituents do append(out, u32(constituents))
}

write_OpConstantSampler :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: SamplerAddressingMode, param: u32, _operand_4: SamplerFilterMode) {
	start := len(out)
	append(out, u32(Op.ConstantSampler))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, transmute(u32)_operand_2)
	append(out, u32(param))
	append(out, transmute(u32)_operand_4)
}

write_OpConstantNull :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.ConstantNull))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSpecConstantTrue :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SpecConstantTrue))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSpecConstantFalse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SpecConstantFalse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSpecConstant :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: u32) {
	start := len(out)
	append(out, u32(Op.SpecConstant))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpSpecConstantComposite :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.SpecConstantComposite))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for constituents in constituents do append(out, u32(constituents))
}

write_OpSpecConstantOp :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, opcode: u32) {
	start := len(out)
	append(out, u32(Op.SpecConstantOp))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(opcode))
}

write_OpFunction :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: FunctionControl, function_type: Id) {
	start := len(out)
	append(out, u32(Op.Function))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, transmute(u32)_operand_2)
	append(out, u32(function_type))
}

write_OpFunctionParameter :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.FunctionParameter))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpFunctionEnd :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.FunctionEnd))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpFunctionCall :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, function: Id, _operand_3: ..Id) {
	start := len(out)
	append(out, u32(Op.FunctionCall))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(function))
	for _operand_3 in _operand_3 do append(out, u32(_operand_3))
}

write_OpVariable :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: StorageClass, initializer: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.Variable))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, transmute(u32)_operand_2)
	if initializer, ok := initializer.?; ok do append(out, u32(initializer))
}

write_OpImageTexelPointer :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, sample: Id) {
	start := len(out)
	append(out, u32(Op.ImageTexelPointer))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(sample))
}

write_OpLoad :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, _operand_3: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.Load))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
}

write_OpStore :: proc(out: ^[dynamic]u32, pointer: Id, object: Id, _operand_2: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.Store))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(object))
	if _operand_2, ok := _operand_2.?; ok do append(out, transmute(u32)_operand_2)
}

write_OpCopyMemory :: proc(out: ^[dynamic]u32, target: Id, source: Id, _operand_2: Maybe(MemoryAccess) = nil, _operand_3: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CopyMemory))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	append(out, u32(source))
	if _operand_2, ok := _operand_2.?; ok do append(out, transmute(u32)_operand_2)
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
}

write_OpCopyMemorySized :: proc(out: ^[dynamic]u32, target: Id, source: Id, size: Id, _operand_3: Maybe(MemoryAccess) = nil, _operand_4: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CopyMemorySized))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	append(out, u32(source))
	append(out, u32(size))
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpAccessChain :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.AccessChain))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpInBoundsAccessChain :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.InBoundsAccessChain))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpPtrAccessChain :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, element: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.PtrAccessChain))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(element))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpArrayLength :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, structure: Id, array_member: u32) {
	start := len(out)
	append(out, u32(Op.ArrayLength))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(structure))
	append(out, u32(array_member))
}

write_OpGenericPtrMemSemantics :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.GenericPtrMemSemantics))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpInBoundsPtrAccessChain :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, element: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.InBoundsPtrAccessChain))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(element))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpDecorate :: proc(out: ^[dynamic]u32, target: Id, _operand_1: Decoration) {
	start := len(out)
	append(out, u32(Op.Decorate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	append(out, transmute(u32)_operand_1)
}

write_OpMemberDecorate :: proc(out: ^[dynamic]u32, structure_type: Id, member: u32, _operand_2: Decoration) {
	start := len(out)
	append(out, u32(Op.MemberDecorate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(structure_type))
	append(out, u32(member))
	append(out, transmute(u32)_operand_2)
}

write_OpDecorationGroup :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.DecorationGroup))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpGroupDecorate :: proc(out: ^[dynamic]u32, decoration_group: Id, targets: ..Id) {
	start := len(out)
	append(out, u32(Op.GroupDecorate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(decoration_group))
	for targets in targets do append(out, u32(targets))
}

write_OpGroupMemberDecorate :: proc(out: ^[dynamic]u32, decoration_group: Id, targets: ..PairIdRefLiteralInteger) {
	start := len(out)
	append(out, u32(Op.GroupMemberDecorate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(decoration_group))
	for targets in targets do append(out, transmute(u32)targets)
}

write_OpVectorExtractDynamic :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.VectorExtractDynamic))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
	append(out, u32(index))
}

write_OpVectorInsertDynamic :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id, component: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.VectorInsertDynamic))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
	append(out, u32(component))
	append(out, u32(index))
}

write_OpVectorShuffle :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, components: ..u32) {
	start := len(out)
	append(out, u32(Op.VectorShuffle))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	for components in components do append(out, u32(components))
}

write_OpCompositeConstruct :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.CompositeConstruct))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for constituents in constituents do append(out, u32(constituents))
}

write_OpCompositeExtract :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, composite: Id, indexes: ..u32) {
	start := len(out)
	append(out, u32(Op.CompositeExtract))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(composite))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpCompositeInsert :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, object: Id, composite: Id, indexes: ..u32) {
	start := len(out)
	append(out, u32(Op.CompositeInsert))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(object))
	append(out, u32(composite))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpCopyObject :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.CopyObject))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpTranspose :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id) {
	start := len(out)
	append(out, u32(Op.Transpose))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
}

write_OpSampledImage :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, sampler: Id) {
	start := len(out)
	append(out, u32(Op.SampledImage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(sampler))
}

write_OpImageSampleImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSampleImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageSampleExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSampleExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, transmute(u32)_operand_4)
}

write_OpImageSampleDrefImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSampleDrefImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSampleDrefExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSampleDrefExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	append(out, transmute(u32)_operand_5)
}

write_OpImageSampleProjImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSampleProjImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageSampleProjExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSampleProjExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, transmute(u32)_operand_4)
}

write_OpImageSampleProjDrefImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSampleProjDrefImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSampleProjDrefExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSampleProjDrefExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	append(out, transmute(u32)_operand_5)
}

write_OpImageFetch :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageFetch))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageGather :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, component: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageGather))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(component))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageDrefGather :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageDrefGather))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageRead :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageRead))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageWrite :: proc(out: ^[dynamic]u32, image: Id, coordinate: Id, texel: Id, _operand_3: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageWrite))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(texel))
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
}

write_OpImage :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id) {
	start := len(out)
	append(out, u32(Op.Image))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
}

write_OpImageQueryFormat :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id) {
	start := len(out)
	append(out, u32(Op.ImageQueryFormat))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
}

write_OpImageQueryOrder :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id) {
	start := len(out)
	append(out, u32(Op.ImageQueryOrder))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
}

write_OpImageQuerySizeLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, level_of_detail: Id) {
	start := len(out)
	append(out, u32(Op.ImageQuerySizeLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(level_of_detail))
}

write_OpImageQuerySize :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id) {
	start := len(out)
	append(out, u32(Op.ImageQuerySize))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
}

write_OpImageQueryLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id) {
	start := len(out)
	append(out, u32(Op.ImageQueryLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
}

write_OpImageQueryLevels :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id) {
	start := len(out)
	append(out, u32(Op.ImageQueryLevels))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
}

write_OpImageQuerySamples :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id) {
	start := len(out)
	append(out, u32(Op.ImageQuerySamples))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
}

write_OpConvertFToU :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, float_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertFToU))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(float_value))
}

write_OpConvertFToS :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, float_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertFToS))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(float_value))
}

write_OpConvertSToF :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, signed_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertSToF))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(signed_value))
}

write_OpConvertUToF :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, unsigned_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToF))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(unsigned_value))
}

write_OpUConvert :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, unsigned_value: Id) {
	start := len(out)
	append(out, u32(Op.UConvert))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(unsigned_value))
}

write_OpSConvert :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, signed_value: Id) {
	start := len(out)
	append(out, u32(Op.SConvert))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(signed_value))
}

write_OpFConvert :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, float_value: Id) {
	start := len(out)
	append(out, u32(Op.FConvert))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(float_value))
}

write_OpQuantizeToF16 :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.QuantizeToF16))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpConvertPtrToU :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.ConvertPtrToU))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpSatConvertSToU :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, signed_value: Id) {
	start := len(out)
	append(out, u32(Op.SatConvertSToU))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(signed_value))
}

write_OpSatConvertUToS :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, unsigned_value: Id) {
	start := len(out)
	append(out, u32(Op.SatConvertUToS))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(unsigned_value))
}

write_OpConvertUToPtr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, integer_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToPtr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(integer_value))
}

write_OpPtrCastToGeneric :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.PtrCastToGeneric))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpGenericCastToPtr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.GenericCastToPtr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpGenericCastToPtrExplicit :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, storage: StorageClass) {
	start := len(out)
	append(out, u32(Op.GenericCastToPtrExplicit))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, transmute(u32)storage)
}

write_OpBitcast :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.Bitcast))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpSNegate :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.SNegate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpFNegate :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.FNegate))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpIAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpISub :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.ISub))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFSub :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FSub))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpIMul :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IMul))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFMul :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FMul))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUDiv :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UDiv))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSDiv :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SDiv))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFDiv :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FDiv))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUMod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UMod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSRem :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SRem))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSMod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SMod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFRem :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FRem))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFMod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FMod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpVectorTimesScalar :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id, scalar: Id) {
	start := len(out)
	append(out, u32(Op.VectorTimesScalar))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
	append(out, u32(scalar))
}

write_OpMatrixTimesScalar :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id, scalar: Id) {
	start := len(out)
	append(out, u32(Op.MatrixTimesScalar))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
	append(out, u32(scalar))
}

write_OpVectorTimesMatrix :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id, matrix_: Id) {
	start := len(out)
	append(out, u32(Op.VectorTimesMatrix))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
	append(out, u32(matrix_))
}

write_OpMatrixTimesVector :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id, vector: Id) {
	start := len(out)
	append(out, u32(Op.MatrixTimesVector))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
	append(out, u32(vector))
}

write_OpMatrixTimesMatrix :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, leftmatrix: Id, rightmatrix: Id) {
	start := len(out)
	append(out, u32(Op.MatrixTimesMatrix))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(leftmatrix))
	append(out, u32(rightmatrix))
}

write_OpOuterProduct :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id) {
	start := len(out)
	append(out, u32(Op.OuterProduct))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
}

write_OpDot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id) {
	start := len(out)
	append(out, u32(Op.Dot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
}

write_OpIAddCarry :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IAddCarry))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpISubBorrow :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.ISubBorrow))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUMulExtended :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UMulExtended))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSMulExtended :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SMulExtended))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpAny :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id) {
	start := len(out)
	append(out, u32(Op.Any))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
}

write_OpAll :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector: Id) {
	start := len(out)
	append(out, u32(Op.All))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector))
}

write_OpIsNan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id) {
	start := len(out)
	append(out, u32(Op.IsNan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
}

write_OpIsInf :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id) {
	start := len(out)
	append(out, u32(Op.IsInf))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
}

write_OpIsFinite :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id) {
	start := len(out)
	append(out, u32(Op.IsFinite))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
}

write_OpIsNormal :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id) {
	start := len(out)
	append(out, u32(Op.IsNormal))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
}

write_OpSignBitSet :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id) {
	start := len(out)
	append(out, u32(Op.SignBitSet))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
}

write_OpLessOrGreater :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id, y: Id) {
	start := len(out)
	append(out, u32(Op.LessOrGreater))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
	append(out, u32(y))
}

write_OpOrdered :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id, y: Id) {
	start := len(out)
	append(out, u32(Op.Ordered))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
	append(out, u32(y))
}

write_OpUnordered :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, x: Id, y: Id) {
	start := len(out)
	append(out, u32(Op.Unordered))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(x))
	append(out, u32(y))
}

write_OpLogicalEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.LogicalEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpLogicalNotEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.LogicalNotEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpLogicalOr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.LogicalOr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpLogicalAnd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.LogicalAnd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpLogicalNot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.LogicalNot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpSelect :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, condition: Id, object_1: Id, object_2: Id) {
	start := len(out)
	append(out, u32(Op.Select))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(condition))
	append(out, u32(object_1))
	append(out, u32(object_2))
}

write_OpIEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpINotEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.INotEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUGreaterThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UGreaterThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSGreaterThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SGreaterThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUGreaterThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UGreaterThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSGreaterThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SGreaterThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpULessThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.ULessThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSLessThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SLessThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpULessThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.ULessThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpSLessThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.SLessThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdNotEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdNotEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordNotEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordNotEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdLessThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdLessThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordLessThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordLessThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdGreaterThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdGreaterThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordGreaterThan :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordGreaterThan))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdLessThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdLessThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordLessThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordLessThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFOrdGreaterThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FOrdGreaterThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpFUnordGreaterThanEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.FUnordGreaterThanEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpShiftRightLogical :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, shift: Id) {
	start := len(out)
	append(out, u32(Op.ShiftRightLogical))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(shift))
}

write_OpShiftRightArithmetic :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, shift: Id) {
	start := len(out)
	append(out, u32(Op.ShiftRightArithmetic))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(shift))
}

write_OpShiftLeftLogical :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, shift: Id) {
	start := len(out)
	append(out, u32(Op.ShiftLeftLogical))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(shift))
}

write_OpBitwiseOr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.BitwiseOr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpBitwiseXor :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.BitwiseXor))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpBitwiseAnd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.BitwiseAnd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpNot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.Not))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpBitFieldInsert :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, insert: Id, offset: Id, count: Id) {
	start := len(out)
	append(out, u32(Op.BitFieldInsert))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(insert))
	append(out, u32(offset))
	append(out, u32(count))
}

write_OpBitFieldSExtract :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, offset: Id, count: Id) {
	start := len(out)
	append(out, u32(Op.BitFieldSExtract))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(offset))
	append(out, u32(count))
}

write_OpBitFieldUExtract :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, offset: Id, count: Id) {
	start := len(out)
	append(out, u32(Op.BitFieldUExtract))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(offset))
	append(out, u32(count))
}

write_OpBitReverse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id) {
	start := len(out)
	append(out, u32(Op.BitReverse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
}

write_OpBitCount :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id) {
	start := len(out)
	append(out, u32(Op.BitCount))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
}

write_OpDPdx :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdx))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpDPdy :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdy))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpFwidth :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.Fwidth))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpDPdxFine :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdxFine))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpDPdyFine :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdyFine))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpFwidthFine :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.FwidthFine))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpDPdxCoarse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdxCoarse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpDPdyCoarse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.DPdyCoarse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpFwidthCoarse :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, p: Id) {
	start := len(out)
	append(out, u32(Op.FwidthCoarse))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(p))
}

write_OpEmitVertex :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.EmitVertex))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpEndPrimitive :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.EndPrimitive))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpEmitStreamVertex :: proc(out: ^[dynamic]u32, stream: Id) {
	start := len(out)
	append(out, u32(Op.EmitStreamVertex))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(stream))
}

write_OpEndStreamPrimitive :: proc(out: ^[dynamic]u32, stream: Id) {
	start := len(out)
	append(out, u32(Op.EndStreamPrimitive))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(stream))
}

write_OpControlBarrier :: proc(out: ^[dynamic]u32, execution: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.ControlBarrier))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpMemoryBarrier :: proc(out: ^[dynamic]u32, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.MemoryBarrier))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpAtomicLoad :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.AtomicLoad))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpAtomicStore :: proc(out: ^[dynamic]u32, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicStore))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicExchange :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicExchange))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicCompareExchange :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, equal: Id, unequal: Id, value: Id, comparator: Id) {
	start := len(out)
	append(out, u32(Op.AtomicCompareExchange))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(equal))
	append(out, u32(unequal))
	append(out, u32(value))
	append(out, u32(comparator))
}

write_OpAtomicCompareExchangeWeak :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, equal: Id, unequal: Id, value: Id, comparator: Id) {
	start := len(out)
	append(out, u32(Op.AtomicCompareExchangeWeak))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(equal))
	append(out, u32(unequal))
	append(out, u32(value))
	append(out, u32(comparator))
}

write_OpAtomicIIncrement :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.AtomicIIncrement))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpAtomicIDecrement :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.AtomicIDecrement))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpAtomicIAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicIAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicISub :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicISub))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicSMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicSMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicUMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicUMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicSMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicSMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicUMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicUMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicAnd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicAnd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicOr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicOr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicXor :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicXor))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpPhi :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: ..PairIdRefIdRef) {
	start := len(out)
	append(out, u32(Op.Phi))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for _operand_2 in _operand_2 do append(out, transmute(u32)_operand_2)
}

write_OpLoopMerge :: proc(out: ^[dynamic]u32, merge_block: Id, continue_target: Id, _operand_2: LoopControl) {
	start := len(out)
	append(out, u32(Op.LoopMerge))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(merge_block))
	append(out, u32(continue_target))
	append(out, transmute(u32)_operand_2)
}

write_OpSelectionMerge :: proc(out: ^[dynamic]u32, merge_block: Id, _operand_1: SelectionControl) {
	start := len(out)
	append(out, u32(Op.SelectionMerge))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(merge_block))
	append(out, transmute(u32)_operand_1)
}

write_OpLabel :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.Label))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpBranch :: proc(out: ^[dynamic]u32, target_label: Id) {
	start := len(out)
	append(out, u32(Op.Branch))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target_label))
}

write_OpBranchConditional :: proc(out: ^[dynamic]u32, condition: Id, true_label: Id, false_label: Id, branch_weights: ..u32) {
	start := len(out)
	append(out, u32(Op.BranchConditional))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(condition))
	append(out, u32(true_label))
	append(out, u32(false_label))
	for branch_weights in branch_weights do append(out, u32(branch_weights))
}

write_OpSwitch :: proc(out: ^[dynamic]u32, selector: Id, default: Id, target: ..PairLiteralIntegerIdRef) {
	start := len(out)
	append(out, u32(Op.Switch))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(selector))
	append(out, u32(default))
	for target in target do append(out, transmute(u32)target)
}

write_OpKill :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.Kill))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpReturn :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.Return))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpReturnValue :: proc(out: ^[dynamic]u32, value: Id) {
	start := len(out)
	append(out, u32(Op.ReturnValue))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(value))
}

write_OpUnreachable :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.Unreachable))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpLifetimeStart :: proc(out: ^[dynamic]u32, pointer: Id, size: u32) {
	start := len(out)
	append(out, u32(Op.LifetimeStart))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(size))
}

write_OpLifetimeStop :: proc(out: ^[dynamic]u32, pointer: Id, size: u32) {
	start := len(out)
	append(out, u32(Op.LifetimeStop))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(size))
}

write_OpGroupAsyncCopy :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, destination: Id, source: Id, num_elements: Id, stride: Id, event: Id) {
	start := len(out)
	append(out, u32(Op.GroupAsyncCopy))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(destination))
	append(out, u32(source))
	append(out, u32(num_elements))
	append(out, u32(stride))
	append(out, u32(event))
}

write_OpGroupWaitEvents :: proc(out: ^[dynamic]u32, execution: Id, num_events: Id, events_list: Id) {
	start := len(out)
	append(out, u32(Op.GroupWaitEvents))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(num_events))
	append(out, u32(events_list))
}

write_OpGroupAll :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupAll))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(predicate))
}

write_OpGroupAny :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupAny))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(predicate))
}

write_OpGroupBroadcast :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, localid: Id) {
	start := len(out)
	append(out, u32(Op.GroupBroadcast))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(localid))
}

write_OpGroupIAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupIAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupUMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupUMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupSMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupSMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupUMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupUMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupSMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupSMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpReadPipe :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, pointer: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReadPipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(pointer))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpWritePipe :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, pointer: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.WritePipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(pointer))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpReservedReadPipe :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, reserve_id: Id, index: Id, pointer: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReservedReadPipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(index))
	append(out, u32(pointer))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpReservedWritePipe :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, reserve_id: Id, index: Id, pointer: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReservedWritePipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(index))
	append(out, u32(pointer))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpReserveReadPipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReserveReadPipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(num_packets))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpReserveWritePipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReserveWritePipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(num_packets))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpCommitReadPipe :: proc(out: ^[dynamic]u32, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.CommitReadPipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpCommitWritePipe :: proc(out: ^[dynamic]u32, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.CommitWritePipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpIsValidReserveId :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, reserve_id: Id) {
	start := len(out)
	append(out, u32(Op.IsValidReserveId))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(reserve_id))
}

write_OpGetNumPipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GetNumPipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpGetMaxPipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GetMaxPipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpGroupReserveReadPipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GroupReserveReadPipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(pipe))
	append(out, u32(num_packets))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpGroupReserveWritePipePackets :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, pipe: Id, num_packets: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GroupReserveWritePipePackets))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(pipe))
	append(out, u32(num_packets))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpGroupCommitReadPipe :: proc(out: ^[dynamic]u32, execution: Id, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GroupCommitReadPipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpGroupCommitWritePipe :: proc(out: ^[dynamic]u32, execution: Id, pipe: Id, reserve_id: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.GroupCommitWritePipe))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(pipe))
	append(out, u32(reserve_id))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpEnqueueMarker :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, queue: Id, num_events: Id, wait_events: Id, ret_event: Id) {
	start := len(out)
	append(out, u32(Op.EnqueueMarker))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(queue))
	append(out, u32(num_events))
	append(out, u32(wait_events))
	append(out, u32(ret_event))
}

write_OpEnqueueKernel :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, queue: Id, flags: Id, nd_range: Id, num_events: Id, wait_events: Id, ret_event: Id, invoke: Id, param: Id, param_size: Id, param_align: Id, local_size: ..Id) {
	start := len(out)
	append(out, u32(Op.EnqueueKernel))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(queue))
	append(out, u32(flags))
	append(out, u32(nd_range))
	append(out, u32(num_events))
	append(out, u32(wait_events))
	append(out, u32(ret_event))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
	for local_size in local_size do append(out, u32(local_size))
}

write_OpGetKernelNDrangeSubGroupCount :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, nd_range: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelNDrangeSubGroupCount))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(nd_range))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpGetKernelNDrangeMaxSubGroupSize :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, nd_range: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelNDrangeMaxSubGroupSize))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(nd_range))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpGetKernelWorkGroupSize :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelWorkGroupSize))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpGetKernelPreferredWorkGroupSizeMultiple :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelPreferredWorkGroupSizeMultiple))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpRetainEvent :: proc(out: ^[dynamic]u32, event: Id) {
	start := len(out)
	append(out, u32(Op.RetainEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(event))
}

write_OpReleaseEvent :: proc(out: ^[dynamic]u32, event: Id) {
	start := len(out)
	append(out, u32(Op.ReleaseEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(event))
}

write_OpCreateUserEvent :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.CreateUserEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpIsValidEvent :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, event: Id) {
	start := len(out)
	append(out, u32(Op.IsValidEvent))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(event))
}

write_OpSetUserEventStatus :: proc(out: ^[dynamic]u32, event: Id, status: Id) {
	start := len(out)
	append(out, u32(Op.SetUserEventStatus))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(event))
	append(out, u32(status))
}

write_OpCaptureEventProfilingInfo :: proc(out: ^[dynamic]u32, event: Id, profiling_info: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.CaptureEventProfilingInfo))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(event))
	append(out, u32(profiling_info))
	append(out, u32(value))
}

write_OpGetDefaultQueue :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.GetDefaultQueue))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpBuildNDRange :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, globalworksize: Id, localworksize: Id, globalworkoffset: Id) {
	start := len(out)
	append(out, u32(Op.BuildNDRange))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(globalworksize))
	append(out, u32(localworksize))
	append(out, u32(globalworkoffset))
}

write_OpImageSparseSampleImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageSparseSampleExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, transmute(u32)_operand_4)
}

write_OpImageSparseSampleDrefImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleDrefImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSparseSampleDrefExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleDrefExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	append(out, transmute(u32)_operand_5)
}

write_OpImageSparseSampleProjImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleProjImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageSparseSampleProjExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, _operand_4: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleProjExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, transmute(u32)_operand_4)
}

write_OpImageSparseSampleProjDrefImplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleProjDrefImplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSparseSampleProjDrefExplicitLod :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: ImageOperands) {
	start := len(out)
	append(out, u32(Op.ImageSparseSampleProjDrefExplicitLod))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	append(out, transmute(u32)_operand_5)
}

write_OpImageSparseFetch :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseFetch))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpImageSparseGather :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, component: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseGather))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(component))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSparseDrefGather :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, d_ref_: Id, _operand_5: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseDrefGather))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(d_ref_))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpImageSparseTexelsResident :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, resident_code: Id) {
	start := len(out)
	append(out, u32(Op.ImageSparseTexelsResident))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(resident_code))
}

write_OpNoLine :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.NoLine))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpAtomicFlagTestAndSet :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.AtomicFlagTestAndSet))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpAtomicFlagClear :: proc(out: ^[dynamic]u32, pointer: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.AtomicFlagClear))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpImageSparseRead :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, _operand_4: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSparseRead))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpSizeOf :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.SizeOf))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpTypePipeStorage :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypePipeStorage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpConstantPipeStorage :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packet_size: u32, packet_alignment: u32, capacity: u32) {
	start := len(out)
	append(out, u32(Op.ConstantPipeStorage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
	append(out, u32(capacity))
}

write_OpCreatePipeFromPipeStorage :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pipe_storage: Id) {
	start := len(out)
	append(out, u32(Op.CreatePipeFromPipeStorage))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pipe_storage))
}

write_OpGetKernelLocalSizeForSubgroupCount :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, subgroup_count: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelLocalSizeForSubgroupCount))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(subgroup_count))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpGetKernelMaxNumSubgroups :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, invoke: Id, param: Id, param_size: Id, param_align: Id) {
	start := len(out)
	append(out, u32(Op.GetKernelMaxNumSubgroups))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(invoke))
	append(out, u32(param))
	append(out, u32(param_size))
	append(out, u32(param_align))
}

write_OpTypeNamedBarrier :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeNamedBarrier))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpNamedBarrierInitialize :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, subgroup_count: Id) {
	start := len(out)
	append(out, u32(Op.NamedBarrierInitialize))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(subgroup_count))
}

write_OpMemoryNamedBarrier :: proc(out: ^[dynamic]u32, named_barrier: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.MemoryNamedBarrier))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(named_barrier))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpModuleProcessed :: proc(out: ^[dynamic]u32, process: string) {
	start := len(out)
	append(out, u32(Op.ModuleProcessed))
	defer out[start] |= u32(len(out) - start) << 16

	write_string(out, process)
}

write_OpExecutionModeId :: proc(out: ^[dynamic]u32, entry_point: Id, mode: ExecutionMode) {
	start := len(out)
	append(out, u32(Op.ExecutionModeId))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(entry_point))
	append(out, transmute(u32)mode)
}

write_OpDecorateId :: proc(out: ^[dynamic]u32, target: Id, _operand_1: Decoration) {
	start := len(out)
	append(out, u32(Op.DecorateId))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	append(out, transmute(u32)_operand_1)
}

write_OpGroupNonUniformElect :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformElect))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
}

write_OpGroupNonUniformAll :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformAll))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(predicate))
}

write_OpGroupNonUniformAny :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformAny))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(predicate))
}

write_OpGroupNonUniformAllEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformAllEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
}

write_OpGroupNonUniformBroadcast :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, invocation_id: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBroadcast))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(invocation_id))
}

write_OpGroupNonUniformBroadcastFirst :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBroadcastFirst))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
}

write_OpGroupNonUniformBallot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBallot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(predicate))
}

write_OpGroupNonUniformInverseBallot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformInverseBallot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
}

write_OpGroupNonUniformBallotBitExtract :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBallotBitExtract))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(index))
}

write_OpGroupNonUniformBallotBitCount :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBallotBitCount))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
}

write_OpGroupNonUniformBallotFindLSB :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBallotFindLSB))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
}

write_OpGroupNonUniformBallotFindMSB :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBallotFindMSB))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
}

write_OpGroupNonUniformShuffle :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, invocation_id: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformShuffle))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(invocation_id))
}

write_OpGroupNonUniformShuffleXor :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, mask: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformShuffleXor))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(mask))
}

write_OpGroupNonUniformShuffleUp :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, delta: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformShuffleUp))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(delta))
}

write_OpGroupNonUniformShuffleDown :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, delta: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformShuffleDown))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(delta))
}

write_OpGroupNonUniformIAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformIAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformFAdd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformFAdd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformIMul :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformIMul))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformFMul :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformFMul))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformSMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformSMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformUMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformUMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformFMin :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformFMin))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformSMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformSMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformUMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformUMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformFMax :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformFMax))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformBitwiseAnd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBitwiseAnd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformBitwiseOr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBitwiseOr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformBitwiseXor :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformBitwiseXor))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformLogicalAnd :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformLogicalAnd))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformLogicalOr :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformLogicalOr))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformLogicalXor :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, value: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformLogicalXor))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(value))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpGroupNonUniformQuadBroadcast :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformQuadBroadcast))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(index))
}

write_OpGroupNonUniformQuadSwap :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, direction: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformQuadSwap))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(direction))
}

write_OpCopyLogical :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.CopyLogical))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpPtrEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.PtrEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpPtrNotEqual :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.PtrNotEqual))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpPtrDiff :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.PtrDiff))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpColorAttachmentReadEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, attachment: Id, sample: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.ColorAttachmentReadEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(attachment))
	if sample, ok := sample.?; ok do append(out, u32(sample))
}

write_OpDepthAttachmentReadEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sample: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.DepthAttachmentReadEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	if sample, ok := sample.?; ok do append(out, u32(sample))
}

write_OpStencilAttachmentReadEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sample: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.StencilAttachmentReadEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	if sample, ok := sample.?; ok do append(out, u32(sample))
}

write_OpTypeTensorARM :: proc(out: ^[dynamic]u32, result: Id, element_type: Id, rank: Maybe(Id) = nil, shape: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.TypeTensorARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(element_type))
	if rank, ok := rank.?; ok do append(out, u32(rank))
	if shape, ok := shape.?; ok do append(out, u32(shape))
}

write_OpTensorReadARM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensor: Id, coordinates: Id, _operand_4: Maybe(TensorOperands) = nil) {
	start := len(out)
	append(out, u32(Op.TensorReadARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensor))
	append(out, u32(coordinates))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpTensorWriteARM :: proc(out: ^[dynamic]u32, tensor: Id, coordinates: Id, object: Id, _operand_3: Maybe(TensorOperands) = nil) {
	start := len(out)
	append(out, u32(Op.TensorWriteARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(tensor))
	append(out, u32(coordinates))
	append(out, u32(object))
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
}

write_OpTensorQuerySizeARM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensor: Id, dimension: Id) {
	start := len(out)
	append(out, u32(Op.TensorQuerySizeARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensor))
	append(out, u32(dimension))
}

write_OpGraphConstantARM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, graphconstantid: u32) {
	start := len(out)
	append(out, u32(Op.GraphConstantARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(graphconstantid))
}

write_OpGraphEntryPointARM :: proc(out: ^[dynamic]u32, graph: Id, name: string, interface: ..Id) {
	start := len(out)
	append(out, u32(Op.GraphEntryPointARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(graph))
	write_string(out, name)
	for interface in interface do append(out, u32(interface))
}

write_OpGraphARM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.GraphARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpGraphInputARM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, inputindex: Id, elementindex: ..Id) {
	start := len(out)
	append(out, u32(Op.GraphInputARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(inputindex))
	for elementindex in elementindex do append(out, u32(elementindex))
}

write_OpGraphSetOutputARM :: proc(out: ^[dynamic]u32, value: Id, outputindex: Id, elementindex: ..Id) {
	start := len(out)
	append(out, u32(Op.GraphSetOutputARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(value))
	append(out, u32(outputindex))
	for elementindex in elementindex do append(out, u32(elementindex))
}

write_OpGraphEndARM :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.GraphEndARM))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpTypeGraphARM :: proc(out: ^[dynamic]u32, result: Id, numinputs: u32, inouttypes: ..Id) {
	start := len(out)
	append(out, u32(Op.TypeGraphARM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(numinputs))
	for inouttypes in inouttypes do append(out, u32(inouttypes))
}

write_OpTerminateInvocation :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.TerminateInvocation))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpTypeUntypedPointerKHR :: proc(out: ^[dynamic]u32, result: Id, _operand_1: StorageClass) {
	start := len(out)
	append(out, u32(Op.TypeUntypedPointerKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, transmute(u32)_operand_1)
}

write_OpUntypedVariableKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: StorageClass, data_type: Maybe(Id) = nil, initializer: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.UntypedVariableKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, transmute(u32)_operand_2)
	if data_type, ok := data_type.?; ok do append(out, u32(data_type))
	if initializer, ok := initializer.?; ok do append(out, u32(initializer))
}

write_OpUntypedAccessChainKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base_type: Id, base: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.UntypedAccessChainKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base_type))
	append(out, u32(base))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpUntypedInBoundsAccessChainKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base_type: Id, base: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.UntypedInBoundsAccessChainKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base_type))
	append(out, u32(base))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpSubgroupBallotKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupBallotKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpSubgroupFirstInvocationKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupFirstInvocationKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpUntypedPtrAccessChainKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base_type: Id, base: Id, element: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.UntypedPtrAccessChainKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base_type))
	append(out, u32(base))
	append(out, u32(element))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpUntypedInBoundsPtrAccessChainKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base_type: Id, base: Id, element: Id, indexes: ..Id) {
	start := len(out)
	append(out, u32(Op.UntypedInBoundsPtrAccessChainKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base_type))
	append(out, u32(base))
	append(out, u32(element))
	for indexes in indexes do append(out, u32(indexes))
}

write_OpUntypedArrayLengthKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, structure: Id, pointer: Id, array_member: u32) {
	start := len(out)
	append(out, u32(Op.UntypedArrayLengthKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(structure))
	append(out, u32(pointer))
	append(out, u32(array_member))
}

write_OpUntypedPrefetchKHR :: proc(out: ^[dynamic]u32, pointer_type: Id, num_bytes: Id, rw: Maybe(Id) = nil, locality: Maybe(Id) = nil, cache_type: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.UntypedPrefetchKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer_type))
	append(out, u32(num_bytes))
	if rw, ok := rw.?; ok do append(out, u32(rw))
	if locality, ok := locality.?; ok do append(out, u32(locality))
	if cache_type, ok := cache_type.?; ok do append(out, u32(cache_type))
}

write_OpSubgroupAllKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAllKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpSubgroupAnyKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAnyKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpSubgroupAllEqualKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAllEqualKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpGroupNonUniformRotateKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, value: Id, delta: Id, clustersize: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformRotateKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(value))
	append(out, u32(delta))
	if clustersize, ok := clustersize.?; ok do append(out, u32(clustersize))
}

write_OpSubgroupReadInvocationKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupReadInvocationKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
	append(out, u32(index))
}

write_OpExtInstWithForwardRefsKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, set: Id, instruction: u32, _operand_4: ..Id) {
	start := len(out)
	append(out, u32(Op.ExtInstWithForwardRefsKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(set))
	append(out, u32(instruction))
	for _operand_4 in _operand_4 do append(out, u32(_operand_4))
}

write_OpUntypedGroupAsyncCopyKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, destination: Id, source: Id, element_num_bytes: Id, num_elements: Id, stride: Id, event: Id, destination_memory_operands: Maybe(MemoryAccess) = nil, source_memory_operands: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.UntypedGroupAsyncCopyKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, u32(destination))
	append(out, u32(source))
	append(out, u32(element_num_bytes))
	append(out, u32(num_elements))
	append(out, u32(stride))
	append(out, u32(event))
	if destination_memory_operands, ok := destination_memory_operands.?; ok do append(out, transmute(u32)destination_memory_operands)
	if source_memory_operands, ok := source_memory_operands.?; ok do append(out, transmute(u32)source_memory_operands)
}

write_OpTraceRayKHR :: proc(out: ^[dynamic]u32, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.TraceRayKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(accel))
	append(out, u32(ray_flags))
	append(out, u32(cull_mask))
	append(out, u32(sbt_offset))
	append(out, u32(sbt_stride))
	append(out, u32(miss_index))
	append(out, u32(ray_origin))
	append(out, u32(ray_tmin))
	append(out, u32(ray_direction))
	append(out, u32(ray_tmax))
	append(out, u32(payload))
}

write_OpExecuteCallableKHR :: proc(out: ^[dynamic]u32, sbt_index: Id, callable_data: Id) {
	start := len(out)
	append(out, u32(Op.ExecuteCallableKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(sbt_index))
	append(out, u32(callable_data))
}

write_OpConvertUToAccelerationStructureKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, accel: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToAccelerationStructureKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(accel))
}

write_OpIgnoreIntersectionKHR :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.IgnoreIntersectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpTerminateRayKHR :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.TerminateRayKHR))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpSDot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.SDot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpUDot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.UDot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpSUDot :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.SUDot))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpSDotAccSat :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.SDotAccSat))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	append(out, u32(accumulator))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpUDotAccSat :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.UDotAccSat))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	append(out, u32(accumulator))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpSUDotAccSat :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, vector_1: Id, vector_2: Id, accumulator: Id, packed_vector_format: Maybe(PackedVectorFormat) = nil) {
	start := len(out)
	append(out, u32(Op.SUDotAccSat))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(vector_1))
	append(out, u32(vector_2))
	append(out, u32(accumulator))
	if packed_vector_format, ok := packed_vector_format.?; ok do append(out, transmute(u32)packed_vector_format)
}

write_OpTypeCooperativeMatrixKHR :: proc(out: ^[dynamic]u32, result: Id, component_type: Id, scope: Id, rows: Id, columns: Id, use: Id) {
	start := len(out)
	append(out, u32(Op.TypeCooperativeMatrixKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(component_type))
	append(out, u32(scope))
	append(out, u32(rows))
	append(out, u32(columns))
	append(out, u32(use))
}

write_OpCooperativeMatrixLoadKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memorylayout: Id, stride: Maybe(Id) = nil, memory_operand: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixLoadKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memorylayout))
	if stride, ok := stride.?; ok do append(out, u32(stride))
	if memory_operand, ok := memory_operand.?; ok do append(out, transmute(u32)memory_operand)
}

write_OpCooperativeMatrixStoreKHR :: proc(out: ^[dynamic]u32, pointer: Id, object: Id, memorylayout: Id, stride: Maybe(Id) = nil, memory_operand: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixStoreKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(object))
	append(out, u32(memorylayout))
	if stride, ok := stride.?; ok do append(out, u32(stride))
	if memory_operand, ok := memory_operand.?; ok do append(out, transmute(u32)memory_operand)
}

write_OpCooperativeMatrixMulAddKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, b: Id, c: Id, cooperative_matrix_operands: Maybe(CooperativeMatrixOperands) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixMulAddKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(b))
	append(out, u32(c))
	if cooperative_matrix_operands, ok := cooperative_matrix_operands.?; ok do append(out, transmute(u32)cooperative_matrix_operands)
}

write_OpCooperativeMatrixLengthKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, type: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixLengthKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(type))
}

write_OpConstantCompositeReplicateEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.ConstantCompositeReplicateEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpSpecConstantCompositeReplicateEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.SpecConstantCompositeReplicateEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpCompositeConstructReplicateEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.CompositeConstructReplicateEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpTypeRayQueryKHR :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeRayQueryKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpRayQueryInitializeKHR :: proc(out: ^[dynamic]u32, rayquery: Id, accel: Id, rayflags: Id, cullmask: Id, rayorigin: Id, raytmin: Id, raydirection: Id, raytmax: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryInitializeKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(rayquery))
	append(out, u32(accel))
	append(out, u32(rayflags))
	append(out, u32(cullmask))
	append(out, u32(rayorigin))
	append(out, u32(raytmin))
	append(out, u32(raydirection))
	append(out, u32(raytmax))
}

write_OpRayQueryTerminateKHR :: proc(out: ^[dynamic]u32, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryTerminateKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(rayquery))
}

write_OpRayQueryGenerateIntersectionKHR :: proc(out: ^[dynamic]u32, rayquery: Id, hitt: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGenerateIntersectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(rayquery))
	append(out, u32(hitt))
}

write_OpRayQueryConfirmIntersectionKHR :: proc(out: ^[dynamic]u32, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryConfirmIntersectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(rayquery))
}

write_OpRayQueryProceedKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryProceedKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetIntersectionTypeKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionTypeKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpImageSampleWeightedQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, texture: Id, coordinates: Id, weights: Id) {
	start := len(out)
	append(out, u32(Op.ImageSampleWeightedQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(texture))
	append(out, u32(coordinates))
	append(out, u32(weights))
}

write_OpImageBoxFilterQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, texture: Id, coordinates: Id, box_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBoxFilterQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(texture))
	append(out, u32(coordinates))
	append(out, u32(box_size))
}

write_OpImageBlockMatchSSDQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target: Id, target_coordinates: Id, reference: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchSSDQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target))
	append(out, u32(target_coordinates))
	append(out, u32(reference))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpImageBlockMatchSADQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target: Id, target_coordinates: Id, reference: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchSADQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target))
	append(out, u32(target_coordinates))
	append(out, u32(reference))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpBitCastArrayQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, source_array: Id) {
	start := len(out)
	append(out, u32(Op.BitCastArrayQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(source_array))
}

write_OpImageBlockMatchWindowSSDQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchWindowSSDQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target_sampled_image))
	append(out, u32(target_coordinates))
	append(out, u32(reference_sampled_image))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpImageBlockMatchWindowSADQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchWindowSADQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target_sampled_image))
	append(out, u32(target_coordinates))
	append(out, u32(reference_sampled_image))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpImageBlockMatchGatherSSDQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchGatherSSDQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target_sampled_image))
	append(out, u32(target_coordinates))
	append(out, u32(reference_sampled_image))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpImageBlockMatchGatherSADQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target_sampled_image: Id, target_coordinates: Id, reference_sampled_image: Id, reference_coordinates: Id, block_size: Id) {
	start := len(out)
	append(out, u32(Op.ImageBlockMatchGatherSADQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target_sampled_image))
	append(out, u32(target_coordinates))
	append(out, u32(reference_sampled_image))
	append(out, u32(reference_coordinates))
	append(out, u32(block_size))
}

write_OpCompositeConstructCoopMatQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, source_array: Id) {
	start := len(out)
	append(out, u32(Op.CompositeConstructCoopMatQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(source_array))
}

write_OpCompositeExtractCoopMatQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, source_cooperative_matrix: Id) {
	start := len(out)
	append(out, u32(Op.CompositeExtractCoopMatQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(source_cooperative_matrix))
}

write_OpExtractSubArrayQCOM :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, source_array: Id, index: Id) {
	start := len(out)
	append(out, u32(Op.ExtractSubArrayQCOM))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(source_array))
	append(out, u32(index))
}

write_OpGroupIAddNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupIAddNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFAddNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFAddNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFMinNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFMinNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupUMinNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupUMinNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupSMinNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupSMinNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFMaxNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFMaxNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupUMaxNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupUMaxNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupSMaxNonUniformAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupSMaxNonUniformAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpFragmentMaskFetchAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id) {
	start := len(out)
	append(out, u32(Op.FragmentMaskFetchAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
}

write_OpFragmentFetchAMD :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, fragment_index: Id) {
	start := len(out)
	append(out, u32(Op.FragmentFetchAMD))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(fragment_index))
}

write_OpReadClockKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, scope: Id) {
	start := len(out)
	append(out, u32(Op.ReadClockKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(scope))
}

write_OpAllocateNodePayloadsAMDX :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, visibility: Id, payload_count: Id, node_index: Id) {
	start := len(out)
	append(out, u32(Op.AllocateNodePayloadsAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(visibility))
	append(out, u32(payload_count))
	append(out, u32(node_index))
}

write_OpEnqueueNodePayloadsAMDX :: proc(out: ^[dynamic]u32, payload_array: Id) {
	start := len(out)
	append(out, u32(Op.EnqueueNodePayloadsAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(payload_array))
}

write_OpTypeNodePayloadArrayAMDX :: proc(out: ^[dynamic]u32, result: Id, payload_type: Id) {
	start := len(out)
	append(out, u32(Op.TypeNodePayloadArrayAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(payload_type))
}

write_OpFinishWritingNodePayloadAMDX :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.FinishWritingNodePayloadAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpNodePayloadArrayLengthAMDX :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload_array: Id) {
	start := len(out)
	append(out, u32(Op.NodePayloadArrayLengthAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload_array))
}

write_OpIsNodePayloadValidAMDX :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload_type: Id, node_index: Id) {
	start := len(out)
	append(out, u32(Op.IsNodePayloadValidAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload_type))
	append(out, u32(node_index))
}

write_OpConstantStringAMDX :: proc(out: ^[dynamic]u32, result: Id, literal_string: string) {
	start := len(out)
	append(out, u32(Op.ConstantStringAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, literal_string)
}

write_OpSpecConstantStringAMDX :: proc(out: ^[dynamic]u32, result: Id, literal_string: string) {
	start := len(out)
	append(out, u32(Op.SpecConstantStringAMDX))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, literal_string)
}

write_OpGroupNonUniformQuadAllKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformQuadAllKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpGroupNonUniformQuadAnyKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, predicate: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformQuadAnyKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(predicate))
}

write_OpHitObjectRecordHitMotionNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_offset: Id, sbt_record_stride: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id, hitobject_attributes: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordHitMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(instanceid))
	append(out, u32(primitiveid))
	append(out, u32(geometryindex))
	append(out, u32(hit_kind))
	append(out, u32(sbt_record_offset))
	append(out, u32(sbt_record_stride))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(current_time))
	append(out, u32(hitobject_attributes))
}

write_OpHitObjectRecordHitWithIndexMotionNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id, hitobject_attributes: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordHitWithIndexMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(instanceid))
	append(out, u32(primitiveid))
	append(out, u32(geometryindex))
	append(out, u32(hit_kind))
	append(out, u32(sbt_record_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(current_time))
	append(out, u32(hitobject_attributes))
}

write_OpHitObjectRecordMissMotionNV :: proc(out: ^[dynamic]u32, hit_object: Id, sbt_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, current_time: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordMissMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(sbt_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(current_time))
}

write_OpHitObjectGetWorldToObjectNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetWorldToObjectNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetObjectToWorldNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetObjectToWorldNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetObjectRayDirectionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetObjectRayDirectionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetObjectRayOriginNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetObjectRayOriginNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectTraceRayMotionNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, rayflags: Id, cullmask: Id, sbt_record_offset: Id, sbt_record_stride: Id, miss_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, time: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectTraceRayMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(rayflags))
	append(out, u32(cullmask))
	append(out, u32(sbt_record_offset))
	append(out, u32(sbt_record_stride))
	append(out, u32(miss_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(time))
	append(out, u32(payload))
}

write_OpHitObjectGetShaderRecordBufferHandleNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetShaderRecordBufferHandleNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetShaderBindingTableRecordIndexNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetShaderBindingTableRecordIndexNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectRecordEmptyNV :: proc(out: ^[dynamic]u32, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordEmptyNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
}

write_OpHitObjectTraceRayNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, rayflags: Id, cullmask: Id, sbt_record_offset: Id, sbt_record_stride: Id, miss_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectTraceRayNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(rayflags))
	append(out, u32(cullmask))
	append(out, u32(sbt_record_offset))
	append(out, u32(sbt_record_stride))
	append(out, u32(miss_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(payload))
}

write_OpHitObjectRecordHitNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_offset: Id, sbt_record_stride: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, hitobject_attributes: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(instanceid))
	append(out, u32(primitiveid))
	append(out, u32(geometryindex))
	append(out, u32(hit_kind))
	append(out, u32(sbt_record_offset))
	append(out, u32(sbt_record_stride))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(hitobject_attributes))
}

write_OpHitObjectRecordHitWithIndexNV :: proc(out: ^[dynamic]u32, hit_object: Id, acceleration_structure: Id, instanceid: Id, primitiveid: Id, geometryindex: Id, hit_kind: Id, sbt_record_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id, hitobject_attributes: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordHitWithIndexNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(acceleration_structure))
	append(out, u32(instanceid))
	append(out, u32(primitiveid))
	append(out, u32(geometryindex))
	append(out, u32(hit_kind))
	append(out, u32(sbt_record_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
	append(out, u32(hitobject_attributes))
}

write_OpHitObjectRecordMissNV :: proc(out: ^[dynamic]u32, hit_object: Id, sbt_index: Id, origin: Id, tmin: Id, direction: Id, tmax: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectRecordMissNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(sbt_index))
	append(out, u32(origin))
	append(out, u32(tmin))
	append(out, u32(direction))
	append(out, u32(tmax))
}

write_OpHitObjectExecuteShaderNV :: proc(out: ^[dynamic]u32, hit_object: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectExecuteShaderNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(payload))
}

write_OpHitObjectGetCurrentTimeNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetCurrentTimeNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetAttributesNV :: proc(out: ^[dynamic]u32, hit_object: Id, hit_object_attribute: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetAttributesNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	append(out, u32(hit_object_attribute))
}

write_OpHitObjectGetHitKindNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetHitKindNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetPrimitiveIndexNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetPrimitiveIndexNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetGeometryIndexNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetGeometryIndexNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetInstanceIdNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetInstanceIdNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetInstanceCustomIndexNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetInstanceCustomIndexNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetWorldRayDirectionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetWorldRayDirectionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetWorldRayOriginNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetWorldRayOriginNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetRayTMaxNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetRayTMaxNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetRayTMinNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetRayTMinNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectIsEmptyNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectIsEmptyNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectIsHitNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectIsHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectIsMissNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectIsMissNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpReorderThreadWithHitObjectNV :: proc(out: ^[dynamic]u32, hit_object: Id, hint: Maybe(Id) = nil, bits: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.ReorderThreadWithHitObjectNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hit_object))
	if hint, ok := hint.?; ok do append(out, u32(hint))
	if bits, ok := bits.?; ok do append(out, u32(bits))
}

write_OpReorderThreadWithHintNV :: proc(out: ^[dynamic]u32, hint: Id, bits: Id) {
	start := len(out)
	append(out, u32(Op.ReorderThreadWithHintNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(hint))
	append(out, u32(bits))
}

write_OpTypeHitObjectNV :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeHitObjectNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpImageSampleFootprintNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sampled_image: Id, coordinate: Id, granularity: Id, coarse: Id, _operand_6: Maybe(ImageOperands) = nil) {
	start := len(out)
	append(out, u32(Op.ImageSampleFootprintNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sampled_image))
	append(out, u32(coordinate))
	append(out, u32(granularity))
	append(out, u32(coarse))
	if _operand_6, ok := _operand_6.?; ok do append(out, transmute(u32)_operand_6)
}

write_OpTypeCooperativeVectorNV :: proc(out: ^[dynamic]u32, result: Id, component_type: Id, component_count: Id) {
	start := len(out)
	append(out, u32(Op.TypeCooperativeVectorNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(component_type))
	append(out, u32(component_count))
}

write_OpCooperativeVectorMatrixMulNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, inputinterpretation: Id, matrix_: Id, matrixoffset: Id, matrixinterpretation: Id, m: Id, k: Id, memorylayout: Id, transpose: Id, matrixstride: Maybe(Id) = nil, _operand_12: Maybe(CooperativeMatrixOperands) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorMatrixMulNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(inputinterpretation))
	append(out, u32(matrix_))
	append(out, u32(matrixoffset))
	append(out, u32(matrixinterpretation))
	append(out, u32(m))
	append(out, u32(k))
	append(out, u32(memorylayout))
	append(out, u32(transpose))
	if matrixstride, ok := matrixstride.?; ok do append(out, u32(matrixstride))
	if _operand_12, ok := _operand_12.?; ok do append(out, transmute(u32)_operand_12)
}

write_OpCooperativeVectorOuterProductAccumulateNV :: proc(out: ^[dynamic]u32, pointer: Id, offset: Id, a: Id, b: Id, memorylayout: Id, matrixinterpretation: Id, matrixstride: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorOuterProductAccumulateNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(offset))
	append(out, u32(a))
	append(out, u32(b))
	append(out, u32(memorylayout))
	append(out, u32(matrixinterpretation))
	if matrixstride, ok := matrixstride.?; ok do append(out, u32(matrixstride))
}

write_OpCooperativeVectorReduceSumAccumulateNV :: proc(out: ^[dynamic]u32, pointer: Id, offset: Id, v: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorReduceSumAccumulateNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(offset))
	append(out, u32(v))
}

write_OpCooperativeVectorMatrixMulAddNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, inputinterpretation: Id, matrix_: Id, matrixoffset: Id, matrixinterpretation: Id, bias: Id, biasoffset: Id, biasinterpretation: Id, m: Id, k: Id, memorylayout: Id, transpose: Id, matrixstride: Maybe(Id) = nil, _operand_15: Maybe(CooperativeMatrixOperands) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorMatrixMulAddNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(inputinterpretation))
	append(out, u32(matrix_))
	append(out, u32(matrixoffset))
	append(out, u32(matrixinterpretation))
	append(out, u32(bias))
	append(out, u32(biasoffset))
	append(out, u32(biasinterpretation))
	append(out, u32(m))
	append(out, u32(k))
	append(out, u32(memorylayout))
	append(out, u32(transpose))
	if matrixstride, ok := matrixstride.?; ok do append(out, u32(matrixstride))
	if _operand_15, ok := _operand_15.?; ok do append(out, transmute(u32)_operand_15)
}

write_OpCooperativeMatrixConvertNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixConvertNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
}

write_OpEmitMeshTasksEXT :: proc(out: ^[dynamic]u32, group_count_x: Id, group_count_y: Id, group_count_z: Id, payload: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.EmitMeshTasksEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(group_count_x))
	append(out, u32(group_count_y))
	append(out, u32(group_count_z))
	if payload, ok := payload.?; ok do append(out, u32(payload))
}

write_OpSetMeshOutputsEXT :: proc(out: ^[dynamic]u32, vertex_count: Id, primitive_count: Id) {
	start := len(out)
	append(out, u32(Op.SetMeshOutputsEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(vertex_count))
	append(out, u32(primitive_count))
}

write_OpGroupNonUniformPartitionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.GroupNonUniformPartitionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
}

write_OpWritePackedPrimitiveIndices4x8NV :: proc(out: ^[dynamic]u32, index_offset: Id, packed_indices: Id) {
	start := len(out)
	append(out, u32(Op.WritePackedPrimitiveIndices4x8NV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(index_offset))
	append(out, u32(packed_indices))
}

write_OpFetchMicroTriangleVertexPositionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, accel: Id, instance_id: Id, geometry_index: Id, primitive_index: Id, barycentric: Id) {
	start := len(out)
	append(out, u32(Op.FetchMicroTriangleVertexPositionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(accel))
	append(out, u32(instance_id))
	append(out, u32(geometry_index))
	append(out, u32(primitive_index))
	append(out, u32(barycentric))
}

write_OpFetchMicroTriangleVertexBarycentricNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, accel: Id, instance_id: Id, geometry_index: Id, primitive_index: Id, barycentric: Id) {
	start := len(out)
	append(out, u32(Op.FetchMicroTriangleVertexBarycentricNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(accel))
	append(out, u32(instance_id))
	append(out, u32(geometry_index))
	append(out, u32(primitive_index))
	append(out, u32(barycentric))
}

write_OpCooperativeVectorLoadNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, offset: Id, _operand_4: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorLoadNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(offset))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpCooperativeVectorStoreNV :: proc(out: ^[dynamic]u32, pointer: Id, offset: Id, object: Id, _operand_3: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeVectorStoreNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(offset))
	append(out, u32(object))
	if _operand_3, ok := _operand_3.?; ok do append(out, transmute(u32)_operand_3)
}

write_OpReportIntersectionKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit: Id, hitkind: Id) {
	start := len(out)
	append(out, u32(Op.ReportIntersectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit))
	append(out, u32(hitkind))
}

write_OpIgnoreIntersectionNV :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.IgnoreIntersectionNV))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpTerminateRayNV :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.TerminateRayNV))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpTraceNV :: proc(out: ^[dynamic]u32, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, payloadid: Id) {
	start := len(out)
	append(out, u32(Op.TraceNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(accel))
	append(out, u32(ray_flags))
	append(out, u32(cull_mask))
	append(out, u32(sbt_offset))
	append(out, u32(sbt_stride))
	append(out, u32(miss_index))
	append(out, u32(ray_origin))
	append(out, u32(ray_tmin))
	append(out, u32(ray_direction))
	append(out, u32(ray_tmax))
	append(out, u32(payloadid))
}

write_OpTraceMotionNV :: proc(out: ^[dynamic]u32, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, time: Id, payloadid: Id) {
	start := len(out)
	append(out, u32(Op.TraceMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(accel))
	append(out, u32(ray_flags))
	append(out, u32(cull_mask))
	append(out, u32(sbt_offset))
	append(out, u32(sbt_stride))
	append(out, u32(miss_index))
	append(out, u32(ray_origin))
	append(out, u32(ray_tmin))
	append(out, u32(ray_direction))
	append(out, u32(ray_tmax))
	append(out, u32(time))
	append(out, u32(payloadid))
}

write_OpTraceRayMotionNV :: proc(out: ^[dynamic]u32, accel: Id, ray_flags: Id, cull_mask: Id, sbt_offset: Id, sbt_stride: Id, miss_index: Id, ray_origin: Id, ray_tmin: Id, ray_direction: Id, ray_tmax: Id, time: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.TraceRayMotionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(accel))
	append(out, u32(ray_flags))
	append(out, u32(cull_mask))
	append(out, u32(sbt_offset))
	append(out, u32(sbt_stride))
	append(out, u32(miss_index))
	append(out, u32(ray_origin))
	append(out, u32(ray_tmin))
	append(out, u32(ray_direction))
	append(out, u32(ray_tmax))
	append(out, u32(time))
	append(out, u32(payload))
}

write_OpRayQueryGetIntersectionTriangleVertexPositionsKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionTriangleVertexPositionsKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpTypeAccelerationStructureKHR :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAccelerationStructureKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpExecuteCallableNV :: proc(out: ^[dynamic]u32, sbt_index: Id, callable_dataid: Id) {
	start := len(out)
	append(out, u32(Op.ExecuteCallableNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(sbt_index))
	append(out, u32(callable_dataid))
}

write_OpRayQueryGetIntersectionClusterIdNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionClusterIdNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpHitObjectGetClusterIdNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetClusterIdNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpTypeCooperativeMatrixNV :: proc(out: ^[dynamic]u32, result: Id, component_type: Id, execution: Id, rows: Id, columns: Id) {
	start := len(out)
	append(out, u32(Op.TypeCooperativeMatrixNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(component_type))
	append(out, u32(execution))
	append(out, u32(rows))
	append(out, u32(columns))
}

write_OpCooperativeMatrixLoadNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, stride: Id, column_major: Id, _operand_5: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixLoadNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(stride))
	append(out, u32(column_major))
	if _operand_5, ok := _operand_5.?; ok do append(out, transmute(u32)_operand_5)
}

write_OpCooperativeMatrixStoreNV :: proc(out: ^[dynamic]u32, pointer: Id, object: Id, stride: Id, column_major: Id, _operand_4: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixStoreNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(object))
	append(out, u32(stride))
	append(out, u32(column_major))
	if _operand_4, ok := _operand_4.?; ok do append(out, transmute(u32)_operand_4)
}

write_OpCooperativeMatrixMulAddNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, b: Id, c: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixMulAddNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(b))
	append(out, u32(c))
}

write_OpCooperativeMatrixLengthNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, type: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixLengthNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(type))
}

write_OpBeginInvocationInterlockEXT :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.BeginInvocationInterlockEXT))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpEndInvocationInterlockEXT :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.EndInvocationInterlockEXT))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpCooperativeMatrixReduceNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id, reduce: CooperativeMatrixReduce, combinefunc: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixReduceNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
	append(out, transmute(u32)reduce)
	append(out, u32(combinefunc))
}

write_OpCooperativeMatrixLoadTensorNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, object: Id, tensorlayout: Id, memory_operand: MemoryAccess, tensor_addressing_operands: TensorAddressingOperands) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixLoadTensorNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(object))
	append(out, u32(tensorlayout))
	append(out, transmute(u32)memory_operand)
	append(out, transmute(u32)tensor_addressing_operands)
}

write_OpCooperativeMatrixStoreTensorNV :: proc(out: ^[dynamic]u32, pointer: Id, object: Id, tensorlayout: Id, memory_operand: MemoryAccess, tensor_addressing_operands: TensorAddressingOperands) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixStoreTensorNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(pointer))
	append(out, u32(object))
	append(out, u32(tensorlayout))
	append(out, transmute(u32)memory_operand)
	append(out, transmute(u32)tensor_addressing_operands)
}

write_OpCooperativeMatrixPerElementOpNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id, func: Id, operands: ..Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixPerElementOpNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
	append(out, u32(func))
	for operands in operands do append(out, u32(operands))
}

write_OpTypeTensorLayoutNV :: proc(out: ^[dynamic]u32, result: Id, dim: Id, clampmode: Id) {
	start := len(out)
	append(out, u32(Op.TypeTensorLayoutNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(dim))
	append(out, u32(clampmode))
}

write_OpTypeTensorViewNV :: proc(out: ^[dynamic]u32, result: Id, dim: Id, hasdimensions: Id, p: ..Id) {
	start := len(out)
	append(out, u32(Op.TypeTensorViewNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(dim))
	append(out, u32(hasdimensions))
	for p in p do append(out, u32(p))
}

write_OpCreateTensorLayoutNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.CreateTensorLayoutNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpTensorLayoutSetDimensionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorlayout: Id, dim: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorLayoutSetDimensionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorlayout))
	for dim in dim do append(out, u32(dim))
}

write_OpTensorLayoutSetStrideNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorlayout: Id, stride: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorLayoutSetStrideNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorlayout))
	for stride in stride do append(out, u32(stride))
}

write_OpTensorLayoutSliceNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorlayout: Id, operands: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorLayoutSliceNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorlayout))
	for operands in operands do append(out, u32(operands))
}

write_OpTensorLayoutSetClampValueNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorlayout: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.TensorLayoutSetClampValueNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorlayout))
	append(out, u32(value))
}

write_OpCreateTensorViewNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.CreateTensorViewNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpTensorViewSetDimensionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorview: Id, dim: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorViewSetDimensionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorview))
	for dim in dim do append(out, u32(dim))
}

write_OpTensorViewSetStrideNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorview: Id, stride: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorViewSetStrideNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorview))
	for stride in stride do append(out, u32(stride))
}

write_OpDemoteToHelperInvocation :: proc(out: ^[dynamic]u32) {
	start := len(out)
	append(out, u32(Op.DemoteToHelperInvocation))
	defer out[start] |= u32(len(out) - start) << 16

}

write_OpIsHelperInvocationEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.IsHelperInvocationEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpTensorViewSetClipNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorview: Id, cliprowoffset: Id, cliprowspan: Id, clipcoloffset: Id, clipcolspan: Id) {
	start := len(out)
	append(out, u32(Op.TensorViewSetClipNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorview))
	append(out, u32(cliprowoffset))
	append(out, u32(cliprowspan))
	append(out, u32(clipcoloffset))
	append(out, u32(clipcolspan))
}

write_OpTensorLayoutSetBlockSizeNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, tensorlayout: Id, blocksize: ..Id) {
	start := len(out)
	append(out, u32(Op.TensorLayoutSetBlockSizeNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(tensorlayout))
	for blocksize in blocksize do append(out, u32(blocksize))
}

write_OpCooperativeMatrixTransposeNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, matrix_: Id) {
	start := len(out)
	append(out, u32(Op.CooperativeMatrixTransposeNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(matrix_))
}

write_OpConvertUToImageNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToImageNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertUToSamplerNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToSamplerNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertImageToUNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertImageToUNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertSamplerToUNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertSamplerToUNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertUToSampledImageNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertUToSampledImageNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertSampledImageToUNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertSampledImageToUNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpSamplerImageAddressingModeNV :: proc(out: ^[dynamic]u32, bit_width: u32) {
	start := len(out)
	append(out, u32(Op.SamplerImageAddressingModeNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(bit_width))
}

write_OpRawAccessChainNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, base: Id, byte_stride: Id, element_index: Id, byte_offset: Id, _operand_6: Maybe(RawAccessChainOperands) = nil) {
	start := len(out)
	append(out, u32(Op.RawAccessChainNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(base))
	append(out, u32(byte_stride))
	append(out, u32(element_index))
	append(out, u32(byte_offset))
	if _operand_6, ok := _operand_6.?; ok do append(out, transmute(u32)_operand_6)
}

write_OpRayQueryGetIntersectionSpherePositionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionSpherePositionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionSphereRadiusNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionSphereRadiusNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionLSSPositionsNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionLSSPositionsNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionLSSRadiiNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionLSSRadiiNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionLSSHitValueNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionLSSHitValueNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpHitObjectGetSpherePositionNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetSpherePositionNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetSphereRadiusNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetSphereRadiusNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetLSSPositionsNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetLSSPositionsNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectGetLSSRadiiNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectGetLSSRadiiNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectIsSphereHitNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectIsSphereHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpHitObjectIsLSSHitNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, hit_object: Id) {
	start := len(out)
	append(out, u32(Op.HitObjectIsLSSHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(hit_object))
}

write_OpRayQueryIsSphereHitNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryIsSphereHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryIsLSSHitNV :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryIsLSSHitNV))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpSubgroupShuffleINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, data: Id, invocationid: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupShuffleINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(data))
	append(out, u32(invocationid))
}

write_OpSubgroupShuffleDownINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, current: Id, next: Id, delta: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupShuffleDownINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(current))
	append(out, u32(next))
	append(out, u32(delta))
}

write_OpSubgroupShuffleUpINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, previous: Id, current: Id, delta: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupShuffleUpINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(previous))
	append(out, u32(current))
	append(out, u32(delta))
}

write_OpSubgroupShuffleXorINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, data: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupShuffleXorINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(data))
	append(out, u32(value))
}

write_OpSubgroupBlockReadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, ptr: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupBlockReadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(ptr))
}

write_OpSubgroupBlockWriteINTEL :: proc(out: ^[dynamic]u32, ptr: Id, data: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupBlockWriteINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(ptr))
	append(out, u32(data))
}

write_OpSubgroupImageBlockReadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupImageBlockReadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
}

write_OpSubgroupImageBlockWriteINTEL :: proc(out: ^[dynamic]u32, image: Id, coordinate: Id, data: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupImageBlockWriteINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(data))
}

write_OpSubgroupImageMediaBlockReadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image: Id, coordinate: Id, width: Id, height: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupImageMediaBlockReadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(width))
	append(out, u32(height))
}

write_OpSubgroupImageMediaBlockWriteINTEL :: proc(out: ^[dynamic]u32, image: Id, coordinate: Id, width: Id, height: Id, data: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupImageMediaBlockWriteINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(image))
	append(out, u32(coordinate))
	append(out, u32(width))
	append(out, u32(height))
	append(out, u32(data))
}

write_OpUCountLeadingZerosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.UCountLeadingZerosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpUCountTrailingZerosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.UCountTrailingZerosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpAbsISubINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.AbsISubINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpAbsUSubINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.AbsUSubINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpIAddSatINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IAddSatINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUAddSatINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UAddSatINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpIAverageINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IAverageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUAverageINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UAverageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpIAverageRoundedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IAverageRoundedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUAverageRoundedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UAverageRoundedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpISubSatINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.ISubSatINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUSubSatINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.USubSatINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpIMul32x16INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.IMul32x16INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpUMul32x16INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: Id, operand_2: Id) {
	start := len(out)
	append(out, u32(Op.UMul32x16INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand_1))
	append(out, u32(operand_2))
}

write_OpConstantFunctionPointerINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, function: Id) {
	start := len(out)
	append(out, u32(Op.ConstantFunctionPointerINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(function))
}

write_OpFunctionPointerCallINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand_1: ..Id) {
	start := len(out)
	append(out, u32(Op.FunctionPointerCallINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for operand_1 in operand_1 do append(out, u32(operand_1))
}

write_OpAsmTargetINTEL :: proc(out: ^[dynamic]u32, result: Id, asm_target: string) {
	start := len(out)
	append(out, u32(Op.AsmTargetINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	write_string(out, asm_target)
}

write_OpAsmINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, asm_type: Id, target: Id, asm_instructions: string, constraints: string) {
	start := len(out)
	append(out, u32(Op.AsmINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(asm_type))
	append(out, u32(target))
	write_string(out, asm_instructions)
	write_string(out, constraints)
}

write_OpAsmCallINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, asm_: Id, argument: ..Id) {
	start := len(out)
	append(out, u32(Op.AsmCallINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(asm_))
	for argument in argument do append(out, u32(argument))
}

write_OpAtomicFMinEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicFMinEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAtomicFMaxEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicFMaxEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpAssumeTrueKHR :: proc(out: ^[dynamic]u32, condition: Id) {
	start := len(out)
	append(out, u32(Op.AssumeTrueKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(condition))
}

write_OpExpectKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, value: Id, expectedvalue: Id) {
	start := len(out)
	append(out, u32(Op.ExpectKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(value))
	append(out, u32(expectedvalue))
}

write_OpDecorateString :: proc(out: ^[dynamic]u32, target: Id, _operand_1: Decoration) {
	start := len(out)
	append(out, u32(Op.DecorateString))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(target))
	append(out, transmute(u32)_operand_1)
}

write_OpMemberDecorateString :: proc(out: ^[dynamic]u32, struct_type: Id, member: u32, _operand_2: Decoration) {
	start := len(out)
	append(out, u32(Op.MemberDecorateString))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(struct_type))
	append(out, u32(member))
	append(out, transmute(u32)_operand_2)
}

write_OpVmeImageINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image_type: Id, sampler: Id) {
	start := len(out)
	append(out, u32(Op.VmeImageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image_type))
	append(out, u32(sampler))
}

write_OpTypeVmeImageINTEL :: proc(out: ^[dynamic]u32, result: Id, image_type: Id) {
	start := len(out)
	append(out, u32(Op.TypeVmeImageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(image_type))
}

write_OpTypeAvcImePayloadINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcRefPayloadINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcRefPayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcSicPayloadINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcSicPayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcMcePayloadINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcMcePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcMceResultINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcMceResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcImeResultINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImeResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcImeResultSingleReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImeResultSingleReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcImeResultDualReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImeResultDualReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcImeSingleReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImeSingleReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcImeDualReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcImeDualReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcRefResultINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcRefResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpTypeAvcSicResultINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeAvcSicResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, reference_base_penalty: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(reference_base_penalty))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultInterShapePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceSetInterShapePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_shape_penalty: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetInterShapePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_shape_penalty))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceSetInterDirectionPenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, direction_cost: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetInterDirectionPenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(direction_cost))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSubgroupAvcMceSetMotionVectorCostFunctionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_cost_center_delta: Id, packed_cost_table: Id, cost_precision: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetMotionVectorCostFunctionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_cost_center_delta))
	append(out, u32(packed_cost_table))
	append(out, u32(cost_precision))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, slice_type: Id, qp: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(slice_type))
	append(out, u32(qp))
}

write_OpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpSubgroupAvcMceSetAcOnlyHaarINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetAcOnlyHaarINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, source_field_polarity: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(source_field_polarity))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, reference_field_polarity: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(reference_field_polarity))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, forward_reference_field_polarity: Id, backward_reference_field_polarity: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(forward_reference_field_polarity))
	append(out, u32(backward_reference_field_polarity))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToImePayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToImePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToImeResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToImeResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToRefPayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToRefPayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToRefResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToRefResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToSicPayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToSicPayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceConvertToSicResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceConvertToSicResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetMotionVectorsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetMotionVectorsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterDistortionsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterDistortionsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetBestInterDistortionsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetBestInterDistortionsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterMajorShapeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterMajorShapeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterMinorShapeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterMinorShapeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterDirectionsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterDirectionsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterMotionVectorCountINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterMotionVectorCountINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterReferenceIdsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterReferenceIdsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_reference_ids: Id, packed_reference_parameter_field_polarities: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_reference_ids))
	append(out, u32(packed_reference_parameter_field_polarities))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeInitializeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_coord: Id, partition_mask: Id, sad_adjustment: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeInitializeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_coord))
	append(out, u32(partition_mask))
	append(out, u32(sad_adjustment))
}

write_OpSubgroupAvcImeSetSingleReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, ref_offset: Id, search_window_config: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetSingleReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(ref_offset))
	append(out, u32(search_window_config))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeSetDualReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, fwd_ref_offset: Id, bwd_ref_offset: Id, search_window_config: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetDualReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(fwd_ref_offset))
	append(out, u32(bwd_ref_offset))
	append(out, u32(search_window_config))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeRefWindowSizeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, search_window_config: Id, dual_ref: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeRefWindowSizeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(search_window_config))
	append(out, u32(dual_ref))
}

write_OpSubgroupAvcImeAdjustRefOffsetINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, ref_offset: Id, src_coord: Id, ref_window_size: Id, image_size: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeAdjustRefOffsetINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(ref_offset))
	append(out, u32(src_coord))
	append(out, u32(ref_window_size))
	append(out, u32(image_size))
}

write_OpSubgroupAvcImeConvertToMcePayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeConvertToMcePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeSetMaxMotionVectorCountINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, max_motion_vector_count: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetMaxMotionVectorCountINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(max_motion_vector_count))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeSetUnidirectionalMixDisableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetUnidirectionalMixDisableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, threshold: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(threshold))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeSetWeightedSadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_sad_weights: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeSetWeightedSadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_sad_weights))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeEvaluateWithSingleReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeEvaluateWithDualReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id, streamin_components: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
	append(out, u32(streamin_components))
}

write_OpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id, streamin_components: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
	append(out, u32(streamin_components))
}

write_OpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id, streamin_components: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
	append(out, u32(streamin_components))
}

write_OpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id, streamin_components: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
	append(out, u32(streamin_components))
}

write_OpSubgroupAvcImeConvertToMceResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeConvertToMceResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetSingleReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetSingleReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetDualReferenceStreaminINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetDualReferenceStreaminINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeStripSingleReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeStripSingleReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeStripDualReferenceStreamoutINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeStripDualReferenceStreamoutINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
}

write_OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
}

write_OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
}

write_OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id, direction: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
	append(out, u32(direction))
}

write_OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id, direction: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
	append(out, u32(direction))
}

write_OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id, major_shape: Id, direction: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
	append(out, u32(major_shape))
	append(out, u32(direction))
}

write_OpSubgroupAvcImeGetBorderReachedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, image_select: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetBorderReachedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(image_select))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetTruncatedSearchIndicationINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetTruncatedSearchIndicationINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcFmeInitializeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_coord: Id, motion_vectors: Id, major_shapes: Id, minor_shapes: Id, direction: Id, pixel_resolution: Id, sad_adjustment: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcFmeInitializeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_coord))
	append(out, u32(motion_vectors))
	append(out, u32(major_shapes))
	append(out, u32(minor_shapes))
	append(out, u32(direction))
	append(out, u32(pixel_resolution))
	append(out, u32(sad_adjustment))
}

write_OpSubgroupAvcBmeInitializeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_coord: Id, motion_vectors: Id, major_shapes: Id, minor_shapes: Id, direction: Id, pixel_resolution: Id, bidirectional_weight: Id, sad_adjustment: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcBmeInitializeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_coord))
	append(out, u32(motion_vectors))
	append(out, u32(major_shapes))
	append(out, u32(minor_shapes))
	append(out, u32(direction))
	append(out, u32(pixel_resolution))
	append(out, u32(bidirectional_weight))
	append(out, u32(sad_adjustment))
}

write_OpSubgroupAvcRefConvertToMcePayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefConvertToMcePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefSetBidirectionalMixDisableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefSetBidirectionalMixDisableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefSetBilinearFilterEnableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefSetBilinearFilterEnableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefEvaluateWithSingleReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefEvaluateWithSingleReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefEvaluateWithDualReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefEvaluateWithDualReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefEvaluateWithMultiReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, packed_reference_ids: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefEvaluateWithMultiReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(packed_reference_ids))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, packed_reference_ids: Id, packed_reference_field_polarities: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(packed_reference_ids))
	append(out, u32(packed_reference_field_polarities))
	append(out, u32(payload))
}

write_OpSubgroupAvcRefConvertToMceResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcRefConvertToMceResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicInitializeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_coord: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicInitializeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_coord))
}

write_OpSubgroupAvcSicConfigureSkcINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, skip_block_partition_type: Id, skip_motion_vector_mask: Id, motion_vectors: Id, bidirectional_weight: Id, sad_adjustment: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicConfigureSkcINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(skip_block_partition_type))
	append(out, u32(skip_motion_vector_mask))
	append(out, u32(motion_vectors))
	append(out, u32(bidirectional_weight))
	append(out, u32(sad_adjustment))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicConfigureIpeLumaINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, luma_intra_partition_mask: Id, intra_neighbour_availabilty: Id, left_edge_luma_pixels: Id, upper_left_corner_luma_pixel: Id, upper_edge_luma_pixels: Id, upper_right_edge_luma_pixels: Id, sad_adjustment: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicConfigureIpeLumaINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(luma_intra_partition_mask))
	append(out, u32(intra_neighbour_availabilty))
	append(out, u32(left_edge_luma_pixels))
	append(out, u32(upper_left_corner_luma_pixel))
	append(out, u32(upper_edge_luma_pixels))
	append(out, u32(upper_right_edge_luma_pixels))
	append(out, u32(sad_adjustment))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicConfigureIpeLumaChromaINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, luma_intra_partition_mask: Id, intra_neighbour_availabilty: Id, left_edge_luma_pixels: Id, upper_left_corner_luma_pixel: Id, upper_edge_luma_pixels: Id, upper_right_edge_luma_pixels: Id, left_edge_chroma_pixels: Id, upper_left_corner_chroma_pixel: Id, upper_edge_chroma_pixels: Id, sad_adjustment: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicConfigureIpeLumaChromaINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(luma_intra_partition_mask))
	append(out, u32(intra_neighbour_availabilty))
	append(out, u32(left_edge_luma_pixels))
	append(out, u32(upper_left_corner_luma_pixel))
	append(out, u32(upper_edge_luma_pixels))
	append(out, u32(upper_right_edge_luma_pixels))
	append(out, u32(left_edge_chroma_pixels))
	append(out, u32(upper_left_corner_chroma_pixel))
	append(out, u32(upper_edge_chroma_pixels))
	append(out, u32(sad_adjustment))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetMotionVectorMaskINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, skip_block_partition_type: Id, direction: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetMotionVectorMaskINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(skip_block_partition_type))
	append(out, u32(direction))
}

write_OpSubgroupAvcSicConvertToMcePayloadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicConvertToMcePayloadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_shape_penalty: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetIntraLumaShapePenaltyINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_shape_penalty))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, luma_mode_penalty: Id, luma_packed_neighbor_modes: Id, luma_packed_non_dc_penalty: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(luma_mode_penalty))
	append(out, u32(luma_packed_neighbor_modes))
	append(out, u32(luma_packed_non_dc_penalty))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, chroma_mode_base_penalty: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(chroma_mode_base_penalty))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetBilinearFilterEnableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetBilinearFilterEnableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetSkcForwardTransformEnableINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packed_sad_coefficients: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetSkcForwardTransformEnableINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packed_sad_coefficients))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, block_based_skip_type: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicSetBlockBasedRawSkipSadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(block_based_skip_type))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicEvaluateIpeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicEvaluateIpeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicEvaluateWithSingleReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicEvaluateWithSingleReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicEvaluateWithDualReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, fwd_ref_image: Id, bwd_ref_image: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicEvaluateWithDualReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(fwd_ref_image))
	append(out, u32(bwd_ref_image))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicEvaluateWithMultiReferenceINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, packed_reference_ids: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicEvaluateWithMultiReferenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(packed_reference_ids))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, src_image: Id, packed_reference_ids: Id, packed_reference_field_polarities: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(src_image))
	append(out, u32(packed_reference_ids))
	append(out, u32(packed_reference_field_polarities))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicConvertToMceResultINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicConvertToMceResultINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetIpeLumaShapeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetIpeLumaShapeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetBestIpeLumaDistortionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetBestIpeLumaDistortionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetBestIpeChromaDistortionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetBestIpeChromaDistortionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetPackedIpeLumaModesINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetPackedIpeLumaModesINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetIpeChromaModeINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetIpeChromaModeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpSubgroupAvcSicGetInterRawSadsINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, payload: Id) {
	start := len(out)
	append(out, u32(Op.SubgroupAvcSicGetInterRawSadsINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(payload))
}

write_OpVariableLengthArrayINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, length: Id) {
	start := len(out)
	append(out, u32(Op.VariableLengthArrayINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(length))
}

write_OpSaveMemoryINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id) {
	start := len(out)
	append(out, u32(Op.SaveMemoryINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
}

write_OpRestoreMemoryINTEL :: proc(out: ^[dynamic]u32, ptr: Id) {
	start := len(out)
	append(out, u32(Op.RestoreMemoryINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(ptr))
}

write_OpArbitraryFloatSinCosPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, roundingaccuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSinCosPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(roundingaccuracy))
}

write_OpArbitraryFloatCastINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCastINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatCastFromIntINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, mresult: u32, fromsign: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCastFromIntINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(mresult))
	append(out, u32(fromsign))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatCastToIntINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, tosign: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCastToIntINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(tosign))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatAddINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatAddINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatSubINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSubINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatMulINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatMulINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatDivINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatDivINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatGTINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatGTINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
}

write_OpArbitraryFloatGEINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatGEINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
}

write_OpArbitraryFloatLTINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLTINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
}

write_OpArbitraryFloatLEINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLEINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
}

write_OpArbitraryFloatEQINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatEQINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
}

write_OpArbitraryFloatRecipINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatRecipINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatRSqrtINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatRSqrtINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatCbrtINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCbrtINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatHypotINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatHypotINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatSqrtINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSqrtINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatLogINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLogINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatLog2INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLog2INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatLog10INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLog10INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatLog1pINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatLog1pINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatExpINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatExpINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatExp2INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatExp2INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatExp10INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatExp10INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatExpm1INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatExpm1INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatSinINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSinINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatCosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatSinCosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSinCosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatSinPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatSinPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatCosPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatCosPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatASinINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatASinINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatASinPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatASinPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatACosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, m1: u32, mout: u32, enablesubnormals: u32, roundingmode: u32, roundingaccuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatACosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(m1))
	append(out, u32(mout))
	append(out, u32(enablesubnormals))
	append(out, u32(roundingmode))
	append(out, u32(roundingaccuracy))
}

write_OpArbitraryFloatACosPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatACosPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatATanINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatATanINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatATanPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatATanPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatATan2INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatATan2INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatPowINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatPowINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatPowRINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, mb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatPowRINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(mb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpArbitraryFloatPowNINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, ma: u32, b: Id, signofb: u32, mresult: u32, subnormal: u32, rounding: u32, accuracy: u32) {
	start := len(out)
	append(out, u32(Op.ArbitraryFloatPowNINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(ma))
	append(out, u32(b))
	append(out, u32(signofb))
	append(out, u32(mresult))
	append(out, u32(subnormal))
	append(out, u32(rounding))
	append(out, u32(accuracy))
}

write_OpLoopControlINTEL :: proc(out: ^[dynamic]u32, loop_control_parameters: ..u32) {
	start := len(out)
	append(out, u32(Op.LoopControlINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	for loop_control_parameters in loop_control_parameters do append(out, u32(loop_control_parameters))
}

write_OpAliasDomainDeclINTEL :: proc(out: ^[dynamic]u32, result: Id, name: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.AliasDomainDeclINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	if name, ok := name.?; ok do append(out, u32(name))
}

write_OpAliasScopeDeclINTEL :: proc(out: ^[dynamic]u32, result: Id, alias_domain: Id, name: Maybe(Id) = nil) {
	start := len(out)
	append(out, u32(Op.AliasScopeDeclINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, u32(alias_domain))
	if name, ok := name.?; ok do append(out, u32(name))
}

write_OpAliasScopeListDeclINTEL :: proc(out: ^[dynamic]u32, result: Id, _operand_1: ..Id) {
	start := len(out)
	append(out, u32(Op.AliasScopeListDeclINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	for _operand_1 in _operand_1 do append(out, u32(_operand_1))
}

write_OpFixedSqrtINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedSqrtINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedRecipINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedRecipINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedRsqrtINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedRsqrtINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedSinINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedSinINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedCosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedCosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedSinCosINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedSinCosINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedSinPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedSinPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedCosPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedCosPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedSinCosPiINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedSinCosPiINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedLogINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedLogINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpFixedExpINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id, s: u32, i: u32, ri: u32, q: u32, o: u32) {
	start := len(out)
	append(out, u32(Op.FixedExpINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
	append(out, u32(s))
	append(out, u32(i))
	append(out, u32(ri))
	append(out, u32(q))
	append(out, u32(o))
}

write_OpPtrCastToCrossWorkgroupINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.PtrCastToCrossWorkgroupINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpCrossWorkgroupCastToPtrINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id) {
	start := len(out)
	append(out, u32(Op.CrossWorkgroupCastToPtrINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
}

write_OpReadPipeBlockingINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.ReadPipeBlockingINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpWritePipeBlockingINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, packet_size: Id, packet_alignment: Id) {
	start := len(out)
	append(out, u32(Op.WritePipeBlockingINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(packet_size))
	append(out, u32(packet_alignment))
}

write_OpFPGARegINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, input: Id) {
	start := len(out)
	append(out, u32(Op.FPGARegINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(input))
}

write_OpRayQueryGetRayTMinKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetRayTMinKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetRayFlagsKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetRayFlagsKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetIntersectionTKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionTKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionInstanceCustomIndexKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionInstanceCustomIndexKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionInstanceIdKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionInstanceIdKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionGeometryIndexKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionGeometryIndexKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionPrimitiveIndexKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionPrimitiveIndexKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionBarycentricsKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionBarycentricsKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionFrontFaceKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionFrontFaceKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionCandidateAABBOpaqueKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionCandidateAABBOpaqueKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetIntersectionObjectRayDirectionKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionObjectRayDirectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionObjectRayOriginKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionObjectRayOriginKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetWorldRayDirectionKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetWorldRayDirectionKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetWorldRayOriginKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetWorldRayOriginKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
}

write_OpRayQueryGetIntersectionObjectToWorldKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionObjectToWorldKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpRayQueryGetIntersectionWorldToObjectKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, rayquery: Id, intersection: Id) {
	start := len(out)
	append(out, u32(Op.RayQueryGetIntersectionWorldToObjectKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(rayquery))
	append(out, u32(intersection))
}

write_OpAtomicFAddEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, pointer: Id, memory: Id, semantics: Id, value: Id) {
	start := len(out)
	append(out, u32(Op.AtomicFAddEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(pointer))
	append(out, u32(memory))
	append(out, u32(semantics))
	append(out, u32(value))
}

write_OpTypeBufferSurfaceINTEL :: proc(out: ^[dynamic]u32, result: Id, accessqualifier: AccessQualifier) {
	start := len(out)
	append(out, u32(Op.TypeBufferSurfaceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
	append(out, transmute(u32)accessqualifier)
}

write_OpTypeStructContinuedINTEL :: proc(out: ^[dynamic]u32, _operand_0: ..Id) {
	start := len(out)
	append(out, u32(Op.TypeStructContinuedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	for _operand_0 in _operand_0 do append(out, u32(_operand_0))
}

write_OpConstantCompositeContinuedINTEL :: proc(out: ^[dynamic]u32, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.ConstantCompositeContinuedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	for constituents in constituents do append(out, u32(constituents))
}

write_OpSpecConstantCompositeContinuedINTEL :: proc(out: ^[dynamic]u32, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.SpecConstantCompositeContinuedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	for constituents in constituents do append(out, u32(constituents))
}

write_OpCompositeConstructContinuedINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, constituents: ..Id) {
	start := len(out)
	append(out, u32(Op.CompositeConstructContinuedINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for constituents in constituents do append(out, u32(constituents))
}

write_OpConvertFToBF16INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, float_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertFToBF16INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(float_value))
}

write_OpConvertBF16ToFINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, bfloat16_value: Id) {
	start := len(out)
	append(out, u32(Op.ConvertBF16ToFINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(bfloat16_value))
}

write_OpControlBarrierArriveINTEL :: proc(out: ^[dynamic]u32, execution: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.ControlBarrierArriveINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpControlBarrierWaitINTEL :: proc(out: ^[dynamic]u32, execution: Id, memory: Id, semantics: Id) {
	start := len(out)
	append(out, u32(Op.ControlBarrierWaitINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(execution))
	append(out, u32(memory))
	append(out, u32(semantics))
}

write_OpArithmeticFenceEXT :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target: Id) {
	start := len(out)
	append(out, u32(Op.ArithmeticFenceEXT))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target))
}

write_OpTaskSequenceCreateINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, function: Id, pipelined: u32, usestallenableclusters: u32, getcapacity: u32, asynccapacity: u32) {
	start := len(out)
	append(out, u32(Op.TaskSequenceCreateINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(function))
	append(out, u32(pipelined))
	append(out, u32(usestallenableclusters))
	append(out, u32(getcapacity))
	append(out, u32(asynccapacity))
}

write_OpTaskSequenceAsyncINTEL :: proc(out: ^[dynamic]u32, sequence: Id, arguments: ..Id) {
	start := len(out)
	append(out, u32(Op.TaskSequenceAsyncINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(sequence))
	for arguments in arguments do append(out, u32(arguments))
}

write_OpTaskSequenceGetINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, sequence: Id) {
	start := len(out)
	append(out, u32(Op.TaskSequenceGetINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(sequence))
}

write_OpTaskSequenceReleaseINTEL :: proc(out: ^[dynamic]u32, sequence: Id) {
	start := len(out)
	append(out, u32(Op.TaskSequenceReleaseINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(sequence))
}

write_OpTypeTaskSequenceINTEL :: proc(out: ^[dynamic]u32, result: Id) {
	start := len(out)
	append(out, u32(Op.TypeTaskSequenceINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result))
}

write_OpSubgroupBlockPrefetchINTEL :: proc(out: ^[dynamic]u32, ptr: Id, numbytes: Id, _operand_2: Maybe(MemoryAccess) = nil) {
	start := len(out)
	append(out, u32(Op.SubgroupBlockPrefetchINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(ptr))
	append(out, u32(numbytes))
	if _operand_2, ok := _operand_2.?; ok do append(out, transmute(u32)_operand_2)
}

write_OpSubgroup2DBlockLoadINTEL :: proc(out: ^[dynamic]u32, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) {
	start := len(out)
	append(out, u32(Op.Subgroup2DBlockLoadINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(element_size))
	append(out, u32(block_width))
	append(out, u32(block_height))
	append(out, u32(block_count))
	append(out, u32(src_base_pointer))
	append(out, u32(memory_width))
	append(out, u32(memory_height))
	append(out, u32(memory_pitch))
	append(out, u32(coordinate))
	append(out, u32(dst_pointer))
}

write_OpSubgroup2DBlockLoadTransformINTEL :: proc(out: ^[dynamic]u32, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) {
	start := len(out)
	append(out, u32(Op.Subgroup2DBlockLoadTransformINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(element_size))
	append(out, u32(block_width))
	append(out, u32(block_height))
	append(out, u32(block_count))
	append(out, u32(src_base_pointer))
	append(out, u32(memory_width))
	append(out, u32(memory_height))
	append(out, u32(memory_pitch))
	append(out, u32(coordinate))
	append(out, u32(dst_pointer))
}

write_OpSubgroup2DBlockLoadTransposeINTEL :: proc(out: ^[dynamic]u32, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id, dst_pointer: Id) {
	start := len(out)
	append(out, u32(Op.Subgroup2DBlockLoadTransposeINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(element_size))
	append(out, u32(block_width))
	append(out, u32(block_height))
	append(out, u32(block_count))
	append(out, u32(src_base_pointer))
	append(out, u32(memory_width))
	append(out, u32(memory_height))
	append(out, u32(memory_pitch))
	append(out, u32(coordinate))
	append(out, u32(dst_pointer))
}

write_OpSubgroup2DBlockPrefetchINTEL :: proc(out: ^[dynamic]u32, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id) {
	start := len(out)
	append(out, u32(Op.Subgroup2DBlockPrefetchINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(element_size))
	append(out, u32(block_width))
	append(out, u32(block_height))
	append(out, u32(block_count))
	append(out, u32(src_base_pointer))
	append(out, u32(memory_width))
	append(out, u32(memory_height))
	append(out, u32(memory_pitch))
	append(out, u32(coordinate))
}

write_OpSubgroup2DBlockStoreINTEL :: proc(out: ^[dynamic]u32, element_size: Id, block_width: Id, block_height: Id, block_count: Id, src_pointer: Id, dst_base_pointer: Id, memory_width: Id, memory_height: Id, memory_pitch: Id, coordinate: Id) {
	start := len(out)
	append(out, u32(Op.Subgroup2DBlockStoreINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(element_size))
	append(out, u32(block_width))
	append(out, u32(block_height))
	append(out, u32(block_count))
	append(out, u32(src_pointer))
	append(out, u32(dst_base_pointer))
	append(out, u32(memory_width))
	append(out, u32(memory_height))
	append(out, u32(memory_pitch))
	append(out, u32(coordinate))
}

write_OpSubgroupMatrixMultiplyAccumulateINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, k_dim: Id, matrix_a: Id, matrix_b: Id, matrix_c: Id, _operand_6: Maybe(MatrixMultiplyAccumulateOperands) = nil) {
	start := len(out)
	append(out, u32(Op.SubgroupMatrixMultiplyAccumulateINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(k_dim))
	append(out, u32(matrix_a))
	append(out, u32(matrix_b))
	append(out, u32(matrix_c))
	if _operand_6, ok := _operand_6.?; ok do append(out, transmute(u32)_operand_6)
}

write_OpBitwiseFunctionINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, a: Id, b: Id, c: Id, lutindex: Id) {
	start := len(out)
	append(out, u32(Op.BitwiseFunctionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(a))
	append(out, u32(b))
	append(out, u32(c))
	append(out, u32(lutindex))
}

write_OpUntypedVariableLengthArrayINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, element_type: Id, length: Id) {
	start := len(out)
	append(out, u32(Op.UntypedVariableLengthArrayINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(element_type))
	append(out, u32(length))
}

write_OpConditionalExtensionINTEL :: proc(out: ^[dynamic]u32, condition: Id, name: string) {
	start := len(out)
	append(out, u32(Op.ConditionalExtensionINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(condition))
	write_string(out, name)
}

write_OpConditionalEntryPointINTEL :: proc(out: ^[dynamic]u32, condition: Id, _operand_1: ExecutionModel, entry_point: Id, name: string, interface: ..Id) {
	start := len(out)
	append(out, u32(Op.ConditionalEntryPointINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(condition))
	append(out, transmute(u32)_operand_1)
	append(out, u32(entry_point))
	write_string(out, name)
	for interface in interface do append(out, u32(interface))
}

write_OpConditionalCapabilityINTEL :: proc(out: ^[dynamic]u32, condition: Id, capability: Capability) {
	start := len(out)
	append(out, u32(Op.ConditionalCapabilityINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(condition))
	append(out, transmute(u32)capability)
}

write_OpSpecConstantTargetINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, target: u32, features: ..u32) {
	start := len(out)
	append(out, u32(Op.SpecConstantTargetINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(target))
	for features in features do append(out, u32(features))
}

write_OpSpecConstantArchitectureINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, category: u32, family: u32, opcode: u32, architecture: u32) {
	start := len(out)
	append(out, u32(Op.SpecConstantArchitectureINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(category))
	append(out, u32(family))
	append(out, u32(opcode))
	append(out, u32(architecture))
}

write_OpSpecConstantCapabilitiesINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, capabilities: ..Capability) {
	start := len(out)
	append(out, u32(Op.SpecConstantCapabilitiesINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for capabilities in capabilities do append(out, transmute(u32)capabilities)
}

write_OpConditionalCopyObjectINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, _operand_2: ..Id) {
	start := len(out)
	append(out, u32(Op.ConditionalCopyObjectINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	for _operand_2 in _operand_2 do append(out, u32(_operand_2))
}

write_OpGroupIMulKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupIMulKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupFMulKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupFMulKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupBitwiseAndKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupBitwiseAndKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupBitwiseOrKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupBitwiseOrKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupBitwiseXorKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupBitwiseXorKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupLogicalAndKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupLogicalAndKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupLogicalOrKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupLogicalOrKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpGroupLogicalXorKHR :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, execution: Id, operation: GroupOperation, x: Id) {
	start := len(out)
	append(out, u32(Op.GroupLogicalXorKHR))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(execution))
	append(out, transmute(u32)operation)
	append(out, u32(x))
}

write_OpRoundFToTF32INTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, float_value: Id) {
	start := len(out)
	append(out, u32(Op.RoundFToTF32INTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(float_value))
}

write_OpMaskedGatherINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, ptrvector: Id, alignment: u32, mask: Id, fillempty: Id) {
	start := len(out)
	append(out, u32(Op.MaskedGatherINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(ptrvector))
	append(out, u32(alignment))
	append(out, u32(mask))
	append(out, u32(fillempty))
}

write_OpMaskedScatterINTEL :: proc(out: ^[dynamic]u32, inputvector: Id, ptrvector: Id, alignment: u32, mask: Id) {
	start := len(out)
	append(out, u32(Op.MaskedScatterINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(inputvector))
	append(out, u32(ptrvector))
	append(out, u32(alignment))
	append(out, u32(mask))
}

write_OpConvertHandleToImageINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertHandleToImageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertHandleToSamplerINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertHandleToSamplerINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
}

write_OpConvertHandleToSampledImageINTEL :: proc(out: ^[dynamic]u32, result_type: Id, result: Id, operand: Id) {
	start := len(out)
	append(out, u32(Op.ConvertHandleToSampledImageINTEL))
	defer out[start] |= u32(len(out) - start) << 16

	append(out, u32(result_type))
	append(out, u32(result))
	append(out, u32(operand))
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
