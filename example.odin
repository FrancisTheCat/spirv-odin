package spirv

import "core:os"
import "core:slice"

main :: proc() {
	b: Builder
	id: Id
	builder_init(&b, 'H' << 0 | 'E' << 8 | 'P' << 16 | 'H' << 24, &id)

	OpCapability(&b, .Matrix)
	OpCapability(&b, .Shader)
	OpCapability(&b, .ImageQuery)

	OpMemoryModel(&b, .Logical, .Simple)
    
	OpEntryPoint(&b, .Vertex, 4, "main")

	OpName(&b, 5, "main")

	t_void := OpTypeVoid(&b)
	t_f32  := OpTypeFloat(&b, 32)
	t_fun  := OpTypeFunction(&b, t_void)

	function := OpFunction(&b, 1, {}, t_fun)
	label    := OpLabel(&b)
	OpReturn(&b)
	OpFunctionEnd(&b)

	_ = t_f32
	_ = function
	_ = label
	
	os.write_entire_file("test.spv", slice.reinterpret([]byte, b.data[:]))
}
