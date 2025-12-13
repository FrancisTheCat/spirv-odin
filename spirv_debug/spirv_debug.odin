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

OpDebugCompilationUnit :: proc(builder: ^spv.Builder, result_type: spv.Id, Version: spv.Id, DWARF_Version: spv.Id, Source: spv.Id, Language: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugCompilationUnit), Version, DWARF_Version, Source, Language)
}

OpDebugTypeBasic :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Size: spv.Id, Encoding: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeBasic), Name, Size, Encoding, Flags)
}

OpDebugTypePointer :: proc(builder: ^spv.Builder, result_type: spv.Id, Base_Type: spv.Id, Storage_Class: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypePointer), Base_Type, Storage_Class, Flags)
}

OpDebugTypeQualifier :: proc(builder: ^spv.Builder, result_type: spv.Id, Base_Type: spv.Id, Type_Qualifier: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeQualifier), Base_Type, Type_Qualifier)
}

OpDebugTypeArray :: proc(builder: ^spv.Builder, result_type: spv.Id, Base_Type: spv.Id, Component_Counts: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeArray), Base_Type, Component_Counts)
}

OpDebugTypeVector :: proc(builder: ^spv.Builder, result_type: spv.Id, Base_Type: spv.Id, Component_Count: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeVector), Base_Type, Component_Count)
}

OpDebugTypedef :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Base_Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypedef), Name, Base_Type, Source, Line, Column, Parent)
}

OpDebugTypeFunction :: proc(builder: ^spv.Builder, result_type: spv.Id, Flags: spv.Id, Return_Type: spv.Id, Parameter_Types: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeFunction), Flags, Return_Type, Parameter_Types)
}

// manually adjusted
OpDebugTypeEnum :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Underlying_Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Size: spv.Id, Flags: spv.Id, Variants: ..struct { Name, Value: spv.Id, }) -> spv.Id {
	args := make([]spv.Id, 8 + len(Variants))
	args[0] = Name
	args[1] = Underlying_Type
	args[2] = Source
	args[3] = Line
	args[4] = Column
	args[5] = Parent
	args[6] = Size
	args[7] = Flags
	for v, i in Variants {
		args[8 + i * 2 + 0] = v.Name
		args[8 + i * 2 + 1] = v.Value
	}
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeEnum), ..args)
}

OpDebugTypeComposite :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Tag: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage_Name: spv.Id, Size: spv.Id, Flags: spv.Id, Members: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeComposite), Name, Tag, Source, Line, Column, Parent, Linkage_Name, Size, Flags, Members)
}

OpDebugTypeMember :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Offset: spv.Id, Size: spv.Id, Flags: spv.Id, Value: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeMember), Name, Type, Source, Line, Column, Offset, Size, Flags, Value)
}

OpDebugTypeInheritance :: proc(builder: ^spv.Builder, result_type: spv.Id, Parent: spv.Id, Offset: spv.Id, Size: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeInheritance), Parent, Offset, Size, Flags)
}

OpDebugTypePtrToMember :: proc(builder: ^spv.Builder, result_type: spv.Id, Member_Type: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypePtrToMember), Member_Type, Parent)
}

OpDebugTypeTemplate :: proc(builder: ^spv.Builder, result_type: spv.Id, Target: spv.Id, Parameters: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplate), Target, Parameters)
}

OpDebugTypeTemplateParameter :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Actual_Type: spv.Id, Value: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateParameter), Name, Actual_Type, Value, Source, Line, Column)
}

OpDebugTypeTemplateTemplateParameter :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Template_Name: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateTemplateParameter), Name, Template_Name, Source, Line, Column)
}

OpDebugTypeTemplateParameterPack :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Template_Parameters: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeTemplateParameterPack), Name, Source, Line, Column, Template_Parameters)
}

OpDebugGlobalVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage_Name: spv.Id, Variable: spv.Id, Flags: spv.Id, Static_Member_Declaration: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugGlobalVariable), Name, Type, Source, Line, Column, Parent, Linkage_Name, Variable, Flags, Static_Member_Declaration)
}

OpDebugFunctionDeclaration :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage_Name: spv.Id, Flags: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugFunctionDeclaration), Name, Type, Source, Line, Column, Parent, Linkage_Name, Flags)
}

OpDebugFunction :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Linkage_Name: spv.Id, Flags: spv.Id, Scope_Line: spv.Id, Declaration: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugFunction), Name, Type, Source, Line, Column, Parent, Linkage_Name, Flags, Scope_Line, Declaration)
}

OpDebugLexicalBlock :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Name: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLexicalBlock), Source, Line, Column, Parent, Name)
}

OpDebugLexicalBlockDiscriminator :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Discriminator: spv.Id, Parent: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLexicalBlockDiscriminator), Source, Discriminator, Parent)
}

OpDebugScope :: proc(builder: ^spv.Builder, result_type: spv.Id, Scope: spv.Id, Inlined_At: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugScope), Scope, Inlined_At)
}

OpDebugNoScope :: proc(builder: ^spv.Builder, result_type: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugNoScope))
}

OpDebugInlinedAt :: proc(builder: ^spv.Builder, result_type: spv.Id, Line: spv.Id, Scope: spv.Id, Inlined: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugInlinedAt), Line, Scope, Inlined)
}

OpDebugLocalVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Name: spv.Id, Type: spv.Id, Source: spv.Id, Line: spv.Id, Column: spv.Id, Parent: spv.Id, Flags: spv.Id, Arg_Number: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLocalVariable), Name, Type, Source, Line, Column, Parent, Flags, Arg_Number)
}

OpDebugInlinedVariable :: proc(builder: ^spv.Builder, result_type: spv.Id, Variable: spv.Id, Inlined: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugInlinedVariable), Variable, Inlined)
}

OpDebugDeclare :: proc(builder: ^spv.Builder, result_type: spv.Id, Local_Variable: spv.Id, Variable: spv.Id, Expression: spv.Id, Indexes: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugDeclare), Local_Variable, Variable, Expression, Indexes)
}

OpDebugValue :: proc(builder: ^spv.Builder, result_type: spv.Id, Local_Variable: spv.Id, Value: spv.Id, Expression: spv.Id, Indexes: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugValue), Local_Variable, Value, Expression, Indexes)
}

OpDebugOperation :: proc(builder: ^spv.Builder, result_type: spv.Id, OpCode: spv.Id, Operands____: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugOperation), OpCode, Operands____)
}

OpDebugExpression :: proc(builder: ^spv.Builder, result_type: spv.Id, Operands____: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugExpression), Operands____)
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

OpDebugLine :: proc(builder: ^spv.Builder, result_type: spv.Id, Source: spv.Id, Line_Start: spv.Id, Line_End: spv.Id, Column_Start: spv.Id, Column_End: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugLine), Source, Line_Start, Line_End, Column_Start, Column_End)
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

OpDebugEntryPoint :: proc(builder: ^spv.Builder, result_type: spv.Id, Entry_Point: spv.Id, Compilation_Unit: spv.Id, Compiler_Signature: spv.Id, Command_line_Arguments: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugEntryPoint), Entry_Point, Compilation_Unit, Compiler_Signature, Command_line_Arguments)
}

OpDebugTypeMatrix :: proc(builder: ^spv.Builder, result_type: spv.Id, Vector_Type: spv.Id, Vector_Count: spv.Id, Column_Major: spv.Id) -> spv.Id {
	return spv.OpExtInst(builder, result_type, extension_id, u32(Op.DebugTypeMatrix), Vector_Type, Vector_Count, Column_Major)
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

