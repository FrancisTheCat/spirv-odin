package spirv

import "core:slice"

Id :: distinct u32

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

write :: proc(instructions: ^[dynamic]u32, lit: $L) {
	when L == u32 {
		append(instructions, lit)
	} else when L == Id {
		append(instructions, u32(lit))
		assert(lit != 0)
	} else when L == u64 {
		append(instructions, u32(lit), u32(lit >> 32))
	} else when L == string {
		write_string(instructions, lit)
	} else {
		#panic("Unsupported literal type")
	}
}

Pair :: struct(A, B: typeid) {
	a: A,
	b: B,
}

write_pair :: proc(instructions: ^[dynamic]u32, pair: Pair($A, $B)) {
	write(instructions, pair.a)
	write(instructions, pair.b)
}
