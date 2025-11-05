// This file is auto generated from the official khronos json files
// You must set `extension_id` to the result of `spv.OpExtInstImport(&builder, "<extension-name>")`
package spirv_glsl

import spv ".."

VERSION  :: 0x00000000
REVISION :: 2

extension_id: spv.Id

OpRound :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Round), x)
}

OpRoundEven :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.RoundEven), x)
}

OpTrunc :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Trunc), x)
}

OpFAbs :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FAbs), x)
}

OpSAbs :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SAbs), x)
}

OpFSign :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FSign), x)
}

OpSSign :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SSign), x)
}

OpFloor :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Floor), x)
}

OpCeil :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Ceil), x)
}

OpFract :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Fract), x)
}

OpRadians :: proc(builder: ^spv.Builder, result_type: spv.Id, degrees: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Radians), degrees)
}

OpDegrees :: proc(builder: ^spv.Builder, result_type: spv.Id, radians: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Degrees), radians)
}

OpSin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Sin), x)
}

OpCos :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Cos), x)
}

OpTan :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Tan), x)
}

OpAsin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Asin), x)
}

OpAcos :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Acos), x)
}

OpAtan :: proc(builder: ^spv.Builder, result_type: spv.Id, y_over_x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Atan), y_over_x)
}

OpSinh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Sinh), x)
}

OpCosh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Cosh), x)
}

OpTanh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Tanh), x)
}

OpAsinh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Asinh), x)
}

OpAcosh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Acosh), x)
}

OpAtanh :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Atanh), x)
}

OpAtan2 :: proc(builder: ^spv.Builder, result_type: spv.Id, y: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Atan2), y, x)
}

OpPow :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Pow), x, y)
}

OpExp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Exp), x)
}

OpLog :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Log), x)
}

OpExp2 :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Exp2), x)
}

OpLog2 :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Log2), x)
}

OpSqrt :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Sqrt), x)
}

OpInverseSqrt :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.InverseSqrt), x)
}

OpDeterminant :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Determinant), x)
}

OpMatrixInverse :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.MatrixInverse), x)
}

OpModf :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, i: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Modf), x, i)
}

OpModfStruct :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.ModfStruct), x)
}

OpFMin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FMin), x, y)
}

OpUMin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UMin), x, y)
}

OpSMin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SMin), x, y)
}

OpFMax :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FMax), x, y)
}

OpUMax :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UMax), x, y)
}

OpSMax :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SMax), x, y)
}

OpFClamp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, minVal: spv.Id, maxVal: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FClamp), x, minVal, maxVal)
}

OpUClamp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, minVal: spv.Id, maxVal: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UClamp), x, minVal, maxVal)
}

OpSClamp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, minVal: spv.Id, maxVal: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SClamp), x, minVal, maxVal)
}

OpFMix :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id, a: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FMix), x, y, a)
}

OpIMix :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id, a: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.IMix), x, y, a)
}

OpStep :: proc(builder: ^spv.Builder, result_type: spv.Id, edge: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Step), edge, x)
}

OpSmoothStep :: proc(builder: ^spv.Builder, result_type: spv.Id, edge0: spv.Id, edge1: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.SmoothStep), edge0, edge1, x)
}

OpFma :: proc(builder: ^spv.Builder, result_type: spv.Id, a: spv.Id, b: spv.Id, c: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Fma), a, b, c)
}

OpFrexp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, exp: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Frexp), x, exp)
}

OpFrexpStruct :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FrexpStruct), x)
}

OpLdexp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, exp: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Ldexp), x, exp)
}

OpPackSnorm4x8 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackSnorm4x8), v)
}

OpPackUnorm4x8 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackUnorm4x8), v)
}

OpPackSnorm2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackSnorm2x16), v)
}

OpPackUnorm2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackUnorm2x16), v)
}

OpPackHalf2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackHalf2x16), v)
}

OpPackDouble2x32 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.PackDouble2x32), v)
}

OpUnpackSnorm2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, p: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackSnorm2x16), p)
}

OpUnpackUnorm2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, p: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackUnorm2x16), p)
}

OpUnpackHalf2x16 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackHalf2x16), v)
}

OpUnpackSnorm4x8 :: proc(builder: ^spv.Builder, result_type: spv.Id, p: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackSnorm4x8), p)
}

OpUnpackUnorm4x8 :: proc(builder: ^spv.Builder, result_type: spv.Id, p: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackUnorm4x8), p)
}

OpUnpackDouble2x32 :: proc(builder: ^spv.Builder, result_type: spv.Id, v: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.UnpackDouble2x32), v)
}

OpLength :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Length), x)
}

OpDistance :: proc(builder: ^spv.Builder, result_type: spv.Id, p0: spv.Id, p1: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Distance), p0, p1)
}

OpCross :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Cross), x, y)
}

OpNormalize :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Normalize), x)
}

OpFaceForward :: proc(builder: ^spv.Builder, result_type: spv.Id, N: spv.Id, I: spv.Id, Nref: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FaceForward), N, I, Nref)
}

OpReflect :: proc(builder: ^spv.Builder, result_type: spv.Id, I: spv.Id, N: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Reflect), I, N)
}

OpRefract :: proc(builder: ^spv.Builder, result_type: spv.Id, I: spv.Id, N: spv.Id, eta: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.Refract), I, N, eta)
}

OpFindILsb :: proc(builder: ^spv.Builder, result_type: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FindILsb), Value)
}

OpFindSMsb :: proc(builder: ^spv.Builder, result_type: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FindSMsb), Value)
}

OpFindUMsb :: proc(builder: ^spv.Builder, result_type: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.FindUMsb), Value)
}

OpInterpolateAtCentroid :: proc(builder: ^spv.Builder, result_type: spv.Id, interpolant: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.InterpolateAtCentroid), interpolant)
}

OpInterpolateAtSample :: proc(builder: ^spv.Builder, result_type: spv.Id, interpolant: spv.Id, sample: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.InterpolateAtSample), interpolant, sample)
}

OpInterpolateAtOffset :: proc(builder: ^spv.Builder, result_type: spv.Id, interpolant: spv.Id, offset: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.InterpolateAtOffset), interpolant, offset)
}

OpNMin :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.NMin), x, y)
}

OpNMax :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, y: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.NMax), x, y)
}

OpNClamp :: proc(builder: ^spv.Builder, result_type: spv.Id, x: spv.Id, minVal: spv.Id, maxVal: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.NClamp), x, minVal, maxVal)
}

Op :: enum {
	Round = 1,
	RoundEven = 2,
	Trunc = 3,
	FAbs = 4,
	SAbs = 5,
	FSign = 6,
	SSign = 7,
	Floor = 8,
	Ceil = 9,
	Fract = 10,
	Radians = 11,
	Degrees = 12,
	Sin = 13,
	Cos = 14,
	Tan = 15,
	Asin = 16,
	Acos = 17,
	Atan = 18,
	Sinh = 19,
	Cosh = 20,
	Tanh = 21,
	Asinh = 22,
	Acosh = 23,
	Atanh = 24,
	Atan2 = 25,
	Pow = 26,
	Exp = 27,
	Log = 28,
	Exp2 = 29,
	Log2 = 30,
	Sqrt = 31,
	InverseSqrt = 32,
	Determinant = 33,
	MatrixInverse = 34,
	Modf = 35,
	ModfStruct = 36,
	FMin = 37,
	UMin = 38,
	SMin = 39,
	FMax = 40,
	UMax = 41,
	SMax = 42,
	FClamp = 43,
	UClamp = 44,
	SClamp = 45,
	FMix = 46,
	IMix = 47,
	Step = 48,
	SmoothStep = 49,
	Fma = 50,
	Frexp = 51,
	FrexpStruct = 52,
	Ldexp = 53,
	PackSnorm4x8 = 54,
	PackUnorm4x8 = 55,
	PackSnorm2x16 = 56,
	PackUnorm2x16 = 57,
	PackHalf2x16 = 58,
	PackDouble2x32 = 59,
	UnpackSnorm2x16 = 60,
	UnpackUnorm2x16 = 61,
	UnpackHalf2x16 = 62,
	UnpackSnorm4x8 = 63,
	UnpackUnorm4x8 = 64,
	UnpackDouble2x32 = 65,
	Length = 66,
	Distance = 67,
	Cross = 68,
	Normalize = 69,
	FaceForward = 70,
	Reflect = 71,
	Refract = 72,
	FindILsb = 73,
	FindSMsb = 74,
	FindUMsb = 75,
	InterpolateAtCentroid = 76,
	InterpolateAtSample = 77,
	InterpolateAtOffset = 78,
	NMin = 79,
	NMax = 80,
	NClamp = 81,
}

