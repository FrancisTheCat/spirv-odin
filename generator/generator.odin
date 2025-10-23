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

main :: proc() {
	grammar: Grammar
	err := json.unmarshal(
		os.read_entire_file(
			"generator/SPIRV-Headers/include/spirv/unified1/spirv.core.grammar.json",
		) or_else panic("Failed to read json grammar file"),
		&grammar,
	)
	assert(err == nil, "Failed to parse json grammar")

	b: strings.Builder

	fmt.sbprintln(&b, "// This file is auto generated from the official khronos json files")
	fmt.sbprintln(&b, "package spirv\n")

	fmt.sbprintfln(&b, "import \"core:slice\"\n")

	fmt.sbprintfln(&b, "VERSION      :: 0x%08x", (grammar.major_version << 16) | (grammar.minor_version << 8))
	fmt.sbprintfln(&b, "REVISION     :: %v",      grammar.revision)
	fmt.sbprintfln(&b, "MAGIC_NUMBER :: %v\n",    grammar.magic_number)

	fmt.sbprintfln(&b, "Id :: distinct u32")

	fmt.sbprintln(&b,
`
Builder :: struct {
	data:       [dynamic]u32,
	current_id: ^Id,
}

builder_init :: proc(builder: ^Builder, generator_magic: u32, id: ^Id, allocator := context.allocator) {
	builder.data       = make([dynamic]u32, allocator)
	builder.current_id = id

	append(&builder.data, MAGIC_NUMBER)
	append(&builder.data, VERSION)
	append(&builder.data, generator_magic)
	append(&builder.data, 4194303)
	append(&builder.data, 0)
}

builder_destroy :: proc(builder: ^Builder) {
	delete(builder.data)
}

// you should write the id bound into this index of the _final_ SPIR-V u32 array
ID_BOUND_INDEX :: 3

next_id :: proc(builder: ^Builder) -> u32 {
	builder.current_id^ += 1
	return u32(builder.current_id^)
}

write_string :: proc(instructions: ^[dynamic]u32, str: string) {
	start := len(instructions)
	resize(instructions, len(instructions) + (len(str) + 1 + 3) / 4)
	copy(slice.to_bytes(instructions[start:]), transmute([]byte)str)
}
`)

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

			switch operand.quantifier {
			case "?":
				fmt.sbprintf(bb, "\tif %s, ok := %s.?; ok do ", name, name)
			case "*":
				fmt.sbprintf(bb, "\tfor %s in %s do ", name, name)
			case:
				fmt.sbprintf(bb, "\t")
			}

			result: bool
			find_type: {
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
				case "IdRef", "IdScope", "IdMemorySemantics":
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s))", name)
					type = "Id"
				case "PairIdRefLiteralInteger":
					type = "struct { id: Id, literal: u32, }"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s.id), %s.literal)", name, name)
				case "PairIdRefIdRef":
					type = "[2]Id"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s[0]), u32(%s[1]))", name, name)
				case "PairLiteralIntegerIdRef":
					type = "struct { literal: u32, id: Id, }"
					fmt.sbprintfln(bb, "append(&builder.data, u32(%s.id), %s.literal)", name, name)
				}
			}

			switch operand.quantifier {
			case "?":
				type = fmt.tprintf("Maybe(%s) = nil", type)
			case "*":
				type = fmt.tprintf("..%s", type)
			}

			if result {
				fmt.sbprint(results, name, ": ", type, sep = "")
			} else {
				fmt.sbprint(b, ", ", name, ": ", type, sep = "")
			}
			return result
		}

		for operand, i in inst.operands {
			if handle_operand(
				&b,
				&bb,
				&ob,
				&results,
				operand,
				i,
				enums,
			) {
				has_result = true
			}
		}

		// wth khronos
		if inst.opname == "OpDecorate" || inst.opname == "OpMemberDecorate" {
			handle_operand(
				&b,
				&bb,
				&ob,
				&results,
				{
					kind       = "LiteralInteger",
					quantifier = "*",
					name       = "targets",
				},
				-1,
				enums,
			)
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

	os.write_entire_file("generated.odin", transmute([]byte)strings.to_string(b))
}
