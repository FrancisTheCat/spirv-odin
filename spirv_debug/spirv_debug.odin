// This file is auto generated from the official khronos json files
// You must set `extension_id` to the result of `spv.OpExtInstImport(&builder, "<extension-name>")`
package spirv_debug

import spv ".."

VERSION  :: 0x00000000
REVISION :: 6

extension_id: spv.Id

OpDebugInfoNone :: proc(builder: ^spv.Builder, result_type: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugInfoNone))
}

OpDebugCompilationUnit :: proc(builder: ^spv.Builder, result_type: spv.Id, Version: spv.Id, DWARF Version: spv.Id, Source: spv.Id, Language: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugCompilationUnit), Version, DWARF Version, Source, Language)
}

OpDebugTypeBasic :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Size: spv.Id, Encoding: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeBasic), Name, Size, Encoding, Flags)
}

OpDebugTypePointer :: proc(builder: ^spv.Builder, result_type: spv.Id, Base Type: spv.Id, Storage Class: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypePointer), Base Type, Storage Class, Flags)
}

OpDebugTypeQualifier :: proc(builder: ^spv.Builder, result_type: spv.Id, Base Type: spv.Id, Type Qualifier: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeQualifier), Base Type, Type Qualifier)
}

OpDebugTypeArray :: proc(builder: ^spv.Builder, result_type: spv.Id, Base Type: spv.Id, Component Counts: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeArray), Base Type, Component Counts)
}

OpDebugTypeVector :: proc(builder: ^spv.Builder, result_type: spv.Id, Base Type: spv.Id, Component Count: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeVector), Base Type, Component Count)
}

OpDebugTypedef :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Base Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypedef), Name, Base Type, Source, Line, Column, Parent)
}

OpDebugTypeFunction :: proc(builder: ^spv.Builder, result_type: spv.Id, Flags: spv.Id, Return Type: spv.Id, Parameter Types: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeFunction), Flags, Return Type, Parameter Types)
}

OpDebugTypeEnum :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Underlying Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Size: spv.Id, Flags: spv.Id, Value, Name, Value, Name, ...: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeEnum), Name, Underlying Type, Source, Line, Column, Parent, Size, Flags, Value, Name, Value, Name, ...)
}

OpDebugTypeComposite :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Tag: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage Name: spv.Id, Size: spv.Id, Flags: spv.Id, Members: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeComposite), Name, Tag, Source, Line, Column, Parent, Linkage Name, Size, Flags, Members)
}

OpDebugTypeMember :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Offset: spv.Id, Size: spv.Id, Flags: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeMember), Name, Type, Source, Line, Column, Offset, Size, Flags, Value)
}

OpDebugTypeInheritance :: proc(builder: ^spv.Builder, result_type: spv.Id, Parent: spv.Id, Offset: spv.Id, Size: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeInheritance), Parent, Offset, Size, Flags)
}

OpDebugTypePtrToMember :: proc(builder: ^spv.Builder, result_type: spv.Id, Member Type: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypePtrToMember), Member Type, Parent)
}

OpDebugTypeTemplate :: proc(builder: ^spv.Builder, result_type: spv.Id, Target: spv.Id, Parameters: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplate), Target, Parameters)
}

OpDebugTypeTemplateParameter :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Actual Type: spv.Id, Value: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateParameter), Name, Actual Type, Value, Source, Line, Column)
}

OpDebugTypeTemplateTemplateParameter :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Template Name: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateTemplateParameter), Name, Template Name, Source, Line, Column)
}

OpDebugTypeTemplateParameterPack :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Template Parameters: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateParameterPack), Name, Source, Line, Column, Template Parameters)
}

OpDebugGlobalVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage Name: spv.Id, Variable: spv.Id, Flags: spv.Id, Static Member Declaration: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugGlobalVariable), Name, Type, Source, Line, Column, Parent, Linkage Name, Variable, Flags, Static Member Declaration)
}

OpDebugFunctionDeclaration :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage Name: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugFunctionDeclaration), Name, Type, Source, Line, Column, Parent, Linkage Name, Flags)
}

OpDebugFunction :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage Name: spv.Id, Flags: spv.Id, Scope Line: spv.Id, Declaration: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugFunction), Name, Type, Source, Line, Column, Parent, Linkage Name, Flags, Scope Line, Declaration)
}

OpDebugLexicalBlock :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Name: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLexicalBlock), Source, Line, Column, Parent, Name)
}

OpDebugLexicalBlockDiscriminator :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Discriminator: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLexicalBlockDiscriminator), Source, Discriminator, Parent)
}

OpDebugScope :: proc(builder: ^spv.Builder, result_type: spv.Id, Scope: spv.Id, Inlined At: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugScope), Scope, Inlined At)
}

OpDebugNoScope :: proc(builder: ^spv.Builder, result_type: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugNoScope))
}

OpDebugInlinedAt :: proc(builder: ^spv.Builder, result_type: spv.Id, Line: spv.Id, Scope: spv.Id, Inlined: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugInlinedAt), Line, Scope, Inlined)
}

OpDebugLocalVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Flags: spv.Id, Arg Number: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLocalVariable), Name, Type, Source, Line, Column, Parent, Flags, Arg Number)
}

OpDebugInlinedVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Variable: spv.Id, Inlined: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugInlinedVariable), Variable, Inlined)
}

OpDebugDeclare :: proc(builder: ^spv.Builder, result_type: spv.Id, Local Variable: spv.Id, Variable: spv.Id, Expression: spv.Id, Indexes: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugDeclare), Local Variable, Variable, Expression, Indexes)
}

OpDebugValue :: proc(builder: ^spv.Builder, result_type: spv.Id, Local Variable: spv.Id, Value: spv.Id, Expression: spv.Id, Indexes: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugValue), Local Variable, Value, Expression, Indexes)
}

OpDebugOperation :: proc(builder: ^spv.Builder, result_type: spv.Id, OpCode: spv.Id, Operands ...: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugOperation), OpCode, Operands ...)
}

OpDebugExpression :: proc(builder: ^spv.Builder, result_type: spv.Id, Operands ...: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugExpression), Operands ...)
}

OpDebugMacroDef :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line: spv.Id, Name: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugMacroDef), Source, Line, Name, Value)
}

OpDebugMacroUndef :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line: spv.Id, Macro: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugMacroUndef), Source, Line, Macro)
}

OpDebugImportedEntity :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Tag: spv.Id, Source: spv.Id, Entity: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugImportedEntity), Name, Tag, Source, Entity, Line, Column, Parent)
}

OpDebugSource :: proc(builder: ^spv.Builder, result_type: spv.Id, File: spv.Id, Text: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugSource), File, Text)
}

OpDebugFunctionDefinition :: proc(builder: ^spv.Builder, result_type: spv.Id, Function: spv.Id, Definition: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugFunctionDefinition), Function, Definition)
}

OpDebugSourceContinued :: proc(builder: ^spv.Builder, result_type: spv.Id, Text: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugSourceContinued), Text)
}

OpDebugLine :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line Start: spv.Id, Line End: spv.Id, Column Start: spv.Id, Column End: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLine), Source, Line Start, Line End, Column Start, Column End)
}

OpDebugNoLine :: proc(builder: ^spv.Builder, result_type: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugNoLine))
}

OpDebugBuildIdentifier :: proc(builder: ^spv.Builder, result_type: spv.Id, Identifier: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugBuildIdentifier), Identifier, Flags)
}

OpDebugStoragePath :: proc(builder: ^spv.Builder, result_type: spv.Id, Path: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugStoragePath), Path)
}

OpDebugEntryPoint :: proc(builder: ^spv.Builder, result_type: spv.Id, Entry Point: spv.Id, Compilation Unit: spv.Id, Compiler Signature: spv.Id, Command-line Arguments: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugEntryPoint), Entry Point, Compilation Unit, Compiler Signature, Command-line Arguments)
}

OpDebugTypeMatrix :: proc(builder: ^spv.Builder, result_type: spv.Id, Vector Type: spv.Id, Vector Count: spv.Id, Column Major: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeMatrix), Vector Type, Vector Count, Column Major)
}

Op :: enum {
	DebugInfoNone = 0,
	DebugCompilationUnit = 1,
	DebugTypeBasic = 2,
	DebugTypePointer = 3,
	DebugTypeQualifier = 4,
	DebugTypeArray = 5,
	DebugTypeVector = 6,
	DebugTypedef = 7,
	DebugTypeFunction = 8,
	DebugTypeEnum = 9,
	DebugTypeComposite = 10,
	DebugTypeMember = 11,
	DebugTypeInheritance = 12,
	DebugTypePtrToMember = 13,
	DebugTypeTemplate = 14,
	DebugTypeTemplateParameter = 15,
	DebugTypeTemplateTemplateParameter = 16,
	DebugTypeTemplateParameterPack = 17,
	DebugGlobalVariable = 18,
	DebugFunctionDeclaration = 19,
	DebugFunction = 20,
	DebugLexicalBlock = 21,
	DebugLexicalBlockDiscriminator = 22,
	DebugScope = 23,
	DebugNoScope = 24,
	DebugInlinedAt = 25,
	DebugLocalVariable = 26,
	DebugInlinedVariable = 27,
	DebugDeclare = 28,
	DebugValue = 29,
	DebugOperation = 30,
	DebugExpression = 31,
	DebugMacroDef = 32,
	DebugMacroUndef = 33,
	DebugImportedEntity = 34,
	DebugSource = 35,
	DebugFunctionDefinition = 101,
	DebugSourceContinued = 102,
	DebugLine = 103,
	DebugNoLine = 104,
	DebugBuildIdentifier = 105,
	DebugStoragePath = 106,
	DebugEntryPoint = 107,
	DebugTypeMatrix = 108,
}

