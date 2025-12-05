#!/bin/sh

odin run generator -- \
              SPIRV-Headers/include/spirv/unified1/spirv.core.grammar.json \
  spirv_glsl  SPIRV-Headers/include/spirv/unified1/extinst.glsl.std.450.grammar.json \
  spirv_debug SPIRV-Headers/include/spirv/unified1/extinst.nonsemantic.shader.debuginfo.100.grammar.json
