package spirv

import "core:os"
import "core:slice"

import spv "."

main :: proc() {
	b: spv.Builder
	id: spv.Id
	spv.builder_init(&b, 'H' << 0 | 'E' << 8 | 'P' << 16 | 'H' << 24, &id)

	spv.OpCapability(&b, .Matrix)
	spv.OpCapability(&b, .Shader)
	spv.OpCapability(&b, .ImageQuery)

	spv.OpMemoryModel(&b, .Logical, .Simple)
    
	spv.OpEntryPoint(&b, .Vertex, 4, "main")

	spv.OpName(&b, 5, "main")

	t_void := spv.OpTypeVoid(&b)
	t_f32  := spv.OpTypeFloat(&b, 32)
	t_fun  := spv.OpTypeFunction(&b, t_void)

	function := spv.OpFunction(&b, 1, {}, t_fun)
	label    := spv.OpLabel(&b)
	spv.OpReturn(&b)
	spv.OpFunctionEnd(&b)

	_ = t_f32
	_ = function
	_ = label
	
	os.write_entire_file("test.spv", slice.reinterpret([]byte, b.data[:]))
}
