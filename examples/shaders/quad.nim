#
#   #version:1# (machine generated, don't edit!)
#
#   Generated by sokol-shdc (https://github.com/floooh/sokol-tools)
#
#   Cmdline: sokol-shdc -i examples/shaders/quad.glsl -o examples/shaders/quad.nim -l glsl330:metal_macos:hlsl4 -f sokol_nim
#
#   Overview:
#
#       Shader program 'quad':
#           Get shader desc: shd.quadShaderDesc(sg.queryBackend())
#           Vertex shader: vs
#               Attribute slots:
#                   ATTR_vs_position = 0
#                   ATTR_vs_color0 = 1
#           Fragment shader: fs
#
#
import sokol/gfx as sg

const attrVsPosition* = 0
const attrVsColor0* = 1


#
#   #version 330
#   
#   layout(location = 0) in vec4 position;
#   out vec4 color;
#   layout(location = 1) in vec4 color0;
#   
#   void main()
#   {
#       gl_Position = position;
#       color = color0;
#   }
#   
#
const vsSourceGlsl330: array[173, uint8] = [
    0x23'u8,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x33,0x33,0x30,0x0a,0x0a,0x6c,0x61,
    0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,
    0x30,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x34,0x20,0x70,0x6f,0x73,0x69,0x74,
    0x69,0x6f,0x6e,0x3b,0x0a,0x6f,0x75,0x74,0x20,0x76,0x65,0x63,0x34,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,
    0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x31,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,
    0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,
    0x6d,0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x67,0x6c,0x5f,
    0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x70,0x6f,0x73,0x69,0x74,
    0x69,0x6f,0x6e,0x3b,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
]
#
#   #version 330
#   
#   layout(location = 0) out vec4 frag_color;
#   in vec4 color;
#   
#   void main()
#   {
#       frag_color = color;
#   }
#   
#
const fsSourceGlsl330: array[114, uint8] = [
    0x23'u8,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x33,0x33,0x30,0x0a,0x0a,0x6c,0x61,
    0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,
    0x30,0x29,0x20,0x6f,0x75,0x74,0x20,0x76,0x65,0x63,0x34,0x20,0x66,0x72,0x61,0x67,
    0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x69,0x6e,0x20,0x76,0x65,0x63,0x34,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,0x6d,0x61,0x69,
    0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,
    0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x7d,0x0a,
    0x0a,0x00,
]
#
#   static float4 gl_Position;
#   static float4 position;
#   static float4 color;
#   static float4 color0;
#   
#   struct SPIRV_Cross_Input
#   {
#       float4 position : TEXCOORD0;
#       float4 color0 : TEXCOORD1;
#   };
#   
#   struct SPIRV_Cross_Output
#   {
#       float4 color : TEXCOORD0;
#       float4 gl_Position : SV_Position;
#   };
#   
#   #line 11 "examples/shaders/quad.glsl"
#   void vert_main()
#   {
#   #line 11 "examples/shaders/quad.glsl"
#       gl_Position = position;
#   #line 12 "examples/shaders/quad.glsl"
#       color = color0;
#   }
#   
#   SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
#   {
#       position = stage_input.position;
#       color0 = stage_input.color0;
#       vert_main();
#       SPIRV_Cross_Output stage_output;
#       stage_output.gl_Position = gl_Position;
#       stage_output.color = color;
#       return stage_output;
#   }
#
const vsSourceHlsl4: array[759, uint8] = [
    0x73'u8,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x67,0x6c,
    0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,
    0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,
    0x6e,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x0a,0x73,
    0x74,0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,
    0x73,0x5f,0x49,0x6e,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,
    0x6f,0x61,0x74,0x34,0x20,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3a,0x20,
    0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x20,0x3a,0x20,0x54,
    0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x31,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x73,0x74,
    0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,
    0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,
    0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,0x54,0x45,0x58,
    0x43,0x4f,0x4f,0x52,0x44,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,
    0x74,0x34,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3a,
    0x20,0x53,0x56,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x7d,0x3b,
    0x0a,0x0a,0x23,0x6c,0x69,0x6e,0x65,0x20,0x31,0x31,0x20,0x22,0x65,0x78,0x61,0x6d,
    0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,
    0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,0x0a,0x76,0x6f,0x69,0x64,0x20,0x76,0x65,0x72,
    0x74,0x5f,0x6d,0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x23,0x6c,0x69,0x6e,0x65,
    0x20,0x31,0x31,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,
    0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,
    0x0a,0x20,0x20,0x20,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,
    0x20,0x3d,0x20,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x23,0x6c,0x69,
    0x6e,0x65,0x20,0x31,0x32,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,
    0x73,0x68,0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,
    0x6c,0x22,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,
    0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x7d,0x0a,0x0a,0x53,0x50,0x49,0x52,0x56,0x5f,
    0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x6d,0x61,0x69,
    0x6e,0x28,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,0x6e,
    0x70,0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x29,
    0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,
    0x3d,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x2e,0x70,0x6f,
    0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,0x6c,0x6f,
    0x72,0x30,0x20,0x3d,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,
    0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x76,0x65,0x72,
    0x74,0x5f,0x6d,0x61,0x69,0x6e,0x28,0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,0x53,0x50,
    0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,
    0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,0x0a,0x20,
    0x20,0x20,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,
    0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x67,0x6c,
    0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x20,0x20,0x20,0x20,0x73,
    0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,
    0x72,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x72,
    0x65,0x74,0x75,0x72,0x6e,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,
    0x75,0x74,0x3b,0x0a,0x7d,0x0a,0x00,
]
#
#   static float4 frag_color;
#   static float4 color;
#   
#   struct SPIRV_Cross_Input
#   {
#       float4 color : TEXCOORD0;
#   };
#   
#   struct SPIRV_Cross_Output
#   {
#       float4 frag_color : SV_Target0;
#   };
#   
#   #line 10 "examples/shaders/quad.glsl"
#   void frag_main()
#   {
#   #line 10 "examples/shaders/quad.glsl"
#       frag_color = color;
#   }
#   
#   SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
#   {
#       color = stage_input.color;
#       frag_main();
#       SPIRV_Cross_Output stage_output;
#       stage_output.frag_color = frag_color;
#       return stage_output;
#   }
#
const fsSourceHlsl4: array[511, uint8] = [
    0x73'u8,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x66,0x72,
    0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,
    0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x0a,
    0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,
    0x73,0x73,0x5f,0x49,0x6e,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,0x54,0x45,
    0x58,0x43,0x4f,0x4f,0x52,0x44,0x30,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x73,0x74,0x72,
    0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,
    0x4f,0x75,0x74,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,
    0x61,0x74,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,
    0x20,0x53,0x56,0x5f,0x54,0x61,0x72,0x67,0x65,0x74,0x30,0x3b,0x0a,0x7d,0x3b,0x0a,
    0x0a,0x23,0x6c,0x69,0x6e,0x65,0x20,0x31,0x30,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,
    0x6c,0x65,0x73,0x2f,0x73,0x68,0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,
    0x2e,0x67,0x6c,0x73,0x6c,0x22,0x0a,0x76,0x6f,0x69,0x64,0x20,0x66,0x72,0x61,0x67,
    0x5f,0x6d,0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x23,0x6c,0x69,0x6e,0x65,0x20,
    0x31,0x30,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,0x61,
    0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,0x0a,
    0x20,0x20,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x7d,0x0a,0x0a,0x53,0x50,0x49,0x52,0x56,
    0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x6d,0x61,
    0x69,0x6e,0x28,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,
    0x6e,0x70,0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,
    0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,
    0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,
    0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,0x6d,0x61,0x69,0x6e,
    0x28,0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,
    0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,
    0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,0x0a,0x20,0x20,0x20,0x20,0x73,0x74,0x61,
    0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x66,0x72,0x61,0x67,0x5f,0x63,
    0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,
    0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x73,0x74,
    0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,0x0a,0x7d,0x0a,0x00,
]
#
#   #include <metal_stdlib>
#   #include <simd/simd.h>
#   
#   using namespace metal;
#   
#   struct main0_out
#   {
#       float4 color [[user(locn0)]];
#       float4 gl_Position [[position]];
#   };
#   
#   struct main0_in
#   {
#       float4 position [[attribute(0)]];
#       float4 color0 [[attribute(1)]];
#   };
#   
#   #line 11 "examples/shaders/quad.glsl"
#   vertex main0_out main0(main0_in in [[stage_in]])
#   {
#       main0_out out = {};
#   #line 11 "examples/shaders/quad.glsl"
#       out.gl_Position = in.position;
#   #line 12 "examples/shaders/quad.glsl"
#       out.color = in.color0;
#       return out;
#   }
#   
#
const vsSourceMetalMacos: array[533, uint8] = [
    0x23'u8,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,0x20,0x3c,0x6d,0x65,0x74,0x61,0x6c,0x5f,
    0x73,0x74,0x64,0x6c,0x69,0x62,0x3e,0x0a,0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,
    0x20,0x3c,0x73,0x69,0x6d,0x64,0x2f,0x73,0x69,0x6d,0x64,0x2e,0x68,0x3e,0x0a,0x0a,
    0x75,0x73,0x69,0x6e,0x67,0x20,0x6e,0x61,0x6d,0x65,0x73,0x70,0x61,0x63,0x65,0x20,
    0x6d,0x65,0x74,0x61,0x6c,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,
    0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x5b,0x5b,0x75,0x73,
    0x65,0x72,0x28,0x6c,0x6f,0x63,0x6e,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,
    0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,
    0x69,0x6f,0x6e,0x20,0x5b,0x5b,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x5d,0x5d,
    0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,
    0x6e,0x30,0x5f,0x69,0x6e,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,
    0x74,0x34,0x20,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x5b,0x5b,0x61,0x74,
    0x74,0x72,0x69,0x62,0x75,0x74,0x65,0x28,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,
    0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x20,
    0x5b,0x5b,0x61,0x74,0x74,0x72,0x69,0x62,0x75,0x74,0x65,0x28,0x31,0x29,0x5d,0x5d,
    0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x23,0x6c,0x69,0x6e,0x65,0x20,0x31,0x31,0x20,0x22,
    0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,0x61,0x64,0x65,0x72,0x73,
    0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,0x0a,0x76,0x65,0x72,0x74,
    0x65,0x78,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6d,0x61,0x69,
    0x6e,0x30,0x28,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x69,0x6e,0x20,0x69,0x6e,0x20,0x5b,
    0x5b,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x5d,0x5d,0x29,0x0a,0x7b,0x0a,0x20,
    0x20,0x20,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6f,0x75,0x74,
    0x20,0x3d,0x20,0x7b,0x7d,0x3b,0x0a,0x23,0x6c,0x69,0x6e,0x65,0x20,0x31,0x31,0x20,
    0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,0x61,0x64,0x65,0x72,
    0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,0x0a,0x20,0x20,0x20,
    0x20,0x6f,0x75,0x74,0x2e,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,
    0x20,0x3d,0x20,0x69,0x6e,0x2e,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,
    0x23,0x6c,0x69,0x6e,0x65,0x20,0x31,0x32,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,
    0x65,0x73,0x2f,0x73,0x68,0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,
    0x67,0x6c,0x73,0x6c,0x22,0x0a,0x20,0x20,0x20,0x20,0x6f,0x75,0x74,0x2e,0x63,0x6f,
    0x6c,0x6f,0x72,0x20,0x3d,0x20,0x69,0x6e,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,
    0x0a,0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x6f,0x75,0x74,0x3b,
    0x0a,0x7d,0x0a,0x0a,0x00,
]
#
#   #include <metal_stdlib>
#   #include <simd/simd.h>
#   
#   using namespace metal;
#   
#   struct main0_out
#   {
#       float4 frag_color [[color(0)]];
#   };
#   
#   struct main0_in
#   {
#       float4 color [[user(locn0)]];
#   };
#   
#   #line 10 "examples/shaders/quad.glsl"
#   fragment main0_out main0(main0_in in [[stage_in]])
#   {
#       main0_out out = {};
#   #line 10 "examples/shaders/quad.glsl"
#       out.frag_color = in.color;
#       return out;
#   }
#   
#
const fsSourceMetalMacos: array[391, uint8] = [
    0x23'u8,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,0x20,0x3c,0x6d,0x65,0x74,0x61,0x6c,0x5f,
    0x73,0x74,0x64,0x6c,0x69,0x62,0x3e,0x0a,0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,
    0x20,0x3c,0x73,0x69,0x6d,0x64,0x2f,0x73,0x69,0x6d,0x64,0x2e,0x68,0x3e,0x0a,0x0a,
    0x75,0x73,0x69,0x6e,0x67,0x20,0x6e,0x61,0x6d,0x65,0x73,0x70,0x61,0x63,0x65,0x20,
    0x6d,0x65,0x74,0x61,0x6c,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,
    0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,
    0x20,0x5b,0x5b,0x63,0x6f,0x6c,0x6f,0x72,0x28,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x7d,
    0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,
    0x69,0x6e,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x5b,0x5b,0x75,0x73,0x65,0x72,0x28,0x6c,0x6f,0x63,
    0x6e,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x23,0x6c,0x69,0x6e,0x65,
    0x20,0x31,0x30,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,0x2f,0x73,0x68,
    0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,0x73,0x6c,0x22,
    0x0a,0x66,0x72,0x61,0x67,0x6d,0x65,0x6e,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,
    0x6f,0x75,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x28,0x6d,0x61,0x69,0x6e,0x30,0x5f,
    0x69,0x6e,0x20,0x69,0x6e,0x20,0x5b,0x5b,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,
    0x5d,0x5d,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,
    0x6f,0x75,0x74,0x20,0x6f,0x75,0x74,0x20,0x3d,0x20,0x7b,0x7d,0x3b,0x0a,0x23,0x6c,
    0x69,0x6e,0x65,0x20,0x31,0x30,0x20,0x22,0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x73,
    0x2f,0x73,0x68,0x61,0x64,0x65,0x72,0x73,0x2f,0x71,0x75,0x61,0x64,0x2e,0x67,0x6c,
    0x73,0x6c,0x22,0x0a,0x20,0x20,0x20,0x20,0x6f,0x75,0x74,0x2e,0x66,0x72,0x61,0x67,
    0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x69,0x6e,0x2e,0x63,0x6f,0x6c,0x6f,
    0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x6f,0x75,
    0x74,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
]
proc quadShaderDesc*(backend: sg.Backend): sg.ShaderDesc =
  case backend:
    of backendGlcore33:
      result.attrs[0].name = "position"
      result.attrs[1].name = "color0"
      result.vs.source = cast[cstring](unsafeAddr(vsSourceGlsl330))
      result.vs.entry = "main"
      result.fs.source = cast[cstring](unsafeAddr(fsSourceGlsl330))
      result.fs.entry = "main"
      result.label = "quadShader"
    of backendD3d11:
      result.attrs[0].semName = "TEXCOORD"
      result.attrs[0].semIndex = 0
      result.attrs[1].semName = "TEXCOORD"
      result.attrs[1].semIndex = 1
      result.vs.source = cast[cstring](unsafeAddr(vsSourceHlsl4))
      result.vs.d3d11Target = "vs_4_0"
      result.vs.entry = "main"
      result.fs.source = cast[cstring](unsafeAddr(fsSourceHlsl4))
      result.fs.d3d11Target = "ps_4_0"
      result.fs.entry = "main"
      result.label = "quadShader"
    of backendMetalMacos:
      result.vs.source = cast[cstring](unsafeAddr(vsSourceMetalMacos))
      result.vs.entry = "main0"
      result.fs.source = cast[cstring](unsafeAddr(fsSourceMetalMacos))
      result.fs.entry = "main0"
      result.label = "quadShader"
    else: discard
