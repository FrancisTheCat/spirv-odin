package spirv

import "core:os"
import "core:fmt"
import "core:slice"

main :: proc() {
    instructions := make([dynamic]u32)

    append(&instructions, MAGIC_NUMBER)
    append(&instructions, VERSION)
    append(&instructions, 'H' << 0 | 'E' << 8 | 'P' << 16 | 'H' << 24)
	append(&instructions, 10)
	append(&instructions, 0)

	write_OpCapability(&instructions, .Matrix)
	write_OpCapability(&instructions, .Shader)
	write_OpCapability(&instructions, .ImageQuery)

	write_OpMemoryModel(&instructions, .Logical, .Vulkan)
    
	write_OpEntryPoint(&instructions, .Vertex, 5, "main")

	write_OpTypeVoid(&instructions, 1)
	write_OpTypeFloat(&instructions, 2, 32)
	write_OpTypeFunction(&instructions, 3, 1)
	write_OpName(&instructions, 4, "main")

	write_OpFunction(&instructions, 1, 5, {}, 3)
		write_OpLabel(&instructions, 4)
		write_OpReturn(&instructions)
	write_OpFunctionEnd(&instructions)
	
    os.write_entire_file("test.spv", slice.reinterpret([]byte, instructions[:]))
}
