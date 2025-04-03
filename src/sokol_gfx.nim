type Buffer* = object
  id*: uint32

type Image* = object
  id*: uint32

type Sampler* = object
  id*: uint32

type Shader* = object
  id*: uint32

type Pipeline* = object
  id*: uint32

type Attachments* = object
  id*: uint32

type Range* = object
  `addr`*: pointer
  size*: int

const
  invalidId* = 0
  numInflightFrames* = 2
  maxColorAttachments* = 4
  maxUniformblockMembers* = 16
  maxVertexAttributes* = 16
  maxMipmaps* = 16
  maxTexturearrayLayers* = 128
  maxUniformblockBindslots* = 8
  maxVertexbufferBindslots* = 8
  maxImageBindslots* = 16
  maxSamplerBindslots* = 16
  maxStoragebufferBindslots* = 8
  maxImageSamplerPairs* = 16

type Color* = object
  r*: float32
  g*: float32
  b*: float32
  a*: float32

type
  Backend* {.size: sizeof(int32).} = enum
    backendGlcore,
    backendGles3,
    backendD3d11,
    backendMetalIos,
    backendMetalMacos,
    backendMetalSimulator,
    backendWgpu,
    backendDummy,

type
  PixelFormat* {.size: sizeof(int32).} = enum
    pixelFormatDefault,
    pixelFormatNone,
    pixelFormatR8,
    pixelFormatR8sn,
    pixelFormatR8ui,
    pixelFormatR8si,
    pixelFormatR16,
    pixelFormatR16sn,
    pixelFormatR16ui,
    pixelFormatR16si,
    pixelFormatR16f,
    pixelFormatRg8,
    pixelFormatRg8sn,
    pixelFormatRg8ui,
    pixelFormatRg8si,
    pixelFormatR32ui,
    pixelFormatR32si,
    pixelFormatR32f,
    pixelFormatRg16,
    pixelFormatRg16sn,
    pixelFormatRg16ui,
    pixelFormatRg16si,
    pixelFormatRg16f,
    pixelFormatRgba8,
    pixelFormatSrgb8a8,
    pixelFormatRgba8sn,
    pixelFormatRgba8ui,
    pixelFormatRgba8si,
    pixelFormatBgra8,
    pixelFormatRgb10a2,
    pixelFormatRg11b10f,
    pixelFormatRgb9e5,
    pixelFormatRg32ui,
    pixelFormatRg32si,
    pixelFormatRg32f,
    pixelFormatRgba16,
    pixelFormatRgba16sn,
    pixelFormatRgba16ui,
    pixelFormatRgba16si,
    pixelFormatRgba16f,
    pixelFormatRgba32ui,
    pixelFormatRgba32si,
    pixelFormatRgba32f,
    pixelFormatDepth,
    pixelFormatDepthStencil,
    pixelFormatBc1Rgba,
    pixelFormatBc2Rgba,
    pixelFormatBc3Rgba,
    pixelFormatBc3Srgba,
    pixelFormatBc4R,
    pixelFormatBc4Rsn,
    pixelFormatBc5Rg,
    pixelFormatBc5Rgsn,
    pixelFormatBc6hRgbf,
    pixelFormatBc6hRgbuf,
    pixelFormatBc7Rgba,
    pixelFormatBc7Srgba,
    pixelFormatEtc2Rgb8,
    pixelFormatEtc2Srgb8,
    pixelFormatEtc2Rgb8a1,
    pixelFormatEtc2Rgba8,
    pixelFormatEtc2Srgb8a8,
    pixelFormatEacR11,
    pixelFormatEacR11sn,
    pixelFormatEacRg11,
    pixelFormatEacRg11sn,
    pixelFormatAstc4x4Rgba,
    pixelFormatAstc4x4Srgba,

type PixelformatInfo* = object
  sample*: bool
  filter*: bool
  render*: bool
  blend*: bool
  msaa*: bool
  depth*: bool
  compressed*: bool
  bytesPerPixel*: int32

type Features* = object
  originTopLeft*: bool
  imageClampToBorder*: bool
  mrtIndependentBlendState*: bool
  mrtIndependentWriteMask*: bool
  compute*: bool
  msaaImageBindings*: bool

type Limits* = object
  maxImageSize2d*: int32
  maxImageSizeCube*: int32
  maxImageSize3d*: int32
  maxImageSizeArray*: int32
  maxImageArrayLayers*: int32
  maxVertexAttrs*: int32
  glMaxVertexUniformComponents*: int32
  glMaxCombinedTextureImageUnits*: int32

type
  ResourceState* {.size: sizeof(int32).} = enum
    resourceStateInitial,
    resourceStateAlloc,
    resourceStateValid,
    resourceStateFailed,
    resourceStateInvalid,

type
  Usage* {.size: sizeof(int32).} = enum
    usageDefault,
    usageImmutable,
    usageDynamic,
    usageStream,

type
  BufferType* {.size: sizeof(int32).} = enum
    bufferTypeDefault,
    bufferTypeVertexBuffer,
    bufferTypeIndexBuffer,
    bufferTypeStoragebuffer,

type
  IndexType* {.size: sizeof(int32).} = enum
    indexTypeDefault,
    indexTypeNone,
    indexTypeUint16,
    indexTypeUint32,

type
  ImageType* {.size: sizeof(int32).} = enum
    imageTypeDefault,
    imageType2d,
    imageTypeCube,
    imageType3d,
    imageTypeArray,

type
  ImageSampleType* {.size: sizeof(int32).} = enum
    imagesampletypeDefault,
    imagesampletypeFloat,
    imagesampletypeDepth,
    imagesampletypeSint,
    imagesampletypeUint,
    imagesampletypeUnfilterableFloat,

type
  SamplerType* {.size: sizeof(int32).} = enum
    samplerTypeDefault,
    samplerTypeFiltering,
    samplerTypeNonfiltering,
    samplerTypeComparison,

type
  CubeFace* {.size: sizeof(int32).} = enum
    cubeFacePosX,
    cubeFaceNegX,
    cubeFacePosY,
    cubeFaceNegY,
    cubeFacePosZ,
    cubeFaceNegZ,

type
  PrimitiveType* {.size: sizeof(int32).} = enum
    primitiveTypeDefault,
    primitiveTypePoints,
    primitiveTypeLines,
    primitiveTypeLineStrip,
    primitiveTypeTriangles,
    primitiveTypeTriangleStrip,

type
  Filter* {.size: sizeof(int32).} = enum
    filterDefault,
    filterNearest,
    filterLinear,

type
  Wrap* {.size: sizeof(int32).} = enum
    wrapDefault,
    wrapRepeat,
    wrapClampToEdge,
    wrapClampToBorder,
    wrapMirroredRepeat,

type
  BorderColor* {.size: sizeof(int32).} = enum
    borderColorDefault,
    borderColorTransparentBlack,
    borderColorOpaqueBlack,
    borderColorOpaqueWhite,

type
  VertexFormat* {.size: sizeof(int32).} = enum
    vertexFormatInvalid,
    vertexFormatFloat,
    vertexFormatFloat2,
    vertexFormatFloat3,
    vertexFormatFloat4,
    vertexFormatInt,
    vertexFormatInt2,
    vertexFormatInt3,
    vertexFormatInt4,
    vertexFormatUint,
    vertexFormatUint2,
    vertexFormatUint3,
    vertexFormatUint4,
    vertexFormatByte4,
    vertexFormatByte4n,
    vertexFormatUbyte4,
    vertexFormatUbyte4n,
    vertexFormatShort2,
    vertexFormatShort2n,
    vertexFormatUshort2,
    vertexFormatUshort2n,
    vertexFormatShort4,
    vertexFormatShort4n,
    vertexFormatUshort4,
    vertexFormatUshort4n,
    vertexFormatUint10N2,
    vertexFormatHalf2,
    vertexFormatHalf4,

type
  VertexStep* {.size: sizeof(int32).} = enum
    vertexStepDefault,
    vertexStepPerVertex,
    vertexStepPerInstance,

type
  UniformType* {.size: sizeof(int32).} = enum
    uniformTypeInvalid,
    uniformTypeFloat,
    uniformTypeFloat2,
    uniformTypeFloat3,
    uniformTypeFloat4,
    uniformTypeInt,
    uniformTypeInt2,
    uniformTypeInt3,
    uniformTypeInt4,
    uniformTypeMat4,

type
  UniformLayout* {.size: sizeof(int32).} = enum
    uniformLayoutDefault,
    uniformLayoutNative,
    uniformLayoutStd140,

type
  CullMode* {.size: sizeof(int32).} = enum
    cullModeDefault,
    cullModeNone,
    cullModeFront,
    cullModeBack,

type
  FaceWinding* {.size: sizeof(int32).} = enum
    faceWindingDefault,
    faceWindingCcw,
    faceWindingCw,

type
  CompareFunc* {.size: sizeof(int32).} = enum
    compareFuncDefault,
    compareFuncNever,
    compareFuncLess,
    compareFuncEqual,
    compareFuncLessEqual,
    compareFuncGreater,
    compareFuncNotEqual,
    compareFuncGreaterEqual,
    compareFuncAlways,

type
  StencilOp* {.size: sizeof(int32).} = enum
    stencilOpDefault,
    stencilOpKeep,
    stencilOpZero,
    stencilOpReplace,
    stencilOpIncrClamp,
    stencilOpDecrClamp,
    stencilOpInvert,
    stencilOpIncrWrap,
    stencilOpDecrWrap,

type
  BlendFactor* {.size: sizeof(int32).} = enum
    blendFactorDefault,
    blendFactorZero,
    blendFactorOne,
    blendFactorSrcColor,
    blendFactorOneMinusSrcColor,
    blendFactorSrcAlpha,
    blendFactorOneMinusSrcAlpha,
    blendFactorDstColor,
    blendFactorOneMinusDstColor,
    blendFactorDstAlpha,
    blendFactorOneMinusDstAlpha,
    blendFactorSrcAlphaSaturated,
    blendFactorBlendColor,
    blendFactorOneMinusBlendColor,
    blendFactorBlendAlpha,
    blendFactorOneMinusBlendAlpha,

type
  BlendOp* {.size: sizeof(int32).} = enum
    blendOpDefault,
    blendOpAdd,
    blendOpSubtract,
    blendOpReverseSubtract,
    blendOpMin,
    blendOpMax,

type
  ColorMask* {.size: sizeof(int32).} = enum
    colorMaskDefault = 0,
    colorMaskR = 1,
    colorMaskG = 2,
    colorMaskRg = 3,
    colorMaskB = 4,
    colorMaskRb = 5,
    colorMaskGb = 6,
    colorMaskRgb = 7,
    colorMaskA = 8,
    colorMaskRa = 9,
    colorMaskGa = 10,
    colorMaskRga = 11,
    colorMaskBa = 12,
    colorMaskRba = 13,
    colorMaskGba = 14,
    colorMaskRgba = 15,
    colorMaskNone = 16,

type
  LoadAction* {.size: sizeof(int32).} = enum
    loadActionDefault,
    loadActionClear,
    loadActionLoad,
    loadActionDontcare,

type
  StoreAction* {.size: sizeof(int32).} = enum
    storeActionDefault,
    storeActionStore,
    storeActionDontcare,

type ColorAttachmentAction* = object
  loadAction*: LoadAction
  storeAction*: StoreAction
  clearValue*: Color

type DepthAttachmentAction* = object
  loadAction*: LoadAction
  storeAction*: StoreAction
  clearValue*: float32

type StencilAttachmentAction* = object
  loadAction*: LoadAction
  storeAction*: StoreAction
  clearValue*: uint8

type PassAction* = object
  colors*: array[4, ColorAttachmentAction]
  depth*: DepthAttachmentAction
  stencil*: StencilAttachmentAction

converter toPassActioncolors*[N: static[int]](items: array[N,
    ColorAttachmentAction]): array[4, ColorAttachmentAction] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

type MetalSwapchain* = object
  currentDrawable*: pointer
  depthStencilTexture*: pointer
  msaaColorTexture*: pointer

type D3d11Swapchain* = object
  renderView*: pointer
  resolveView*: pointer
  depthStencilView*: pointer

type WgpuSwapchain* = object
  renderView*: pointer
  resolveView*: pointer
  depthStencilView*: pointer

type GlSwapchain* = object
  framebuffer*: uint32

type Swapchain* = object
  width*: int32
  height*: int32
  sampleCount*: int32
  colorFormat*: PixelFormat
  depthFormat*: PixelFormat
  metal*: MetalSwapchain
  d3d11*: D3d11Swapchain
  wgpu*: WgpuSwapchain
  gl*: GlSwapchain

type Pass* = object
  startCanary: uint32
  compute*: bool
  action*: PassAction
  attachments*: Attachments
  swapchain*: Swapchain
  label*: cstring
  endCanary: uint32

type Bindings* = object
  startCanary: uint32
  vertexBuffers*: array[8, Buffer]
  vertexBufferOffsets*: array[8, int32]
  indexBuffer*: Buffer
  indexBufferOffset*: int32
  images*: array[16, Image]
  samplers*: array[16, Sampler]
  storageBuffers*: array[8, Buffer]
  endCanary: uint32

converter toBindingsvertexBuffers*[N: static[int]](items: array[N,
    Buffer]): array[8, Buffer] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

converter toBindingsvertexBufferOffsets*[N: static[int]](items: array[N,
    int32]): array[8, int32] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

converter toBindingsimages*[N: static[int]](items: array[N, Image]): array[16, Image] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

converter toBindingssamplers*[N: static[int]](items: array[N, Sampler]): array[
    16, Sampler] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

converter toBindingsstorageBuffers*[N: static[int]](items: array[N,
    Buffer]): array[8, Buffer] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

type BufferDesc* = object
  startCanary: uint32
  size*: int
  `type`*: BufferType
  usage*: Usage
  data*: Range
  label*: cstring
  glBuffers*: array[2, uint32]
  mtlBuffers*: array[2, pointer]
  d3d11Buffer*: pointer
  wgpuBuffer*: pointer
  endCanary: uint32

converter toBufferDescglBuffers*[N: static[int]](items: array[N,
    uint32]): array[2, uint32] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

converter toBufferDescmtlBuffers*[N: static[int]](items: array[N,
    pointer]): array[2, pointer] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type ImageData* = object
  subimage*: array[6, array[16, Range]]

converter toImageDatasubimage*[Y: static[int], X: static[int]](items: array[Y,
    array[X, Range]]): array[6, array[16, Range]] =
  static: assert(X <= 16)
  static: assert(Y <= 6)
  for indexY, itemY in items.pairs:
    for indexX, itemX in itemY.pairs:
      result[indexY][indexX] = itemX

type ImageDesc* = object
  startCanary: uint32
  `type`*: ImageType
  renderTarget*: bool
  width*: int32
  height*: int32
  numSlices*: int32
  numMipmaps*: int32
  usage*: Usage
  pixelFormat*: PixelFormat
  sampleCount*: int32
  data*: ImageData
  label*: cstring
  glTextures*: array[2, uint32]
  glTextureTarget*: uint32
  mtlTextures*: array[2, pointer]
  d3d11Texture*: pointer
  d3d11ShaderResourceView*: pointer
  wgpuTexture*: pointer
  wgpuTextureView*: pointer
  endCanary: uint32

converter toImageDescglTextures*[N: static[int]](items: array[N,
    uint32]): array[2, uint32] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

converter toImageDescmtlTextures*[N: static[int]](items: array[N,
    pointer]): array[2, pointer] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type SamplerDesc* = object
  startCanary: uint32
  minFilter*: Filter
  magFilter*: Filter
  mipmapFilter*: Filter
  wrapU*: Wrap
  wrapV*: Wrap
  wrapW*: Wrap
  minLod*: float32
  maxLod*: float32
  borderColor*: BorderColor
  compare*: CompareFunc
  maxAnisotropy*: uint32
  label*: cstring
  glSampler*: uint32
  mtlSampler*: pointer
  d3d11Sampler*: pointer
  wgpuSampler*: pointer
  endCanary: uint32

type
  ShaderStage* {.size: sizeof(int32).} = enum
    shaderStageNone,
    shaderStageVertex,
    shaderStageFragment,
    shaderStageCompute,

type ShaderFunction* = object
  source*: cstring
  bytecode*: Range
  entry*: cstring
  d3d11Target*: cstring

type
  ShaderAttrBaseType* {.size: sizeof(int32).} = enum
    shaderattrbasetypeUndefined,
    shaderattrbasetypeFloat,
    shaderattrbasetypeSint,
    shaderattrbasetypeUint,

type ShaderVertexAttr* = object
  baseType*: ShaderAttrBaseType
  glslName*: cstring
  hlslSemName*: cstring
  hlslSemIndex*: uint8

type GlslShaderUniform* = object
  `type`*: UniformType
  arrayCount*: uint16
  glslName*: cstring

type ShaderUniformBlock* = object
  stage*: ShaderStage
  size*: uint32
  hlslRegisterBN*: uint8
  mslBufferN*: uint8
  wgslGroup0BindingN*: uint8
  layout*: UniformLayout
  glslUniforms*: array[16, GlslShaderUniform]

converter toShaderUniformBlockglslUniforms*[N: static[int]](items: array[N,
    GlslShaderUniform]): array[16, GlslShaderUniform] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

type ShaderImage* = object
  stage*: ShaderStage
  imageType*: ImageType
  sampleType*: ImageSampleType
  multisampled*: bool
  hlslRegisterTN*: uint8
  mslTextureN*: uint8
  wgslGroup1BindingN*: uint8

type ShaderSampler* = object
  stage*: ShaderStage
  samplerType*: SamplerType
  hlslRegisterSN*: uint8
  mslSamplerN*: uint8
  wgslGroup1BindingN*: uint8

type ShaderStorageBuffer* = object
  stage*: ShaderStage
  readonly*: bool
  hlslRegisterTN*: uint8
  hlslRegisterUN*: uint8
  mslBufferN*: uint8
  wgslGroup1BindingN*: uint8
  glslBindingN*: uint8

type ShaderImageSamplerPair* = object
  stage*: ShaderStage
  imageSlot*: uint8
  samplerSlot*: uint8
  glslName*: cstring

type MtlShaderThreadsPerThreadgroup* = object
  x*: int32
  y*: int32
  z*: int32

type ShaderDesc* = object
  startCanary: uint32
  vertexFunc*: ShaderFunction
  fragmentFunc*: ShaderFunction
  computeFunc*: ShaderFunction
  attrs*: array[16, ShaderVertexAttr]
  uniformBlocks*: array[8, ShaderUniformBlock]
  storageBuffers*: array[8, ShaderStorageBuffer]
  images*: array[16, ShaderImage]
  samplers*: array[16, ShaderSampler]
  imageSamplerPairs*: array[16, ShaderImageSamplerPair]
  mtlThreadsPerThreadgroup*: MtlShaderThreadsPerThreadgroup
  label*: cstring
  endCanary: uint32

converter toShaderDescattrs*[N: static[int]](items: array[N,
    ShaderVertexAttr]): array[16, ShaderVertexAttr] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

converter toShaderDescuniformBlocks*[N: static[int]](items: array[N,
    ShaderUniformBlock]): array[8, ShaderUniformBlock] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

converter toShaderDescstorageBuffers*[N: static[int]](items: array[N,
    ShaderStorageBuffer]): array[8, ShaderStorageBuffer] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

converter toShaderDescimages*[N: static[int]](items: array[N,
    ShaderImage]): array[16, ShaderImage] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

converter toShaderDescsamplers*[N: static[int]](items: array[N,
    ShaderSampler]): array[16, ShaderSampler] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

converter toShaderDescimageSamplerPairs*[N: static[int]](items: array[N,
    ShaderImageSamplerPair]): array[16, ShaderImageSamplerPair] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

type VertexBufferLayoutState* = object
  stride*: int32
  stepFunc*: VertexStep
  stepRate*: int32

type VertexAttrState* = object
  bufferIndex*: int32
  offset*: int32
  format*: VertexFormat

type VertexLayoutState* = object
  buffers*: array[8, VertexBufferLayoutState]
  attrs*: array[16, VertexAttrState]

converter toVertexLayoutStatebuffers*[N: static[int]](items: array[N,
    VertexBufferLayoutState]): array[8, VertexBufferLayoutState] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

converter toVertexLayoutStateattrs*[N: static[int]](items: array[N,
    VertexAttrState]): array[16, VertexAttrState] =
  static: assert(N <= 16)
  for index, item in items.pairs: result[index] = item

type StencilFaceState* = object
  compare*: CompareFunc
  failOp*: StencilOp
  depthFailOp*: StencilOp
  passOp*: StencilOp

type StencilState* = object
  enabled*: bool
  front*: StencilFaceState
  back*: StencilFaceState
  readMask*: uint8
  writeMask*: uint8
  `ref`*: uint8

type DepthState* = object
  pixelFormat*: PixelFormat
  compare*: CompareFunc
  writeEnabled*: bool
  bias*: float32
  biasSlopeScale*: float32
  biasClamp*: float32

type BlendState* = object
  enabled*: bool
  srcFactorRgb*: BlendFactor
  dstFactorRgb*: BlendFactor
  opRgb*: BlendOp
  srcFactorAlpha*: BlendFactor
  dstFactorAlpha*: BlendFactor
  opAlpha*: BlendOp

type ColorTargetState* = object
  pixelFormat*: PixelFormat
  writeMask*: ColorMask
  blend*: BlendState

type PipelineDesc* = object
  startCanary: uint32
  compute*: bool
  shader*: Shader
  layout*: VertexLayoutState
  depth*: DepthState
  stencil*: StencilState
  colorCount*: int32
  colors*: array[4, ColorTargetState]
  primitiveType*: PrimitiveType
  indexType*: IndexType
  cullMode*: CullMode
  faceWinding*: FaceWinding
  sampleCount*: int32
  blendColor*: Color
  alphaToCoverageEnabled*: bool
  label*: cstring
  endCanary: uint32

converter toPipelineDesccolors*[N: static[int]](items: array[N,
    ColorTargetState]): array[4, ColorTargetState] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

type AttachmentDesc* = object
  image*: Image
  mipLevel*: int32
  slice*: int32

type AttachmentsDesc* = object
  startCanary: uint32
  colors*: array[4, AttachmentDesc]
  resolves*: array[4, AttachmentDesc]
  depthStencil*: AttachmentDesc
  label*: cstring
  endCanary: uint32

converter toAttachmentsDesccolors*[N: static[int]](items: array[N,
    AttachmentDesc]): array[4, AttachmentDesc] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

converter toAttachmentsDescresolves*[N: static[int]](items: array[N,
    AttachmentDesc]): array[4, AttachmentDesc] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

type TraceHooks* = object
  userData*: pointer
  resetStateCache*: proc(a1: pointer) {.cdecl.}
  makeBuffer*: proc(a1: ptr BufferDesc, a2: Buffer, a3: pointer) {.cdecl.}
  makeImage*: proc(a1: ptr ImageDesc, a2: Image, a3: pointer) {.cdecl.}
  makeSampler*: proc(a1: ptr SamplerDesc, a2: Sampler, a3: pointer) {.cdecl.}
  makeShader*: proc(a1: ptr ShaderDesc, a2: Shader, a3: pointer) {.cdecl.}
  makePipeline*: proc(a1: ptr PipelineDesc, a2: Pipeline, a3: pointer) {.cdecl.}
  makeAttachments*: proc(a1: ptr AttachmentsDesc, a2: Attachments,
      a3: pointer) {.cdecl.}
  destroyBuffer*: proc(a1: Buffer, a2: pointer) {.cdecl.}
  destroyImage*: proc(a1: Image, a2: pointer) {.cdecl.}
  destroySampler*: proc(a1: Sampler, a2: pointer) {.cdecl.}
  destroyShader*: proc(a1: Shader, a2: pointer) {.cdecl.}
  destroyPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  destroyAttachments*: proc(a1: Attachments, a2: pointer) {.cdecl.}
  updateBuffer*: proc(a1: Buffer, a2: ptr Range, a3: pointer) {.cdecl.}
  updateImage*: proc(a1: Image, a2: ptr ImageData, a3: pointer) {.cdecl.}
  appendBuffer*: proc(a1: Buffer, a2: ptr Range, a3: int32,
      a4: pointer) {.cdecl.}
  beginPass*: proc(a1: ptr Pass, a2: pointer) {.cdecl.}
  applyViewport*: proc(a1: int32, a2: int32, a3: int32, a4: int32, a5: bool,
      a6: pointer) {.cdecl.}
  applyScissorRect*: proc(a1: int32, a2: int32, a3: int32, a4: int32, a5: bool,
      a6: pointer) {.cdecl.}
  applyPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  applyBindings*: proc(a1: ptr Bindings, a2: pointer) {.cdecl.}
  applyUniforms*: proc(a1: int32, a2: ptr Range, a3: pointer) {.cdecl.}
  draw*: proc(a1: int32, a2: int32, a3: int32, a4: pointer) {.cdecl.}
  dispatch*: proc(a1: int32, a2: int32, a3: int32, a4: pointer) {.cdecl.}
  endPass*: proc(a1: pointer) {.cdecl.}
  commit*: proc(a1: pointer) {.cdecl.}
  allocBuffer*: proc(a1: Buffer, a2: pointer) {.cdecl.}
  allocImage*: proc(a1: Image, a2: pointer) {.cdecl.}
  allocSampler*: proc(a1: Sampler, a2: pointer) {.cdecl.}
  allocShader*: proc(a1: Shader, a2: pointer) {.cdecl.}
  allocPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  allocAttachments*: proc(a1: Attachments, a2: pointer) {.cdecl.}
  deallocBuffer*: proc(a1: Buffer, a2: pointer) {.cdecl.}
  deallocImage*: proc(a1: Image, a2: pointer) {.cdecl.}
  deallocSampler*: proc(a1: Sampler, a2: pointer) {.cdecl.}
  deallocShader*: proc(a1: Shader, a2: pointer) {.cdecl.}
  deallocPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  deallocAttachments*: proc(a1: Attachments, a2: pointer) {.cdecl.}
  initBuffer*: proc(a1: Buffer, a2: ptr BufferDesc, a3: pointer) {.cdecl.}
  initImage*: proc(a1: Image, a2: ptr ImageDesc, a3: pointer) {.cdecl.}
  initSampler*: proc(a1: Sampler, a2: ptr SamplerDesc, a3: pointer) {.cdecl.}
  initShader*: proc(a1: Shader, a2: ptr ShaderDesc, a3: pointer) {.cdecl.}
  initPipeline*: proc(a1: Pipeline, a2: ptr PipelineDesc, a3: pointer) {.cdecl.}
  initAttachments*: proc(a1: Attachments, a2: ptr AttachmentsDesc,
      a3: pointer) {.cdecl.}
  uninitBuffer*: proc(a1: Buffer, a2: pointer) {.cdecl.}
  uninitImage*: proc(a1: Image, a2: pointer) {.cdecl.}
  uninitSampler*: proc(a1: Sampler, a2: pointer) {.cdecl.}
  uninitShader*: proc(a1: Shader, a2: pointer) {.cdecl.}
  uninitPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  uninitAttachments*: proc(a1: Attachments, a2: pointer) {.cdecl.}
  failBuffer*: proc(a1: Buffer, a2: pointer) {.cdecl.}
  failImage*: proc(a1: Image, a2: pointer) {.cdecl.}
  failSampler*: proc(a1: Sampler, a2: pointer) {.cdecl.}
  failShader*: proc(a1: Shader, a2: pointer) {.cdecl.}
  failPipeline*: proc(a1: Pipeline, a2: pointer) {.cdecl.}
  failAttachments*: proc(a1: Attachments, a2: pointer) {.cdecl.}
  pushDebugGroup*: proc(a1: cstring, a2: pointer) {.cdecl.}
  popDebugGroup*: proc(a1: pointer) {.cdecl.}

type SlotInfo* = object
  state*: ResourceState
  resId*: uint32

type BufferInfo* = object
  slot*: SlotInfo
  updateFrameIndex*: uint32
  appendFrameIndex*: uint32
  appendPos*: int32
  appendOverflow*: bool
  numSlots*: int32
  activeSlot*: int32

type ImageInfo* = object
  slot*: SlotInfo
  updFrameIndex*: uint32
  numSlots*: int32
  activeSlot*: int32

type SamplerInfo* = object
  slot*: SlotInfo

type ShaderInfo* = object
  slot*: SlotInfo

type PipelineInfo* = object
  slot*: SlotInfo

type AttachmentsInfo* = object
  slot*: SlotInfo

type FrameStatsGl* = object
  numBindBuffer*: uint32
  numActiveTexture*: uint32
  numBindTexture*: uint32
  numBindSampler*: uint32
  numUseProgram*: uint32
  numRenderState*: uint32
  numVertexAttribPointer*: uint32
  numVertexAttribDivisor*: uint32
  numEnableVertexAttribArray*: uint32
  numDisableVertexAttribArray*: uint32
  numUniform*: uint32
  numMemoryBarriers*: uint32

type FrameStatsD3d11Pass* = object
  numOmSetRenderTargets*: uint32
  numClearRenderTargetView*: uint32
  numClearDepthStencilView*: uint32
  numResolveSubresource*: uint32

type FrameStatsD3d11Pipeline* = object
  numRsSetState*: uint32
  numOmSetDepthStencilState*: uint32
  numOmSetBlendState*: uint32
  numIaSetPrimitiveTopology*: uint32
  numIaSetInputLayout*: uint32
  numVsSetShader*: uint32
  numVsSetConstantBuffers*: uint32
  numPsSetShader*: uint32
  numPsSetConstantBuffers*: uint32
  numCsSetShader*: uint32
  numCsSetConstantBuffers*: uint32

type FrameStatsD3d11Bindings* = object
  numIaSetVertexBuffers*: uint32
  numIaSetIndexBuffer*: uint32
  numVsSetShaderResources*: uint32
  numVsSetSamplers*: uint32
  numPsSetShaderResources*: uint32
  numPsSetSamplers*: uint32
  numCsSetShaderResources*: uint32
  numCsSetSamplers*: uint32
  numCsSetUnorderedAccessViews*: uint32

type FrameStatsD3d11Uniforms* = object
  numUpdateSubresource*: uint32

type FrameStatsD3d11Draw* = object
  numDrawIndexedInstanced*: uint32
  numDrawIndexed*: uint32
  numDrawInstanced*: uint32
  numDraw*: uint32

type FrameStatsD3d11* = object
  pass*: FrameStatsD3d11Pass
  pipeline*: FrameStatsD3d11Pipeline
  bindings*: FrameStatsD3d11Bindings
  uniforms*: FrameStatsD3d11Uniforms
  draw*: FrameStatsD3d11Draw
  numMap*: uint32
  numUnmap*: uint32

type FrameStatsMetalIdpool* = object
  numAdded*: uint32
  numReleased*: uint32
  numGarbageCollected*: uint32

type FrameStatsMetalPipeline* = object
  numSetBlendColor*: uint32
  numSetCullMode*: uint32
  numSetFrontFacingWinding*: uint32
  numSetStencilReferenceValue*: uint32
  numSetDepthBias*: uint32
  numSetRenderPipelineState*: uint32
  numSetDepthStencilState*: uint32

type FrameStatsMetalBindings* = object
  numSetVertexBuffer*: uint32
  numSetVertexTexture*: uint32
  numSetVertexSamplerState*: uint32
  numSetFragmentBuffer*: uint32
  numSetFragmentTexture*: uint32
  numSetFragmentSamplerState*: uint32
  numSetComputeBuffer*: uint32
  numSetComputeTexture*: uint32
  numSetComputeSamplerState*: uint32

type FrameStatsMetalUniforms* = object
  numSetVertexBufferOffset*: uint32
  numSetFragmentBufferOffset*: uint32
  numSetComputeBufferOffset*: uint32

type FrameStatsMetal* = object
  idpool*: FrameStatsMetalIdpool
  pipeline*: FrameStatsMetalPipeline
  bindings*: FrameStatsMetalBindings
  uniforms*: FrameStatsMetalUniforms

type FrameStatsWgpuUniforms* = object
  numSetBindgroup*: uint32
  sizeWriteBuffer*: uint32

type FrameStatsWgpuBindings* = object
  numSetVertexBuffer*: uint32
  numSkipRedundantVertexBuffer*: uint32
  numSetIndexBuffer*: uint32
  numSkipRedundantIndexBuffer*: uint32
  numCreateBindgroup*: uint32
  numDiscardBindgroup*: uint32
  numSetBindgroup*: uint32
  numSkipRedundantBindgroup*: uint32
  numBindgroupCacheHits*: uint32
  numBindgroupCacheMisses*: uint32
  numBindgroupCacheCollisions*: uint32
  numBindgroupCacheInvalidates*: uint32
  numBindgroupCacheHashVsKeyMismatch*: uint32

type FrameStatsWgpu* = object
  uniforms*: FrameStatsWgpuUniforms
  bindings*: FrameStatsWgpuBindings

type FrameStats* = object
  frameIndex*: uint32
  numPasses*: uint32
  numApplyViewport*: uint32
  numApplyScissorRect*: uint32
  numApplyPipeline*: uint32
  numApplyBindings*: uint32
  numApplyUniforms*: uint32
  numDraw*: uint32
  numDispatch*: uint32
  numUpdateBuffer*: uint32
  numAppendBuffer*: uint32
  numUpdateImage*: uint32
  sizeApplyUniforms*: uint32
  sizeUpdateBuffer*: uint32
  sizeAppendBuffer*: uint32
  sizeUpdateImage*: uint32
  gl*: FrameStatsGl
  d3d11*: FrameStatsD3d11
  metal*: FrameStatsMetal
  wgpu*: FrameStatsWgpu

type
  LogItem* {.size: sizeof(int32).} = enum
    logitemOk,
    logitemMallocFailed,
    logitemGlTextureFormatNotSupported,
    logitemGl3dTexturesNotSupported,
    logitemGlArrayTexturesNotSupported,
    logitemGlStoragebufferGlslBindingOutOfRange,
    logitemGlShaderCompilationFailed,
    logitemGlShaderLinkingFailed,
    logitemGlVertexAttributeNotFoundInShader,
    logitemGlUniformblockNameNotFoundInShader,
    logitemGlImageSamplerNameNotFoundInShader,
    logitemGlFramebufferStatusUndefined,
    logitemGlFramebufferStatusIncompleteAttachment,
    logitemGlFramebufferStatusIncompleteMissingAttachment,
    logitemGlFramebufferStatusUnsupported,
    logitemGlFramebufferStatusIncompleteMultisample,
    logitemGlFramebufferStatusUnknown,
    logitemD3d11CreateBufferFailed,
    logitemD3d11CreateBufferSrvFailed,
    logitemD3d11CreateBufferUavFailed,
    logitemD3d11CreateDepthTextureUnsupportedPixelFormat,
    logitemD3d11CreateDepthTextureFailed,
    logitemD3d11Create2dTextureUnsupportedPixelFormat,
    logitemD3d11Create2dTextureFailed,
    logitemD3d11Create2dSrvFailed,
    logitemD3d11Create3dTextureUnsupportedPixelFormat,
    logitemD3d11Create3dTextureFailed,
    logitemD3d11Create3dSrvFailed,
    logitemD3d11CreateMsaaTextureFailed,
    logitemD3d11CreateSamplerStateFailed,
    logitemD3d11UniformblockHlslRegisterBOutOfRange,
    logitemD3d11StoragebufferHlslRegisterTOutOfRange,
    logitemD3d11StoragebufferHlslRegisterUOutOfRange,
    logitemD3d11ImageHlslRegisterTOutOfRange,
    logitemD3d11SamplerHlslRegisterSOutOfRange,
    logitemD3d11LoadD3dcompiler47DllFailed,
    logitemD3d11ShaderCompilationFailed,
    logitemD3d11ShaderCompilationOutput,
    logitemD3d11CreateConstantBufferFailed,
    logitemD3d11CreateInputLayoutFailed,
    logitemD3d11CreateRasterizerStateFailed,
    logitemD3d11CreateDepthStencilStateFailed,
    logitemD3d11CreateBlendStateFailed,
    logitemD3d11CreateRtvFailed,
    logitemD3d11CreateDsvFailed,
    logitemD3d11MapForUpdateBufferFailed,
    logitemD3d11MapForAppendBufferFailed,
    logitemD3d11MapForUpdateImageFailed,
    logitemMetalCreateBufferFailed,
    logitemMetalTextureFormatNotSupported,
    logitemMetalCreateTextureFailed,
    logitemMetalCreateSamplerFailed,
    logitemMetalShaderCompilationFailed,
    logitemMetalShaderCreationFailed,
    logitemMetalShaderCompilationOutput,
    logitemMetalShaderEntryNotFound,
    logitemMetalUniformblockMslBufferSlotOutOfRange,
    logitemMetalStoragebufferMslBufferSlotOutOfRange,
    logitemMetalImageMslTextureSlotOutOfRange,
    logitemMetalSamplerMslSamplerSlotOutOfRange,
    logitemMetalCreateCpsFailed,
    logitemMetalCreateCpsOutput,
    logitemMetalCreateRpsFailed,
    logitemMetalCreateRpsOutput,
    logitemMetalCreateDssFailed,
    logitemWgpuBindgroupsPoolExhausted,
    logitemWgpuBindgroupscacheSizeGreaterOne,
    logitemWgpuBindgroupscacheSizePow2,
    logitemWgpuCreatebindgroupFailed,
    logitemWgpuCreateBufferFailed,
    logitemWgpuCreateTextureFailed,
    logitemWgpuCreateTextureViewFailed,
    logitemWgpuCreateSamplerFailed,
    logitemWgpuCreateShaderModuleFailed,
    logitemWgpuShaderCreateBindgroupLayoutFailed,
    logitemWgpuUniformblockWgslGroup0BindingOutOfRange,
    logitemWgpuStoragebufferWgslGroup1BindingOutOfRange,
    logitemWgpuImageWgslGroup1BindingOutOfRange,
    logitemWgpuSamplerWgslGroup1BindingOutOfRange,
    logitemWgpuCreatePipelineLayoutFailed,
    logitemWgpuCreateRenderPipelineFailed,
    logitemWgpuCreateComputePipelineFailed,
    logitemWgpuAttachmentsCreateTextureViewFailed,
    logitemIdenticalCommitListener,
    logitemCommitListenerArrayFull,
    logitemTraceHooksNotEnabled,
    logitemDeallocBufferInvalidState,
    logitemDeallocImageInvalidState,
    logitemDeallocSamplerInvalidState,
    logitemDeallocShaderInvalidState,
    logitemDeallocPipelineInvalidState,
    logitemDeallocAttachmentsInvalidState,
    logitemInitBufferInvalidState,
    logitemInitImageInvalidState,
    logitemInitSamplerInvalidState,
    logitemInitShaderInvalidState,
    logitemInitPipelineInvalidState,
    logitemInitAttachmentsInvalidState,
    logitemUninitBufferInvalidState,
    logitemUninitImageInvalidState,
    logitemUninitSamplerInvalidState,
    logitemUninitShaderInvalidState,
    logitemUninitPipelineInvalidState,
    logitemUninitAttachmentsInvalidState,
    logitemFailBufferInvalidState,
    logitemFailImageInvalidState,
    logitemFailSamplerInvalidState,
    logitemFailShaderInvalidState,
    logitemFailPipelineInvalidState,
    logitemFailAttachmentsInvalidState,
    logitemBufferPoolExhausted,
    logitemImagePoolExhausted,
    logitemSamplerPoolExhausted,
    logitemShaderPoolExhausted,
    logitemPipelinePoolExhausted,
    logitemPassPoolExhausted,
    logitemBeginpassAttachmentInvalid,
    logitemApplyBindingsStorageBufferTrackerExhausted,
    logitemDrawWithoutBindings,
    logitemValidateBufferdescCanary,
    logitemValidateBufferdescExpectNonzeroSize,
    logitemValidateBufferdescExpectMatchingDataSize,
    logitemValidateBufferdescExpectZeroDataSize,
    logitemValidateBufferdescExpectNoData,
    logitemValidateBufferdescStoragebufferSupported,
    logitemValidateBufferdescStoragebufferSizeMultiple4,
    logitemValidateImagedataNodata,
    logitemValidateImagedataDataSize,
    logitemValidateImagedescCanary,
    logitemValidateImagedescWidth,
    logitemValidateImagedescHeight,
    logitemValidateImagedescRtPixelformat,
    logitemValidateImagedescNonrtPixelformat,
    logitemValidateImagedescMsaaButNoRt,
    logitemValidateImagedescNoMsaaRtSupport,
    logitemValidateImagedescMsaaNumMipmaps,
    logitemValidateImagedescMsaa3dImage,
    logitemValidateImagedescMsaaCubeImage,
    logitemValidateImagedescDepth3dImage,
    logitemValidateImagedescRtImmutable,
    logitemValidateImagedescRtNoData,
    logitemValidateImagedescInjectedNoData,
    logitemValidateImagedescDynamicNoData,
    logitemValidateImagedescCompressedImmutable,
    logitemValidateSamplerdescCanary,
    logitemValidateSamplerdescAnistropicRequiresLinearFiltering,
    logitemValidateShaderdescCanary,
    logitemValidateShaderdescVertexSource,
    logitemValidateShaderdescFragmentSource,
    logitemValidateShaderdescComputeSource,
    logitemValidateShaderdescVertexSourceOrBytecode,
    logitemValidateShaderdescFragmentSourceOrBytecode,
    logitemValidateShaderdescComputeSourceOrBytecode,
    logitemValidateShaderdescInvalidShaderCombo,
    logitemValidateShaderdescNoBytecodeSize,
    logitemValidateShaderdescMetalThreadsPerThreadgroup,
    logitemValidateShaderdescUniformblockNoContMembers,
    logitemValidateShaderdescUniformblockSizeIsZero,
    logitemValidateShaderdescUniformblockMetalBufferSlotOutOfRange,
    logitemValidateShaderdescUniformblockMetalBufferSlotCollision,
    logitemValidateShaderdescUniformblockHlslRegisterBOutOfRange,
    logitemValidateShaderdescUniformblockHlslRegisterBCollision,
    logitemValidateShaderdescUniformblockWgslGroup0BindingOutOfRange,
    logitemValidateShaderdescUniformblockWgslGroup0BindingCollision,
    logitemValidateShaderdescUniformblockNoMembers,
    logitemValidateShaderdescUniformblockUniformGlslName,
    logitemValidateShaderdescUniformblockSizeMismatch,
    logitemValidateShaderdescUniformblockArrayCount,
    logitemValidateShaderdescUniformblockStd140ArrayType,
    logitemValidateShaderdescStoragebufferMetalBufferSlotOutOfRange,
    logitemValidateShaderdescStoragebufferMetalBufferSlotCollision,
    logitemValidateShaderdescStoragebufferHlslRegisterTOutOfRange,
    logitemValidateShaderdescStoragebufferHlslRegisterTCollision,
    logitemValidateShaderdescStoragebufferHlslRegisterUOutOfRange,
    logitemValidateShaderdescStoragebufferHlslRegisterUCollision,
    logitemValidateShaderdescStoragebufferGlslBindingOutOfRange,
    logitemValidateShaderdescStoragebufferGlslBindingCollision,
    logitemValidateShaderdescStoragebufferWgslGroup1BindingOutOfRange,
    logitemValidateShaderdescStoragebufferWgslGroup1BindingCollision,
    logitemValidateShaderdescImageMetalTextureSlotOutOfRange,
    logitemValidateShaderdescImageMetalTextureSlotCollision,
    logitemValidateShaderdescImageHlslRegisterTOutOfRange,
    logitemValidateShaderdescImageHlslRegisterTCollision,
    logitemValidateShaderdescImageWgslGroup1BindingOutOfRange,
    logitemValidateShaderdescImageWgslGroup1BindingCollision,
    logitemValidateShaderdescSamplerMetalSamplerSlotOutOfRange,
    logitemValidateShaderdescSamplerMetalSamplerSlotCollision,
    logitemValidateShaderdescSamplerHlslRegisterSOutOfRange,
    logitemValidateShaderdescSamplerHlslRegisterSCollision,
    logitemValidateShaderdescSamplerWgslGroup1BindingOutOfRange,
    logitemValidateShaderdescSamplerWgslGroup1BindingCollision,
    logitemValidateShaderdescImageSamplerPairImageSlotOutOfRange,
    logitemValidateShaderdescImageSamplerPairSamplerSlotOutOfRange,
    logitemValidateShaderdescImageSamplerPairImageStageMismatch,
    logitemValidateShaderdescImageSamplerPairSamplerStageMismatch,
    logitemValidateShaderdescImageSamplerPairGlslName,
    logitemValidateShaderdescNonfilteringSamplerRequired,
    logitemValidateShaderdescComparisonSamplerRequired,
    logitemValidateShaderdescImageNotReferencedByImageSamplerPairs,
    logitemValidateShaderdescSamplerNotReferencedByImageSamplerPairs,
    logitemValidateShaderdescAttrStringTooLong,
    logitemValidatePipelinedescCanary,
    logitemValidatePipelinedescShader,
    logitemValidatePipelinedescComputeShaderExpected,
    logitemValidatePipelinedescNoComputeShaderExpected,
    logitemValidatePipelinedescNoContAttrs,
    logitemValidatePipelinedescAttrBasetypeMismatch,
    logitemValidatePipelinedescLayoutStride4,
    logitemValidatePipelinedescAttrSemantics,
    logitemValidatePipelinedescShaderReadonlyStoragebuffers,
    logitemValidatePipelinedescBlendopMinmaxRequiresBlendfactorOne,
    logitemValidateAttachmentsdescCanary,
    logitemValidateAttachmentsdescNoAttachments,
    logitemValidateAttachmentsdescNoContColorAtts,
    logitemValidateAttachmentsdescImage,
    logitemValidateAttachmentsdescMiplevel,
    logitemValidateAttachmentsdescFace,
    logitemValidateAttachmentsdescLayer,
    logitemValidateAttachmentsdescSlice,
    logitemValidateAttachmentsdescImageNoRt,
    logitemValidateAttachmentsdescColorInvPixelformat,
    logitemValidateAttachmentsdescDepthInvPixelformat,
    logitemValidateAttachmentsdescImageSizes,
    logitemValidateAttachmentsdescImageSampleCounts,
    logitemValidateAttachmentsdescResolveColorImageMsaa,
    logitemValidateAttachmentsdescResolveImage,
    logitemValidateAttachmentsdescResolveSampleCount,
    logitemValidateAttachmentsdescResolveMiplevel,
    logitemValidateAttachmentsdescResolveFace,
    logitemValidateAttachmentsdescResolveLayer,
    logitemValidateAttachmentsdescResolveSlice,
    logitemValidateAttachmentsdescResolveImageNoRt,
    logitemValidateAttachmentsdescResolveImageSizes,
    logitemValidateAttachmentsdescResolveImageFormat,
    logitemValidateAttachmentsdescDepthImage,
    logitemValidateAttachmentsdescDepthMiplevel,
    logitemValidateAttachmentsdescDepthFace,
    logitemValidateAttachmentsdescDepthLayer,
    logitemValidateAttachmentsdescDepthSlice,
    logitemValidateAttachmentsdescDepthImageNoRt,
    logitemValidateAttachmentsdescDepthImageSizes,
    logitemValidateAttachmentsdescDepthImageSampleCount,
    logitemValidateBeginpassCanary,
    logitemValidateBeginpassExpectNoAttachments,
    logitemValidateBeginpassAttachmentsExists,
    logitemValidateBeginpassAttachmentsValid,
    logitemValidateBeginpassColorAttachmentImage,
    logitemValidateBeginpassResolveAttachmentImage,
    logitemValidateBeginpassDepthstencilAttachmentImage,
    logitemValidateBeginpassSwapchainExpectWidth,
    logitemValidateBeginpassSwapchainExpectWidthNotset,
    logitemValidateBeginpassSwapchainExpectHeight,
    logitemValidateBeginpassSwapchainExpectHeightNotset,
    logitemValidateBeginpassSwapchainExpectSamplecount,
    logitemValidateBeginpassSwapchainExpectSamplecountNotset,
    logitemValidateBeginpassSwapchainExpectColorformat,
    logitemValidateBeginpassSwapchainExpectColorformatNotset,
    logitemValidateBeginpassSwapchainExpectDepthformatNotset,
    logitemValidateBeginpassSwapchainMetalExpectCurrentdrawable,
    logitemValidateBeginpassSwapchainMetalExpectCurrentdrawableNotset,
    logitemValidateBeginpassSwapchainMetalExpectDepthstenciltexture,
    logitemValidateBeginpassSwapchainMetalExpectDepthstenciltextureNotset,
    logitemValidateBeginpassSwapchainMetalExpectMsaacolortexture,
    logitemValidateBeginpassSwapchainMetalExpectMsaacolortextureNotset,
    logitemValidateBeginpassSwapchainD3d11ExpectRenderview,
    logitemValidateBeginpassSwapchainD3d11ExpectRenderviewNotset,
    logitemValidateBeginpassSwapchainD3d11ExpectResolveview,
    logitemValidateBeginpassSwapchainD3d11ExpectResolveviewNotset,
    logitemValidateBeginpassSwapchainD3d11ExpectDepthstencilview,
    logitemValidateBeginpassSwapchainD3d11ExpectDepthstencilviewNotset,
    logitemValidateBeginpassSwapchainWgpuExpectRenderview,
    logitemValidateBeginpassSwapchainWgpuExpectRenderviewNotset,
    logitemValidateBeginpassSwapchainWgpuExpectResolveview,
    logitemValidateBeginpassSwapchainWgpuExpectResolveviewNotset,
    logitemValidateBeginpassSwapchainWgpuExpectDepthstencilview,
    logitemValidateBeginpassSwapchainWgpuExpectDepthstencilviewNotset,
    logitemValidateBeginpassSwapchainGlExpectFramebufferNotset,
    logitemValidateAvpRenderpassExpected,
    logitemValidateAsrRenderpassExpected,
    logitemValidateApipPipelineValidId,
    logitemValidateApipPipelineExists,
    logitemValidateApipPipelineValid,
    logitemValidateApipPassExpected,
    logitemValidateApipShaderExists,
    logitemValidateApipShaderValid,
    logitemValidateApipComputepassExpected,
    logitemValidateApipRenderpassExpected,
    logitemValidateApipCurpassAttachmentsExists,
    logitemValidateApipCurpassAttachmentsValid,
    logitemValidateApipAttCount,
    logitemValidateApipColorFormat,
    logitemValidateApipDepthFormat,
    logitemValidateApipSampleCount,
    logitemValidateAbndPassExpected,
    logitemValidateAbndPipeline,
    logitemValidateAbndPipelineExists,
    logitemValidateAbndPipelineValid,
    logitemValidateAbndComputeExpectedNoVbs,
    logitemValidateAbndComputeExpectedNoIb,
    logitemValidateAbndExpectedVb,
    logitemValidateAbndVbExists,
    logitemValidateAbndVbType,
    logitemValidateAbndVbOverflow,
    logitemValidateAbndNoIb,
    logitemValidateAbndIb,
    logitemValidateAbndIbExists,
    logitemValidateAbndIbType,
    logitemValidateAbndIbOverflow,
    logitemValidateAbndExpectedImageBinding,
    logitemValidateAbndImgExists,
    logitemValidateAbndImageTypeMismatch,
    logitemValidateAbndExpectedMultisampledImage,
    logitemValidateAbndImageMsaa,
    logitemValidateAbndExpectedFilterableImage,
    logitemValidateAbndExpectedDepthImage,
    logitemValidateAbndExpectedSamplerBinding,
    logitemValidateAbndUnexpectedSamplerCompareNever,
    logitemValidateAbndExpectedSamplerCompareNever,
    logitemValidateAbndExpectedNonfilteringSampler,
    logitemValidateAbndSmpExists,
    logitemValidateAbndExpectedStoragebufferBinding,
    logitemValidateAbndStoragebufferExists,
    logitemValidateAbndStoragebufferBindingBuffertype,
    logitemValidateAbndStoragebufferReadwriteImmutable,
    logitemValidateAuPassExpected,
    logitemValidateAuNoPipeline,
    logitemValidateAuNoUniformblockAtSlot,
    logitemValidateAuSize,
    logitemValidateDrawRenderpassExpected,
    logitemValidateDrawBaseelement,
    logitemValidateDrawNumelements,
    logitemValidateDrawNuminstances,
    logitemValidateDrawRequiredBindingsOrUniformsMissing,
    logitemValidateDispatchComputepassExpected,
    logitemValidateDispatchNumgroupsx,
    logitemValidateDispatchNumgroupsy,
    logitemValidateDispatchNumgroupsz,
    logitemValidateDispatchRequiredBindingsOrUniformsMissing,
    logitemValidateUpdatebufUsage,
    logitemValidateUpdatebufSize,
    logitemValidateUpdatebufOnce,
    logitemValidateUpdatebufAppend,
    logitemValidateAppendbufUsage,
    logitemValidateAppendbufSize,
    logitemValidateAppendbufUpdate,
    logitemValidateUpdimgUsage,
    logitemValidateUpdimgOnce,
    logitemValidationFailed,

type EnvironmentDefaults* = object
  colorFormat*: PixelFormat
  depthFormat*: PixelFormat
  sampleCount*: int32

type MetalEnvironment* = object
  device*: pointer

type D3d11Environment* = object
  device*: pointer
  deviceContext*: pointer

type WgpuEnvironment* = object
  device*: pointer

type Environment* = object
  defaults*: EnvironmentDefaults
  metal*: MetalEnvironment
  d3d11*: D3d11Environment
  wgpu*: WgpuEnvironment

type CommitListener* = object
  fn*: proc(a1: pointer) {.cdecl.}
  userData*: pointer

type Allocator* = object
  allocFn*: proc(a1: int, a2: pointer): pointer {.cdecl.}
  freeFn*: proc(a1: pointer, a2: pointer) {.cdecl.}
  userData*: pointer

type Logger* = object
  fn*: proc(a1: cstring, a2: uint32, a3: uint32, a4: cstring, a5: uint32,
      a6: cstring, a7: pointer) {.cdecl.}
  userData*: pointer

type Desc* = object
  startCanary: uint32
  bufferPoolSize*: int32
  imagePoolSize*: int32
  samplerPoolSize*: int32
  shaderPoolSize*: int32
  pipelinePoolSize*: int32
  attachmentsPoolSize*: int32
  uniformBufferSize*: int32
  maxDispatchCallsPerPass*: int32
  maxCommitListeners*: int32
  disableValidation*: bool
  d3d11ShaderDebugging*: bool
  mtlForceManagedStorageMode*: bool
  mtlUseCommandBufferWithRetainedReferences*: bool
  wgpuDisableBindgroupsCache*: bool
  wgpuBindgroupsCacheSize*: int32
  allocator*: Allocator
  logger*: Logger
  environment*: Environment
  endCanary: uint32
