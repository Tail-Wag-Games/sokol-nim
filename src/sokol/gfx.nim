import ../sokol_gfx

export sokol_gfx

proc c_setup(desc: ptr Desc): void {.cdecl, importc: "sg_setup".}
proc setup*(desc: Desc): void =
  c_setup(addr(desc))

proc c_shutdown(): void {.cdecl, importc: "sg_shutdown".}
proc shutdown*(): void =
  c_shutdown()

proc c_isvalid(): bool {.cdecl, importc: "sg_isvalid".}
proc isvalid*(): bool =
  c_isvalid()

proc c_resetStateCache(): void {.cdecl, importc: "sg_reset_state_cache".}
proc resetStateCache*(): void =
  c_resetStateCache()

proc c_installTraceHooks(traceHooks: ptr TraceHooks): TraceHooks {.cdecl,
    importc: "sg_install_trace_hooks".}
proc installTraceHooks*(traceHooks: TraceHooks): TraceHooks =
  c_installTraceHooks(addr(trace_hooks))

proc c_pushDebugGroup(name: cstring): void {.cdecl,
    importc: "sg_push_debug_group".}
proc pushDebugGroup*(name: cstring): void =
  c_pushDebugGroup(name)

proc c_popDebugGroup(): void {.cdecl, importc: "sg_pop_debug_group".}
proc popDebugGroup*(): void =
  c_popDebugGroup()

proc c_addCommitListener(listener: CommitListener): bool {.cdecl,
    importc: "sg_add_commit_listener".}
proc addCommitListener*(listener: CommitListener): bool =
  c_addCommitListener(listener)

proc c_removeCommitListener(listener: CommitListener): bool {.cdecl,
    importc: "sg_remove_commit_listener".}
proc removeCommitListener*(listener: CommitListener): bool =
  c_removeCommitListener(listener)

proc c_makeBuffer(desc: ptr BufferDesc): Buffer {.cdecl,
    importc: "sg_make_buffer".}
proc makeBuffer*(desc: BufferDesc): Buffer =
  c_makeBuffer(addr(desc))

proc c_makeImage(desc: ptr ImageDesc): Image {.cdecl, importc: "sg_make_image".}
proc makeImage*(desc: ImageDesc): Image =
  c_makeImage(addr(desc))

proc c_makeSampler(desc: ptr SamplerDesc): Sampler {.cdecl,
    importc: "sg_make_sampler".}
proc makeSampler*(desc: SamplerDesc): Sampler =
  c_makeSampler(addr(desc))

proc c_makeShader(desc: ptr ShaderDesc): Shader {.cdecl,
    importc: "sg_make_shader".}
proc makeShader*(desc: ShaderDesc): Shader =
  c_makeShader(addr(desc))

proc c_makePipeline(desc: ptr PipelineDesc): Pipeline {.cdecl,
    importc: "sg_make_pipeline".}
proc makePipeline*(desc: PipelineDesc): Pipeline =
  c_makePipeline(addr(desc))

proc c_makeAttachments(desc: ptr AttachmentsDesc): Attachments {.cdecl,
    importc: "sg_make_attachments".}
proc makeAttachments*(desc: AttachmentsDesc): Attachments =
  c_makeAttachments(addr(desc))

proc c_destroyBuffer(buf: Buffer): void {.cdecl, importc: "sg_destroy_buffer".}
proc destroyBuffer*(buf: Buffer): void =
  c_destroyBuffer(buf)

proc c_destroyImage(img: Image): void {.cdecl, importc: "sg_destroy_image".}
proc destroyImage*(img: Image): void =
  c_destroyImage(img)

proc c_destroySampler(smp: Sampler): void {.cdecl,
    importc: "sg_destroy_sampler".}
proc destroySampler*(smp: Sampler): void =
  c_destroySampler(smp)

proc c_destroyShader(shd: Shader): void {.cdecl, importc: "sg_destroy_shader".}
proc destroyShader*(shd: Shader): void =
  c_destroyShader(shd)

proc c_destroyPipeline(pip: Pipeline): void {.cdecl,
    importc: "sg_destroy_pipeline".}
proc destroyPipeline*(pip: Pipeline): void =
  c_destroyPipeline(pip)

proc c_destroyAttachments(atts: Attachments): void {.cdecl,
    importc: "sg_destroy_attachments".}
proc destroyAttachments*(atts: Attachments): void =
  c_destroyAttachments(atts)

proc c_updateBuffer(buf: Buffer, data: ptr Range): void {.cdecl,
    importc: "sg_update_buffer".}
proc updateBuffer*(buf: Buffer, data: Range): void =
  c_updateBuffer(buf, addr(data))

proc c_updateImage(img: Image, data: ptr ImageData): void {.cdecl,
    importc: "sg_update_image".}
proc updateImage*(img: Image, data: ImageData): void =
  c_updateImage(img, addr(data))

proc c_appendBuffer(buf: Buffer, data: ptr Range): int32 {.cdecl,
    importc: "sg_append_buffer".}
proc appendBuffer*(buf: Buffer, data: Range): int32 =
  c_appendBuffer(buf, addr(data))

proc c_queryBufferOverflow(buf: Buffer): bool {.cdecl,
    importc: "sg_query_buffer_overflow".}
proc queryBufferOverflow*(buf: Buffer): bool =
  c_queryBufferOverflow(buf)

proc c_queryBufferWillOverflow(buf: Buffer, size: int): bool {.cdecl,
    importc: "sg_query_buffer_will_overflow".}
proc queryBufferWillOverflow*(buf: Buffer, size: int): bool =
  c_queryBufferWillOverflow(buf, size)

proc c_beginPass(pass: ptr Pass): void {.cdecl, importc: "sg_begin_pass".}
proc beginPass*(pass: Pass): void =
  c_beginPass(addr(pass))

proc c_applyViewport(x: int32, y: int32, width: int32, height: int32,
    originTopLeft: bool): void {.cdecl, importc: "sg_apply_viewport".}
proc applyViewport*(x: int32, y: int32, width: int32, height: int32,
    originTopLeft: bool): void =
  c_applyViewport(x, y, width, height, origin_top_left)

proc c_applyViewportf(x: float32, y: float32, width: float32, height: float32,
    originTopLeft: bool): void {.cdecl, importc: "sg_apply_viewportf".}
proc applyViewportf*(x: float32, y: float32, width: float32, height: float32,
    originTopLeft: bool): void =
  c_applyViewportf(x, y, width, height, origin_top_left)

proc c_applyScissorRect(x: int32, y: int32, width: int32, height: int32,
    originTopLeft: bool): void {.cdecl, importc: "sg_apply_scissor_rect".}
proc applyScissorRect*(x: int32, y: int32, width: int32, height: int32,
    originTopLeft: bool): void =
  c_applyScissorRect(x, y, width, height, origin_top_left)

proc c_applyScissorRectf(x: float32, y: float32, width: float32,
    height: float32, originTopLeft: bool): void {.cdecl,
    importc: "sg_apply_scissor_rectf".}
proc applyScissorRectf*(x: float32, y: float32, width: float32, height: float32,
    originTopLeft: bool): void =
  c_applyScissorRectf(x, y, width, height, origin_top_left)

proc c_applyPipeline(pip: Pipeline): void {.cdecl,
    importc: "sg_apply_pipeline".}
proc applyPipeline*(pip: Pipeline): void =
  c_applyPipeline(pip)

proc c_applyBindings(bindings: ptr Bindings): void {.cdecl,
    importc: "sg_apply_bindings".}
proc applyBindings*(bindings: Bindings): void =
  c_applyBindings(addr(bindings))

proc c_applyUniforms(ubSlot: int32, data: ptr Range): void {.cdecl,
    importc: "sg_apply_uniforms".}
proc applyUniforms*(ubSlot: int32, data: Range): void =
  c_applyUniforms(ub_slot, addr(data))

proc c_draw(baseElement: int32, numElements: int32,
    numInstances: int32): void {.cdecl, importc: "sg_draw".}
proc draw*(baseElement: int32, numElements: int32, numInstances: int32): void =
  c_draw(base_element, num_elements, num_instances)

proc c_dispatch(numGroupsX: int32, numGroupsY: int32,
    numGroupsZ: int32): void {.cdecl, importc: "sg_dispatch".}
proc dispatch*(numGroupsX: int32, numGroupsY: int32, numGroupsZ: int32): void =
  c_dispatch(num_groups_x, num_groups_y, num_groups_z)

proc c_endPass(): void {.cdecl, importc: "sg_end_pass".}
proc endPass*(): void =
  c_endPass()

proc c_commit(): void {.cdecl, importc: "sg_commit".}
proc commit*(): void =
  c_commit()

proc c_queryDesc(): Desc {.cdecl, importc: "sg_query_desc".}
proc queryDesc*(): Desc =
  c_queryDesc()

proc c_queryBackend(): Backend {.cdecl, importc: "sg_query_backend".}
proc queryBackend*(): Backend =
  c_queryBackend()

proc c_queryFeatures(): Features {.cdecl, importc: "sg_query_features".}
proc queryFeatures*(): Features =
  c_queryFeatures()

proc c_queryLimits(): Limits {.cdecl, importc: "sg_query_limits".}
proc queryLimits*(): Limits =
  c_queryLimits()

proc c_queryPixelformat(fmt: PixelFormat): PixelformatInfo {.cdecl,
    importc: "sg_query_pixelformat".}
proc queryPixelformat*(fmt: PixelFormat): PixelformatInfo =
  c_queryPixelformat(fmt)

proc c_queryRowPitch(fmt: PixelFormat, width: int32,
    rowAlignBytes: int32): int32 {.cdecl, importc: "sg_query_row_pitch".}
proc queryRowPitch*(fmt: PixelFormat, width: int32,
    rowAlignBytes: int32): int32 =
  c_queryRowPitch(fmt, width, row_align_bytes)

proc c_querySurfacePitch(fmt: PixelFormat, width: int32, height: int32,
    rowAlignBytes: int32): int32 {.cdecl, importc: "sg_query_surface_pitch".}
proc querySurfacePitch*(fmt: PixelFormat, width: int32, height: int32,
    rowAlignBytes: int32): int32 =
  c_querySurfacePitch(fmt, width, height, row_align_bytes)

proc c_queryBufferState(buf: Buffer): ResourceState {.cdecl,
    importc: "sg_query_buffer_state".}
proc queryBufferState*(buf: Buffer): ResourceState =
  c_queryBufferState(buf)

proc c_queryImageState(img: Image): ResourceState {.cdecl,
    importc: "sg_query_image_state".}
proc queryImageState*(img: Image): ResourceState =
  c_queryImageState(img)

proc c_querySamplerState(smp: Sampler): ResourceState {.cdecl,
    importc: "sg_query_sampler_state".}
proc querySamplerState*(smp: Sampler): ResourceState =
  c_querySamplerState(smp)

proc c_queryShaderState(shd: Shader): ResourceState {.cdecl,
    importc: "sg_query_shader_state".}
proc queryShaderState*(shd: Shader): ResourceState =
  c_queryShaderState(shd)

proc c_queryPipelineState(pip: Pipeline): ResourceState {.cdecl,
    importc: "sg_query_pipeline_state".}
proc queryPipelineState*(pip: Pipeline): ResourceState =
  c_queryPipelineState(pip)

proc c_queryAttachmentsState(atts: Attachments): ResourceState {.cdecl,
    importc: "sg_query_attachments_state".}
proc queryAttachmentsState*(atts: Attachments): ResourceState =
  c_queryAttachmentsState(atts)

proc c_queryBufferInfo(buf: Buffer): BufferInfo {.cdecl,
    importc: "sg_query_buffer_info".}
proc queryBufferInfo*(buf: Buffer): BufferInfo =
  c_queryBufferInfo(buf)

proc c_queryImageInfo(img: Image): ImageInfo {.cdecl,
    importc: "sg_query_image_info".}
proc queryImageInfo*(img: Image): ImageInfo =
  c_queryImageInfo(img)

proc c_querySamplerInfo(smp: Sampler): SamplerInfo {.cdecl,
    importc: "sg_query_sampler_info".}
proc querySamplerInfo*(smp: Sampler): SamplerInfo =
  c_querySamplerInfo(smp)

proc c_queryShaderInfo(shd: Shader): ShaderInfo {.cdecl,
    importc: "sg_query_shader_info".}
proc queryShaderInfo*(shd: Shader): ShaderInfo =
  c_queryShaderInfo(shd)

proc c_queryPipelineInfo(pip: Pipeline): PipelineInfo {.cdecl,
    importc: "sg_query_pipeline_info".}
proc queryPipelineInfo*(pip: Pipeline): PipelineInfo =
  c_queryPipelineInfo(pip)

proc c_queryAttachmentsInfo(atts: Attachments): AttachmentsInfo {.cdecl,
    importc: "sg_query_attachments_info".}
proc queryAttachmentsInfo*(atts: Attachments): AttachmentsInfo =
  c_queryAttachmentsInfo(atts)

proc c_queryBufferDesc(buf: Buffer): BufferDesc {.cdecl,
    importc: "sg_query_buffer_desc".}
proc queryBufferDesc*(buf: Buffer): BufferDesc =
  c_queryBufferDesc(buf)

proc c_queryImageDesc(img: Image): ImageDesc {.cdecl,
    importc: "sg_query_image_desc".}
proc queryImageDesc*(img: Image): ImageDesc =
  c_queryImageDesc(img)

proc c_querySamplerDesc(smp: Sampler): SamplerDesc {.cdecl,
    importc: "sg_query_sampler_desc".}
proc querySamplerDesc*(smp: Sampler): SamplerDesc =
  c_querySamplerDesc(smp)

proc c_queryShaderDesc(shd: Shader): ShaderDesc {.cdecl,
    importc: "sg_query_shader_desc".}
proc queryShaderDesc*(shd: Shader): ShaderDesc =
  c_queryShaderDesc(shd)

proc c_queryPipelineDesc(pip: Pipeline): PipelineDesc {.cdecl,
    importc: "sg_query_pipeline_desc".}
proc queryPipelineDesc*(pip: Pipeline): PipelineDesc =
  c_queryPipelineDesc(pip)

proc c_queryAttachmentsDesc(atts: Attachments): AttachmentsDesc {.cdecl,
    importc: "sg_query_attachments_desc".}
proc queryAttachmentsDesc*(atts: Attachments): AttachmentsDesc =
  c_queryAttachmentsDesc(atts)

proc c_queryBufferDefaults(desc: ptr BufferDesc): BufferDesc {.cdecl,
    importc: "sg_query_buffer_defaults".}
proc queryBufferDefaults*(desc: BufferDesc): BufferDesc =
  c_queryBufferDefaults(addr(desc))

proc c_queryImageDefaults(desc: ptr ImageDesc): ImageDesc {.cdecl,
    importc: "sg_query_image_defaults".}
proc queryImageDefaults*(desc: ImageDesc): ImageDesc =
  c_queryImageDefaults(addr(desc))

proc c_querySamplerDefaults(desc: ptr SamplerDesc): SamplerDesc {.cdecl,
    importc: "sg_query_sampler_defaults".}
proc querySamplerDefaults*(desc: SamplerDesc): SamplerDesc =
  c_querySamplerDefaults(addr(desc))

proc c_queryShaderDefaults(desc: ptr ShaderDesc): ShaderDesc {.cdecl,
    importc: "sg_query_shader_defaults".}
proc queryShaderDefaults*(desc: ShaderDesc): ShaderDesc =
  c_queryShaderDefaults(addr(desc))

proc c_queryPipelineDefaults(desc: ptr PipelineDesc): PipelineDesc {.cdecl,
    importc: "sg_query_pipeline_defaults".}
proc queryPipelineDefaults*(desc: PipelineDesc): PipelineDesc =
  c_queryPipelineDefaults(addr(desc))

proc c_queryAttachmentsDefaults(desc: ptr AttachmentsDesc): AttachmentsDesc {.cdecl,
    importc: "sg_query_attachments_defaults".}
proc queryAttachmentsDefaults*(desc: AttachmentsDesc): AttachmentsDesc =
  c_queryAttachmentsDefaults(addr(desc))

proc c_queryBufferSize(buf: Buffer): int {.cdecl,
    importc: "sg_query_buffer_size".}
proc queryBufferSize*(buf: Buffer): int =
  c_queryBufferSize(buf)

proc c_queryBufferType(buf: Buffer): BufferType {.cdecl,
    importc: "sg_query_buffer_type".}
proc queryBufferType*(buf: Buffer): BufferType =
  c_queryBufferType(buf)

proc c_queryBufferUsage(buf: Buffer): Usage {.cdecl,
    importc: "sg_query_buffer_usage".}
proc queryBufferUsage*(buf: Buffer): Usage =
  c_queryBufferUsage(buf)

proc c_queryImageType(img: Image): ImageType {.cdecl,
    importc: "sg_query_image_type".}
proc queryImageType*(img: Image): ImageType =
  c_queryImageType(img)

proc c_queryImageWidth(img: Image): int32 {.cdecl,
    importc: "sg_query_image_width".}
proc queryImageWidth*(img: Image): int32 =
  c_queryImageWidth(img)

proc c_queryImageHeight(img: Image): int32 {.cdecl,
    importc: "sg_query_image_height".}
proc queryImageHeight*(img: Image): int32 =
  c_queryImageHeight(img)

proc c_queryImageNumSlices(img: Image): int32 {.cdecl,
    importc: "sg_query_image_num_slices".}
proc queryImageNumSlices*(img: Image): int32 =
  c_queryImageNumSlices(img)

proc c_queryImageNumMipmaps(img: Image): int32 {.cdecl,
    importc: "sg_query_image_num_mipmaps".}
proc queryImageNumMipmaps*(img: Image): int32 =
  c_queryImageNumMipmaps(img)

proc c_queryImagePixelformat(img: Image): PixelFormat {.cdecl,
    importc: "sg_query_image_pixelformat".}
proc queryImagePixelformat*(img: Image): PixelFormat =
  c_queryImagePixelformat(img)

proc c_queryImageUsage(img: Image): Usage {.cdecl,
    importc: "sg_query_image_usage".}
proc queryImageUsage*(img: Image): Usage =
  c_queryImageUsage(img)

proc c_queryImageSampleCount(img: Image): int32 {.cdecl,
    importc: "sg_query_image_sample_count".}
proc queryImageSampleCount*(img: Image): int32 =
  c_queryImageSampleCount(img)

proc c_allocBuffer(): Buffer {.cdecl, importc: "sg_alloc_buffer".}
proc allocBuffer*(): Buffer =
  c_allocBuffer()

proc c_allocImage(): Image {.cdecl, importc: "sg_alloc_image".}
proc allocImage*(): Image =
  c_allocImage()

proc c_allocSampler(): Sampler {.cdecl, importc: "sg_alloc_sampler".}
proc allocSampler*(): Sampler =
  c_allocSampler()

proc c_allocShader(): Shader {.cdecl, importc: "sg_alloc_shader".}
proc allocShader*(): Shader =
  c_allocShader()

proc c_allocPipeline(): Pipeline {.cdecl, importc: "sg_alloc_pipeline".}
proc allocPipeline*(): Pipeline =
  c_allocPipeline()

proc c_allocAttachments(): Attachments {.cdecl,
    importc: "sg_alloc_attachments".}
proc allocAttachments*(): Attachments =
  c_allocAttachments()

proc c_deallocBuffer(buf: Buffer): void {.cdecl, importc: "sg_dealloc_buffer".}
proc deallocBuffer*(buf: Buffer): void =
  c_deallocBuffer(buf)

proc c_deallocImage(img: Image): void {.cdecl, importc: "sg_dealloc_image".}
proc deallocImage*(img: Image): void =
  c_deallocImage(img)

proc c_deallocSampler(smp: Sampler): void {.cdecl,
    importc: "sg_dealloc_sampler".}
proc deallocSampler*(smp: Sampler): void =
  c_deallocSampler(smp)

proc c_deallocShader(shd: Shader): void {.cdecl, importc: "sg_dealloc_shader".}
proc deallocShader*(shd: Shader): void =
  c_deallocShader(shd)

proc c_deallocPipeline(pip: Pipeline): void {.cdecl,
    importc: "sg_dealloc_pipeline".}
proc deallocPipeline*(pip: Pipeline): void =
  c_deallocPipeline(pip)

proc c_deallocAttachments(attachments: Attachments): void {.cdecl,
    importc: "sg_dealloc_attachments".}
proc deallocAttachments*(attachments: Attachments): void =
  c_deallocAttachments(attachments)

proc c_initBuffer(buf: Buffer, desc: ptr BufferDesc): void {.cdecl,
    importc: "sg_init_buffer".}
proc initBuffer*(buf: Buffer, desc: BufferDesc): void =
  c_initBuffer(buf, addr(desc))

proc c_initImage(img: Image, desc: ptr ImageDesc): void {.cdecl,
    importc: "sg_init_image".}
proc initImage*(img: Image, desc: ImageDesc): void =
  c_initImage(img, addr(desc))

proc c_initSampler(smg: Sampler, desc: ptr SamplerDesc): void {.cdecl,
    importc: "sg_init_sampler".}
proc initSampler*(smg: Sampler, desc: SamplerDesc): void =
  c_initSampler(smg, addr(desc))

proc c_initShader(shd: Shader, desc: ptr ShaderDesc): void {.cdecl,
    importc: "sg_init_shader".}
proc initShader*(shd: Shader, desc: ShaderDesc): void =
  c_initShader(shd, addr(desc))

proc c_initPipeline(pip: Pipeline, desc: ptr PipelineDesc): void {.cdecl,
    importc: "sg_init_pipeline".}
proc initPipeline*(pip: Pipeline, desc: PipelineDesc): void =
  c_initPipeline(pip, addr(desc))

proc c_initAttachments(attachments: Attachments,
    desc: ptr AttachmentsDesc): void {.cdecl, importc: "sg_init_attachments".}
proc initAttachments*(attachments: Attachments, desc: AttachmentsDesc): void =
  c_initAttachments(attachments, addr(desc))

proc c_uninitBuffer(buf: Buffer): void {.cdecl, importc: "sg_uninit_buffer".}
proc uninitBuffer*(buf: Buffer): void =
  c_uninitBuffer(buf)

proc c_uninitImage(img: Image): void {.cdecl, importc: "sg_uninit_image".}
proc uninitImage*(img: Image): void =
  c_uninitImage(img)

proc c_uninitSampler(smp: Sampler): void {.cdecl, importc: "sg_uninit_sampler".}
proc uninitSampler*(smp: Sampler): void =
  c_uninitSampler(smp)

proc c_uninitShader(shd: Shader): void {.cdecl, importc: "sg_uninit_shader".}
proc uninitShader*(shd: Shader): void =
  c_uninitShader(shd)

proc c_uninitPipeline(pip: Pipeline): void {.cdecl,
    importc: "sg_uninit_pipeline".}
proc uninitPipeline*(pip: Pipeline): void =
  c_uninitPipeline(pip)

proc c_uninitAttachments(atts: Attachments): void {.cdecl,
    importc: "sg_uninit_attachments".}
proc uninitAttachments*(atts: Attachments): void =
  c_uninitAttachments(atts)

proc c_failBuffer(buf: Buffer): void {.cdecl, importc: "sg_fail_buffer".}
proc failBuffer*(buf: Buffer): void =
  c_failBuffer(buf)

proc c_failImage(img: Image): void {.cdecl, importc: "sg_fail_image".}
proc failImage*(img: Image): void =
  c_failImage(img)

proc c_failSampler(smp: Sampler): void {.cdecl, importc: "sg_fail_sampler".}
proc failSampler*(smp: Sampler): void =
  c_failSampler(smp)

proc c_failShader(shd: Shader): void {.cdecl, importc: "sg_fail_shader".}
proc failShader*(shd: Shader): void =
  c_failShader(shd)

proc c_failPipeline(pip: Pipeline): void {.cdecl, importc: "sg_fail_pipeline".}
proc failPipeline*(pip: Pipeline): void =
  c_failPipeline(pip)

proc c_failAttachments(atts: Attachments): void {.cdecl,
    importc: "sg_fail_attachments".}
proc failAttachments*(atts: Attachments): void =
  c_failAttachments(atts)

proc c_enableFrameStats(): void {.cdecl, importc: "sg_enable_frame_stats".}
proc enableFrameStats*(): void =
  c_enableFrameStats()

proc c_disableFrameStats(): void {.cdecl, importc: "sg_disable_frame_stats".}
proc disableFrameStats*(): void =
  c_disableFrameStats()

proc c_frameStatsEnabled(): bool {.cdecl, importc: "sg_frame_stats_enabled".}
proc frameStatsEnabled*(): bool =
  c_frameStatsEnabled()

proc c_queryFrameStats(): FrameStats {.cdecl, importc: "sg_query_frame_stats".}
proc queryFrameStats*(): FrameStats =
  c_queryFrameStats()

type D3d11BufferInfo* = object
  buf*: pointer

type D3d11ImageInfo* = object
  tex2d*: pointer
  tex3d*: pointer
  res*: pointer
  srv*: pointer

type D3d11SamplerInfo* = object
  smp*: pointer

type D3d11ShaderInfo* = object
  cbufs*: array[8, pointer]
  vs*: pointer
  fs*: pointer

converter toD3d11ShaderInfocbufs*[N: static[int]](items: array[N,
    pointer]): array[8, pointer] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

type D3d11PipelineInfo* = object
  il*: pointer
  rs*: pointer
  dss*: pointer
  bs*: pointer

type D3d11AttachmentsInfo* = object
  colorRtv*: array[4, pointer]
  resolveRtv*: array[4, pointer]
  dsv*: pointer

converter toD3d11AttachmentsInfocolorRtv*[N: static[int]](items: array[N,
    pointer]): array[4, pointer] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

converter toD3d11AttachmentsInforesolveRtv*[N: static[int]](items: array[N,
    pointer]): array[4, pointer] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

type MtlBufferInfo* = object
  buf*: array[2, pointer]
  activeSlot*: int32

converter toMtlBufferInfobuf*[N: static[int]](items: array[N, pointer]): array[
    2, pointer] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type MtlImageInfo* = object
  tex*: array[2, pointer]
  activeSlot*: int32

converter toMtlImageInfotex*[N: static[int]](items: array[N, pointer]): array[2, pointer] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type MtlSamplerInfo* = object
  smp*: pointer

type MtlShaderInfo* = object
  vertexLib*: pointer
  fragmentLib*: pointer
  vertexFunc*: pointer
  fragmentFunc*: pointer

type MtlPipelineInfo* = object
  rps*: pointer
  dss*: pointer

type WgpuBufferInfo* = object
  buf*: pointer

type WgpuImageInfo* = object
  tex*: pointer
  view*: pointer

type WgpuSamplerInfo* = object
  smp*: pointer

type WgpuShaderInfo* = object
  vsMod*: pointer
  fsMod*: pointer
  bgl*: pointer

type WgpuPipelineInfo* = object
  renderPipeline*: pointer
  computePipeline*: pointer

type WgpuAttachmentsInfo* = object
  colorView*: array[4, pointer]
  resolveView*: array[4, pointer]
  dsView*: pointer

converter toWgpuAttachmentsInfocolorView*[N: static[int]](items: array[N,
    pointer]): array[4, pointer] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

converter toWgpuAttachmentsInforesolveView*[N: static[int]](items: array[N,
    pointer]): array[4, pointer] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

type GlBufferInfo* = object
  buf*: array[2, uint32]
  activeSlot*: int32

converter toGlBufferInfobuf*[N: static[int]](items: array[N, uint32]): array[2, uint32] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type GlImageInfo* = object
  tex*: array[2, uint32]
  texTarget*: uint32
  msaaRenderBuffer*: uint32
  activeSlot*: int32

converter toGlImageInfotex*[N: static[int]](items: array[N, uint32]): array[2, uint32] =
  static: assert(N <= 2)
  for index, item in items.pairs: result[index] = item

type GlSamplerInfo* = object
  smp*: uint32

type GlShaderInfo* = object
  prog*: uint32

type GlAttachmentsInfo* = object
  framebuffer*: uint32
  msaaResolveFramebuffer*: array[4, uint32]

converter toGlAttachmentsInfomsaaResolveFramebuffer*[N: static[int]](
  items: array[N, uint32]): array[4, uint32] =
  static: assert(N <= 4)
  for index, item in items.pairs: result[index] = item

proc c_d3d11Device(): pointer {.cdecl, importc: "sg_d3d11_device".}
proc d3d11Device*(): pointer =
  c_d3d11Device()

proc c_d3d11DeviceContext(): pointer {.cdecl,
    importc: "sg_d3d11_device_context".}
proc d3d11DeviceContext*(): pointer =
  c_d3d11DeviceContext()

proc c_d3d11QueryBufferInfo(buf: Buffer): D3d11BufferInfo {.cdecl,
    importc: "sg_d3d11_query_buffer_info".}
proc d3d11QueryBufferInfo*(buf: Buffer): D3d11BufferInfo =
  c_d3d11QueryBufferInfo(buf)

proc c_d3d11QueryImageInfo(img: Image): D3d11ImageInfo {.cdecl,
    importc: "sg_d3d11_query_image_info".}
proc d3d11QueryImageInfo*(img: Image): D3d11ImageInfo =
  c_d3d11QueryImageInfo(img)

proc c_d3d11QuerySamplerInfo(smp: Sampler): D3d11SamplerInfo {.cdecl,
    importc: "sg_d3d11_query_sampler_info".}
proc d3d11QuerySamplerInfo*(smp: Sampler): D3d11SamplerInfo =
  c_d3d11QuerySamplerInfo(smp)

proc c_d3d11QueryShaderInfo(shd: Shader): D3d11ShaderInfo {.cdecl,
    importc: "sg_d3d11_query_shader_info".}
proc d3d11QueryShaderInfo*(shd: Shader): D3d11ShaderInfo =
  c_d3d11QueryShaderInfo(shd)

proc c_d3d11QueryPipelineInfo(pip: Pipeline): D3d11PipelineInfo {.cdecl,
    importc: "sg_d3d11_query_pipeline_info".}
proc d3d11QueryPipelineInfo*(pip: Pipeline): D3d11PipelineInfo =
  c_d3d11QueryPipelineInfo(pip)

proc c_d3d11QueryAttachmentsInfo(atts: Attachments): D3d11AttachmentsInfo {.cdecl,
    importc: "sg_d3d11_query_attachments_info".}
proc d3d11QueryAttachmentsInfo*(atts: Attachments): D3d11AttachmentsInfo =
  c_d3d11QueryAttachmentsInfo(atts)

proc c_mtlDevice(): pointer {.cdecl, importc: "sg_mtl_device".}
proc mtlDevice*(): pointer =
  c_mtlDevice()

proc c_mtlRenderCommandEncoder(): pointer {.cdecl,
    importc: "sg_mtl_render_command_encoder".}
proc mtlRenderCommandEncoder*(): pointer =
  c_mtlRenderCommandEncoder()

proc c_mtlComputeCommandEncoder(): pointer {.cdecl,
    importc: "sg_mtl_compute_command_encoder".}
proc mtlComputeCommandEncoder*(): pointer =
  c_mtlComputeCommandEncoder()

proc c_mtlQueryBufferInfo(buf: Buffer): MtlBufferInfo {.cdecl,
    importc: "sg_mtl_query_buffer_info".}
proc mtlQueryBufferInfo*(buf: Buffer): MtlBufferInfo =
  c_mtlQueryBufferInfo(buf)

proc c_mtlQueryImageInfo(img: Image): MtlImageInfo {.cdecl,
    importc: "sg_mtl_query_image_info".}
proc mtlQueryImageInfo*(img: Image): MtlImageInfo =
  c_mtlQueryImageInfo(img)

proc c_mtlQuerySamplerInfo(smp: Sampler): MtlSamplerInfo {.cdecl,
    importc: "sg_mtl_query_sampler_info".}
proc mtlQuerySamplerInfo*(smp: Sampler): MtlSamplerInfo =
  c_mtlQuerySamplerInfo(smp)

proc c_mtlQueryShaderInfo(shd: Shader): MtlShaderInfo {.cdecl,
    importc: "sg_mtl_query_shader_info".}
proc mtlQueryShaderInfo*(shd: Shader): MtlShaderInfo =
  c_mtlQueryShaderInfo(shd)

proc c_mtlQueryPipelineInfo(pip: Pipeline): MtlPipelineInfo {.cdecl,
    importc: "sg_mtl_query_pipeline_info".}
proc mtlQueryPipelineInfo*(pip: Pipeline): MtlPipelineInfo =
  c_mtlQueryPipelineInfo(pip)

proc c_wgpuDevice(): pointer {.cdecl, importc: "sg_wgpu_device".}
proc wgpuDevice*(): pointer =
  c_wgpuDevice()

proc c_wgpuQueue(): pointer {.cdecl, importc: "sg_wgpu_queue".}
proc wgpuQueue*(): pointer =
  c_wgpuQueue()

proc c_wgpuCommandEncoder(): pointer {.cdecl,
    importc: "sg_wgpu_command_encoder".}
proc wgpuCommandEncoder*(): pointer =
  c_wgpuCommandEncoder()

proc c_wgpuRenderPassEncoder(): pointer {.cdecl,
    importc: "sg_wgpu_render_pass_encoder".}
proc wgpuRenderPassEncoder*(): pointer =
  c_wgpuRenderPassEncoder()

proc c_wgpuComputePassEncoder(): pointer {.cdecl,
    importc: "sg_wgpu_compute_pass_encoder".}
proc wgpuComputePassEncoder*(): pointer =
  c_wgpuComputePassEncoder()

proc c_wgpuQueryBufferInfo(buf: Buffer): WgpuBufferInfo {.cdecl,
    importc: "sg_wgpu_query_buffer_info".}
proc wgpuQueryBufferInfo*(buf: Buffer): WgpuBufferInfo =
  c_wgpuQueryBufferInfo(buf)

proc c_wgpuQueryImageInfo(img: Image): WgpuImageInfo {.cdecl,
    importc: "sg_wgpu_query_image_info".}
proc wgpuQueryImageInfo*(img: Image): WgpuImageInfo =
  c_wgpuQueryImageInfo(img)

proc c_wgpuQuerySamplerInfo(smp: Sampler): WgpuSamplerInfo {.cdecl,
    importc: "sg_wgpu_query_sampler_info".}
proc wgpuQuerySamplerInfo*(smp: Sampler): WgpuSamplerInfo =
  c_wgpuQuerySamplerInfo(smp)

proc c_wgpuQueryShaderInfo(shd: Shader): WgpuShaderInfo {.cdecl,
    importc: "sg_wgpu_query_shader_info".}
proc wgpuQueryShaderInfo*(shd: Shader): WgpuShaderInfo =
  c_wgpuQueryShaderInfo(shd)

proc c_wgpuQueryPipelineInfo(pip: Pipeline): WgpuPipelineInfo {.cdecl,
    importc: "sg_wgpu_query_pipeline_info".}
proc wgpuQueryPipelineInfo*(pip: Pipeline): WgpuPipelineInfo =
  c_wgpuQueryPipelineInfo(pip)

proc c_wgpuQueryAttachmentsInfo(atts: Attachments): WgpuAttachmentsInfo {.cdecl,
    importc: "sg_wgpu_query_attachments_info".}
proc wgpuQueryAttachmentsInfo*(atts: Attachments): WgpuAttachmentsInfo =
  c_wgpuQueryAttachmentsInfo(atts)

proc c_glQueryBufferInfo(buf: Buffer): GlBufferInfo {.cdecl,
    importc: "sg_gl_query_buffer_info".}
proc glQueryBufferInfo*(buf: Buffer): GlBufferInfo =
  c_glQueryBufferInfo(buf)

proc c_glQueryImageInfo(img: Image): GlImageInfo {.cdecl,
    importc: "sg_gl_query_image_info".}
proc glQueryImageInfo*(img: Image): GlImageInfo =
  c_glQueryImageInfo(img)

proc c_glQuerySamplerInfo(smp: Sampler): GlSamplerInfo {.cdecl,
    importc: "sg_gl_query_sampler_info".}
proc glQuerySamplerInfo*(smp: Sampler): GlSamplerInfo =
  c_glQuerySamplerInfo(smp)

proc c_glQueryShaderInfo(shd: Shader): GlShaderInfo {.cdecl,
    importc: "sg_gl_query_shader_info".}
proc glQueryShaderInfo*(shd: Shader): GlShaderInfo =
  c_glQueryShaderInfo(shd)

proc c_glQueryAttachmentsInfo(atts: Attachments): GlAttachmentsInfo {.cdecl,
    importc: "sg_gl_query_attachments_info".}
proc glQueryAttachmentsInfo*(atts: Attachments): GlAttachmentsInfo =
  c_glQueryAttachmentsInfo(atts)

when defined emscripten:
  const gl* = true
  const d3d11* = false
  const metal* = false
  const emscripten* = true
elif defined gl:
  const gl* = true
  const d3d11* = false
  const metal* = false
  const emscripten* = false
elif defined windows:
  const gl* = false
  const d3d11* = true
  const metal* = false
  const emscripten* = false
elif defined macosx:
  const gl* = false
  const d3d11* = false
  const metal* = true
  const emscripten* = false
elif defined linux:
  const gl* = true
  const d3d11* = false
  const metal* = false
  const emscripten* = false
else:
  error("unsupported platform")

when defined emscripten:
  {.passl: "-lGL -ldl".}
  {.passc: "-DSOKOL_GLES3".}
  {.passL: "-s MIN_WEBGL_VERSION=2 -s MAX_WEBGL_VERSION=2".}
elif defined windows:
  when not defined vcc:
    {.passl: "-lkernel32 -luser32 -lshell32 -lgdi32".}
  when defined gl:
    {.passc: "-DSOKOL_GLCORE".}
  else:
    {.passc: "-DSOKOL_D3D11".}
    when not defined vcc:
      {.passl: "-ld3d11 -ldxgi".}
elif defined macosx:
  {.passc: "-x objective-c".}
  {.passl: "-framework Cocoa -framework QuartzCore".}
  when defined gl:
    {.passc: "-DSOKOL_GLCORE".}
    {.passl: "-framework OpenGL".}
  else:
    {.passc: "-DSOKOL_METAL".}
    {.passl: "-framework Metal -framework MetalKit".}
elif defined linux:
  {.passc: "-DSOKOL_GLCORE".}
  {.passl: "-lX11 -lXi -lXcursor -lGL -lm -ldl -lpthread".}
else:
  error("unsupported platform")

## Convert a 4-element tuple of numbers to a gfx.Color
converter toColor*[R: SomeNumber, G: SomeNumber, B: SomeNumber, A: SomeNumber](
  rgba: tuple [r: R, g: G, b: B, a: A]): Color =
  Color(r: rgba.r.float32, g: rgba.g.float32, b: rgba.b.float32,
      a: rgba.a.float32)

## Convert a 3-element tuple of numbers to a gfx.Color
converter toColor*[R: SomeNumber, G: SomeNumber, B: SomeNumber](rgba: tuple [
    r: R, g: G, b: B]): Color =
  Color(r: rgba.r.float32, g: rgba.g.float32, b: rgba.b.float32, a: 1.float32)

{.passc: "-DSOKOL_NIM_IMPL".}
when defined(release):
  {.passc: "-DNDEBUG".}
{.compile: "c/sokol_gfx.c".}
