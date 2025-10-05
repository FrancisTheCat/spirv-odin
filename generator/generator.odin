package spirv_gen

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:strings"
import "core:strconv"
import "core:slice"

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
		operands: []struct {
			kind:       string,
			quantifier: string,
			name:       string,
		},
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
			"gen/SPIRV-Headers/include/spirv/unified1/spirv.core.grammar.json",
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

	bb: strings.Builder
	ob: strings.Builder
	fmt.sbprintfln(&ob, "Op :: enum u32 {{")
	for inst in grammar.instructions {
		fmt.sbprint(&b, "write_", inst.opname, " :: proc(out: ^[dynamic]u32", sep = "")
		fmt.sbprintfln(&ob, "\t%s = %v,", inst.opname[2:], inst.opcode)
		for operand, operand_i in inst.operands {
			name := operand.name
			if name == "" || strings.contains(name, ".") {
				name = fmt.tprint("_operand_", operand_i, sep = "")
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
				fmt.sbprintf(&bb, "\tif %s, ok := %s.?; ok do ", name, name)
			case "*":
				fmt.sbprintf(&bb, "\tfor %s in %s do ", name, name)
			case:
				fmt.sbprintf(&bb, "\t")
			}

			find_type: {
				if operand.kind in enums {
					type = operand.kind
					fmt.sbprintfln(&bb, "append(out, transmute(u32)%s)", name)
					break find_type
				}

				switch operand.kind {
				case "LiteralString":
					type = "string"
					fmt.sbprintfln(&bb, "write_string(out, %s)", name)
				case "LiteralInteger", "LiteralExtInstInteger", "LiteralContextDependentNumber", "LiteralSpecConstantOpInteger":
					fmt.sbprintfln(&bb, "append(out, u32(%s))", name)
					type = "u32"
				case "IdResult":
					name = "result"
					fmt.sbprintfln(&bb, "append(out, u32(%s))", name)
					type = "Id"
				case "IdResultType":
					name = "result_type"
					fmt.sbprintfln(&bb, "append(out, u32(%s))", name)
					type = "Id"
				case "IdRef", "IdScope", "IdMemorySemantics":
					fmt.sbprintfln(&bb, "append(out, u32(%s))", name)
					type = "Id"
				case "PairIdRefLiteralInteger":
					type = "struct { id: Id, literal: u32, }"
					fmt.sbprintfln(&bb, "append(out, u32(%s.id), %s.literal)", name, name)
				case "PairIdRefIdRef":
					type = "[2]Id"
					fmt.sbprintfln(&bb, "append(out, u32(%s[0]), u32(%s[1]))", name, name)
				case "PairLiteralIntegerIdRef":
					type = "struct { literal: u32, id: Id, }"
					fmt.sbprintfln(&bb, "append(out, u32(%s.id), %s.literal)", name, name)
				}
			}

			switch operand.quantifier {
			case "?":
				type = fmt.tprintf("Maybe(%s) = nil", type)
			case "*":
				type = fmt.tprintf("..%s", type)
			}

			fmt.sbprint(&b, ", ", name, ": ", type, sep = "")
		}

		fmt.sbprintln(&b, ") {")
		fmt.sbprintln(&b, "\tstart := len(out)")
		fmt.sbprintln(&b, "\tappend(out, u32(Op.", inst.opname[2:], "))", sep = "")
		fmt.sbprintln(&b, "\tdefer out[start] |= u32(len(out) - start) << 16\n")
		fmt.sbprint(&b, strings.to_string(bb))
		fmt.sbprintln(&b, "}\n")

		strings.builder_reset(&bb)
	}

	fmt.sbprintln(&ob, "}")
	fmt.sbprint(&b, strings.to_string(ob))

	os.write_entire_file("generated.odin", transmute([]byte)strings.to_string(b))
}
