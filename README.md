# Generating the files
```bash
odin run generator -- SPIRV-Headers/include/spirv/unified1/spirv.core.grammar.json spirv_glsl SPIRV-Headers/include/spirv/unified1/extinst.glsl.std.450.grammar.json
```
# Usage
Look at example.odin, it's just the operations defined by the spec with some added convenience for enums, bit_fields and variadics.
