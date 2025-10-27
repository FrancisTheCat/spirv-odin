package spirv_gen

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:strings"
import "core:strconv"
import "core:slice"

Operand :: struct {
	kind:       string,
	quantifier: string,
	name:       string,
}

Grammar :: struct {
	magic_number:  string,
	major_version: int,
	minor_version: int,
	revision:      int,
	instruction_printing_class: []struct {
		tag:     string,
		heading: string,
	},
	instructions: []struct {
		opname:   string,
		class:    string,
		opcode:   u32,
		operands: []Operand,
		version:  string,
	},
	operand_kinds: []struct {
		category:   enum {
			BitEnum,
			ValueEnum,
			Id,
			Literal,
		},
		kind:       string,
		enumerants: []struct {
			enumerant:    string,
			aliases:      []string,
			value:        json.Value, // can either be string or an int
			capabilities: []string,
			parameters:   []struct {
				kind: string,
				name: string,
			},
			extensions:   []string,
			version:      string,
		},
		doc:        string,
	},
}

generate_file :: proc(grammar: Grammar) -> string {
	b: strings.Builder

	fmt.sbprintln(&b, "// This file is auto generated from the official khronos json files")
	fmt.sbprintln(&b, "package spirv\n")

	fmt.sbprintfln(&b, "VERSION      :: 0x%08x", (grammar.major_version << 16) | (grammar.minor_version << 8))
	fmt.sbprintfln(&b, "REVISION     :: %v",      grammar.revision)
	fmt.sbprintfln(&b, "MAGIC_NUMBER :: %v\n",    grammar.magic_number)

	Enum_Value :: struct {
		name:  string,
		value: int,
	}
	
	values: [dynamic]Enum_Value
	enums:  map[string]struct{}
	for op_kind in grammar.operand_kinds {
		if op_kind.category == .Id || op_kind.category == .Literal {
			continue
		}
		enums[op_kind.kind] = {}

		skip := 0
		switch op_kind.kind {
		case "Op":
			skip = 2
		case "RayQueryCommittedIntersectionType":
			skip = len("RayQueryCommittedIntersection")
		case "RayQueryCandidateIntersectionType":
			skip = len("RayQueryCandidateIntersection")
		case "MatrixMultiplyAccumulateOperands":
			skip = len("Matrix")
		}
		
		clear(&values)
		max_name_len: int
		for value in op_kind.enumerants {
			name := value.enumerant
			if '0' <= name[0] && name[0] <= '9' {
				name = fmt.tprintf("_%s", name)
			}
			max_name_len = max(max_name_len, len(name))
			v: int
			#partial switch val in value.value {
			case json.Integer:
				v = int(val)
			case json.Float:
				v = int(val)
			case json.String:
				v = strconv.parse_int(val) or_else panic("")
			case:
				unreachable()
			}
			if op_kind.category == .BitEnum {
				if v == 0 {
					continue
				}
				log2 :: proc(x: int) -> (result: int) {
					x := x
					for x > 1 {
						x      /= 2
						result += 1
					}
					return result
				}
				v = log2(v)
			}
			append(&values, Enum_Value { name, v, })
		}
		max_name_len -= skip
		slice.sort_by(values[:], proc(a, b: Enum_Value) -> bool { return a.value < b.value })
		#partial switch op_kind.category {
		case .BitEnum:
			fmt.sbprintln(&b, op_kind.kind, ":: bit_set[enum u32 {")
		case .ValueEnum:
			fmt.sbprintln(&b, op_kind.kind, ":: enum u32 {")
		}
		fmt_str := fmt.tprintf("\t%%-%vs = %%v,", max_name_len)
		for v in values {
			fmt.sbprintfln(&b, fmt_str, v.name[skip:], v.value)
		}
		#partial switch op_kind.category {
		case .BitEnum:
			fmt.sbprintln(&b, "}; u32]\n")
		case .ValueEnum:
			fmt.sbprintln(&b, "}\n")
		}
	}

	delete_key(&enums, "PairIdRefLiteralInteger")
	delete_key(&enums, "PairIdRefIdRef")
	delete_key(&enums, "PairLiteralIntegerIdRef")

	bb:      strings.Builder
	ob:      strings.Builder
	results: strings.Builder
	fmt.sbprintfln(&ob, "Op :: enum u32 {{")
	for inst in grammar.instructions {
		fmt.sbprint(&b, inst.opname, " :: proc(builder: ^Builder", sep = "")
		fmt.sbprintfln(&ob, "\t%s = %v,", inst.opname[2:], inst.opcode)
		has_result: bool

		handle_operand :: proc(
			b:       ^strings.Builder,
			bb:      ^strings.Builder,
			ob:      ^strings.Builder,
			results: ^strings.Builder,
			operand: Operand,
			index:   int,
			enums:   map[string]struct{},
		) -> bool {
			name := operand.name
			if name == "" || strings.contains(name, ".") {
				name = fmt.tprint("_operand_", index, sep = "")
			} else {
				name    = strings.to_lower(name, context.temp_allocator)
				name, _ = strings.replace_all(name, " ", "_", context.temp_allocator)
				name, _ = strings.replace_all(name, "~", "_", context.temp_allocator)
			}

			switch name {
			case "matrix":
				name = "matrix_"
			case "asm":
				name = "asm_"
			}

			type := fmt.tprintf("Invalid_Type(%s)", operand.kind)

			indent := "\t"
			switch operand.quantifier {
			case "?":
				fmt.sbprintfln(bb, "\tif %s, ok := %s.?; ok {{", name, name)
				indent = "\t\t"
			case "*":
				fmt.sbprintfln(bb, "\tfor %s in %s {{", name, name)
				indent = "\t\t"
			}

			result: bool
			find_type: {
				fmt.sbprint(bb, indent)
				if operand.kind in enums {
					type = operand.kind
					fmt.sbprintfln(bb, "append(&builder.data, transmute(u32)%s)", name)
					break find_type
				}

				switch operand.kind {
				case "LiteralString":
					type = "string"
					fmt.sbprintfln(bb, "write_string(&builder.data, %s)", name)
				case "LiteralInteger", "LiteralExtInstInteger", "LiteralContextDependentNumber", "LiteralSpecConstantOpInteger":
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s))", name)
					type = "u32"
				case "IdResult":
					name       = "result"
					type       = "Id"
					result     = true
					fmt.sbprintfln(bb, "append(&builder.data, next_id(builder))")
				case "IdResultType":
					name = "result_type"
					type = "Id"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s))", name)
					fmt.sbprintfln(bb, "%sassert(%s != 0)", indent, name)
				case "IdRef", "IdScope", "IdMemorySemantics":
					type = "Id"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s))", name)
					fmt.sbprintfln(bb, "%sassert(%s != 0)", indent, name)
				case "PairIdRefLiteralInteger":
					type = "struct { id: Id, literal: u32, }"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s.id), %s.literal)", name, name)
					fmt.sbprintfln(bb, "%sassert(%s.id != 0)", indent, name)
				case "PairIdRefIdRef":
					type = "[2]Id"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s[0]), u32(%s[1]))", name, name)
					fmt.sbprintfln(bb, "%sassert(%s[0] != 0)", indent, name)
					fmt.sbprintfln(bb, "%sassert(%s[1] != 0)", indent, name)
				case "PairLiteralIntegerIdRef":
					type = "struct { literal: u32, id: Id, }"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s.id), %s.literal)", name, name)
					fmt.sbprintfln(bb, "%sassert(%s.id != 0)", indent, name)
				}
			}

			switch operand.quantifier {
			case "?":
				type = fmt.tprintf("Maybe(%s) = nil", type)
			case "*":
				type = fmt.tprintf("..%s", type)
			}

			if len(indent) == 2 {
				fmt.sbprintfln(bb, "\t}")
			}

			if result {
				fmt.sbprint(results, name, ": ", type, sep = "")
			} else {
				fmt.sbprint(b, ", ", name, ": ", type, sep = "")
			}
			return result
		}

		for operand, i in inst.operands {
			if handle_operand(&b, &bb, &ob, &results, operand, i, enums) {
				has_result = true
			}
		}

		// wth khronos
		if inst.opname == "OpDecorate" || inst.opname == "OpMemberDecorate" {
			handle_operand(&b, &bb, &ob, &results, {
				kind       = "LiteralInteger",
				quantifier = "*",
				name       = "targets",
			}, -1, enums)
		}

		fmt.sbprintfln(&b, ") -> (%s) {{", strings.to_string(results))
		fmt.sbprintln(&b, "\tstart := len(builder.data)")
		fmt.sbprintln(&b, "\tappend(&builder.data, u32(Op.", inst.opname[2:], "))", sep = "")
		fmt.sbprintln(&b, "\tdefer builder.data[start] |= u32(len(builder.data) - start) << 16\n")
		fmt.sbprint(&b, strings.to_string(bb))
		if has_result {
			fmt.sbprintln(&b, "\treturn builder.current_id^")
		}
		fmt.sbprintln(&b, "}\n")

		strings.builder_reset(&bb)
		strings.builder_reset(&results)
	}

	fmt.sbprintln(&ob, "}")
	fmt.sbprint(&b, strings.to_string(ob))

	return strings.to_string(b)
}

generate_extension :: proc(grammar: Grammar, package_name: string) -> string {
	b: strings.Builder

	fmt.sbprintln(&b, "// This file is auto generated from the official khronos json files")
	fmt.sbprintln(&b, "// You must set `extension_id` to the result of `spv.OpExtInstImport(&builder, \"GLSL.std.450\")`")
	fmt.sbprintfln(&b, "package %s\n", package_name)

	fmt.sbprintfln(&b, "import spv \"..\"\n")

	fmt.sbprintfln(&b, "VERSION  :: 0x%08x", (grammar.major_version << 16) | (grammar.minor_version << 8))
	fmt.sbprintfln(&b, "REVISION :: %v\n",    grammar.revision)

	fmt.sbprintfln(&b, "extension_id: spv.Id\n")

	ob: strings.Builder
	fmt.sbprintln(&ob, "Op :: enum {")
	for inst in grammar.instructions {
		fmt.sbprintfln(&ob, "\t%s = %v,", inst.opname, inst.opcode)

		fmt.sbprintf(&b, "Op%s :: proc(builder: ^spv.Builder, result_type: spv.Id", inst.opname)
		for operand in inst.operands {
			fmt.sbprintf(&b, ", %s: spv.Id", operand.name)
		}
		fmt.sbprintfln(&b, ") -> spv.Id {{")
		fmt.sbprintf(&b, "\treturn spv.OpExtInst(builder, result_type, extension_id, u32(Op.%s)", inst.opname)
		for operand in inst.operands {
			fmt.sbprintf(&b, ", %s", operand.name)
		}
		fmt.sbprintfln(&b, ")")
		fmt.sbprintfln(&b, "}\n")
	}
	fmt.sbprintln(&ob, "}")
	
	fmt.sbprintln(&b, strings.to_string(ob))
	return strings.to_string(b)
}

main :: proc() {
	{
		grammar: Grammar
		err := json.unmarshal(
			os.read_entire_file(
				"generator/SPIRV-Headers/include/spirv/unified1/spirv.core.grammar.json",
			) or_else panic("Failed to read json grammar file"),
			&grammar,
		)
		assert(err == nil, "Failed to parse json grammar")
		generated := generate_file(grammar)
		os.write_entire_file("generated.odin", transmute([]byte)generated)
	}

	{
		grammar: Grammar
		err := json.unmarshal(
			os.read_entire_file(
				"generator/SPIRV-Headers/include/spirv/unified1/extinst.glsl.std.450.grammar.json",
			) or_else panic("Failed to read json grammar file"),
			&grammar,
		)
		assert(err == nil, "Failed to parse json grammar")
		generated := generate_extension(grammar, "spirv_glsl")
		os.write_entire_file("spirv_glsl/spirv_glsl.odin", transmute([]byte)generated)
	}
}
