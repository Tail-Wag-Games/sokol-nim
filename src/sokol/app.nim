import ../sokol_app

export sokol_app

proc c_isvalid(): bool {.cdecl, importc: "sapp_isvalid".}
proc isvalid*(): bool =
  c_isvalid()

proc c_width(): int32 {.cdecl, importc: "sapp_width".}
proc width*(): int32 =
  c_width()

proc c_widthf(): float32 {.cdecl, importc: "sapp_widthf".}
proc widthf*(): float32 =
  c_widthf()

proc c_height(): int32 {.cdecl, importc: "sapp_height".}
proc height*(): int32 =
  c_height()

proc c_heightf(): float32 {.cdecl, importc: "sapp_heightf".}
proc heightf*(): float32 =
  c_heightf()

proc c_colorFormat(): int32 {.cdecl, importc: "sapp_color_format".}
proc colorFormat*(): int32 =
  c_colorFormat()

proc c_depthFormat(): int32 {.cdecl, importc: "sapp_depth_format".}
proc depthFormat*(): int32 =
  c_depthFormat()

proc c_sampleCount(): int32 {.cdecl, importc: "sapp_sample_count".}
proc sampleCount*(): int32 =
  c_sampleCount()

proc c_highDpi(): bool {.cdecl, importc: "sapp_high_dpi".}
proc highDpi*(): bool =
  c_highDpi()

proc c_dpiScale(): float32 {.cdecl, importc: "sapp_dpi_scale".}
proc dpiScale*(): float32 =
  c_dpiScale()

proc c_showKeyboard(show: bool): void {.cdecl, importc: "sapp_show_keyboard".}
proc showKeyboard*(show: bool): void =
  c_showKeyboard(show)

proc c_keyboardShown(): bool {.cdecl, importc: "sapp_keyboard_shown".}
proc keyboardShown*(): bool =
  c_keyboardShown()

proc c_isFullscreen(): bool {.cdecl, importc: "sapp_is_fullscreen".}
proc isFullscreen*(): bool =
  c_isFullscreen()

proc c_toggleFullscreen(): void {.cdecl, importc: "sapp_toggle_fullscreen".}
proc toggleFullscreen*(): void =
  c_toggleFullscreen()

proc c_showMouse(show: bool): void {.cdecl, importc: "sapp_show_mouse".}
proc showMouse*(show: bool): void =
  c_showMouse(show)

proc c_mouseShown(): bool {.cdecl, importc: "sapp_mouse_shown".}
proc mouseShown*(): bool =
  c_mouseShown()

proc c_lockMouse(lock: bool): void {.cdecl, importc: "sapp_lock_mouse".}
proc lockMouse*(lock: bool): void =
  c_lockMouse(lock)

proc c_mouseLocked(): bool {.cdecl, importc: "sapp_mouse_locked".}
proc mouseLocked*(): bool =
  c_mouseLocked()

proc c_setMouseCursor(cursor: MouseCursor): void {.cdecl,
    importc: "sapp_set_mouse_cursor".}
proc setMouseCursor*(cursor: MouseCursor): void =
  c_setMouseCursor(cursor)

proc c_getMouseCursor(): MouseCursor {.cdecl, importc: "sapp_get_mouse_cursor".}
proc getMouseCursor*(): MouseCursor =
  c_getMouseCursor()

proc c_userdata(): pointer {.cdecl, importc: "sapp_userdata".}
proc userdata*(): pointer =
  c_userdata()

proc c_queryDesc(): Desc {.cdecl, importc: "sapp_query_desc".}
proc queryDesc*(): Desc =
  c_queryDesc()

proc c_requestQuit(): void {.cdecl, importc: "sapp_request_quit".}
proc requestQuit*(): void =
  c_requestQuit()

proc c_cancelQuit(): void {.cdecl, importc: "sapp_cancel_quit".}
proc cancelQuit*(): void =
  c_cancelQuit()

proc c_quit(): void {.cdecl, importc: "sapp_quit".}
proc quit*(): void =
  c_quit()

proc c_consumeEvent(): void {.cdecl, importc: "sapp_consume_event".}
proc consumeEvent*(): void =
  c_consumeEvent()

proc c_frameCount(): uint64 {.cdecl, importc: "sapp_frame_count".}
proc frameCount*(): uint64 =
  c_frameCount()

proc c_frameDuration(): float64 {.cdecl, importc: "sapp_frame_duration".}
proc frameDuration*(): float64 =
  c_frameDuration()

proc c_setClipboardString(str: cstring): void {.cdecl,
    importc: "sapp_set_clipboard_string".}
proc setClipboardString*(str: cstring): void =
  c_setClipboardString(str)

proc c_getClipboardString(): cstring {.cdecl,
    importc: "sapp_get_clipboard_string".}
proc getClipboardString*(): cstring =
  c_getClipboardString()

proc c_setWindowTitle(str: cstring): void {.cdecl,
    importc: "sapp_set_window_title".}
proc setWindowTitle*(str: cstring): void =
  c_setWindowTitle(str)

proc c_setIcon(iconDesc: ptr IconDesc): void {.cdecl, importc: "sapp_set_icon".}
proc setIcon*(iconDesc: IconDesc): void =
  c_setIcon(addr(icon_desc))

proc c_getNumDroppedFiles(): int32 {.cdecl,
    importc: "sapp_get_num_dropped_files".}
proc getNumDroppedFiles*(): int32 =
  c_getNumDroppedFiles()

proc c_getDroppedFilePath(index: int32): cstring {.cdecl,
    importc: "sapp_get_dropped_file_path".}
proc getDroppedFilePath*(index: int32): cstring =
  c_getDroppedFilePath(index)

proc c_run(desc: ptr Desc): void {.cdecl, importc: "sapp_run".}
proc run*(desc: Desc): void =
  c_run(addr(desc))

proc c_eglGetDisplay(): pointer {.cdecl, importc: "sapp_egl_get_display".}
proc eglGetDisplay*(): pointer =
  c_eglGetDisplay()

proc c_eglGetContext(): pointer {.cdecl, importc: "sapp_egl_get_context".}
proc eglGetContext*(): pointer =
  c_eglGetContext()

proc c_html5AskLeaveSite(ask: bool): void {.cdecl,
    importc: "sapp_html5_ask_leave_site".}
proc html5AskLeaveSite*(ask: bool): void =
  c_html5AskLeaveSite(ask)

proc c_html5GetDroppedFileSize(index: int32): uint32 {.cdecl,
    importc: "sapp_html5_get_dropped_file_size".}
proc html5GetDroppedFileSize*(index: int32): uint32 =
  c_html5GetDroppedFileSize(index)

proc c_html5FetchDroppedFile(request: ptr Html5FetchRequest): void {.cdecl,
    importc: "sapp_html5_fetch_dropped_file".}
proc html5FetchDroppedFile*(request: Html5FetchRequest): void =
  c_html5FetchDroppedFile(addr(request))

proc c_metalGetDevice(): pointer {.cdecl, importc: "sapp_metal_get_device".}
proc metalGetDevice*(): pointer =
  c_metalGetDevice()

proc c_metalGetCurrentDrawable(): pointer {.cdecl,
    importc: "sapp_metal_get_current_drawable".}
proc metalGetCurrentDrawable*(): pointer =
  c_metalGetCurrentDrawable()

proc c_metalGetDepthStencilTexture(): pointer {.cdecl,
    importc: "sapp_metal_get_depth_stencil_texture".}
proc metalGetDepthStencilTexture*(): pointer =
  c_metalGetDepthStencilTexture()

proc c_metalGetMsaaColorTexture(): pointer {.cdecl,
    importc: "sapp_metal_get_msaa_color_texture".}
proc metalGetMsaaColorTexture*(): pointer =
  c_metalGetMsaaColorTexture()

proc c_macosGetWindow(): pointer {.cdecl, importc: "sapp_macos_get_window".}
proc macosGetWindow*(): pointer =
  c_macosGetWindow()

proc c_iosGetWindow(): pointer {.cdecl, importc: "sapp_ios_get_window".}
proc iosGetWindow*(): pointer =
  c_iosGetWindow()

proc c_d3d11GetDevice(): pointer {.cdecl, importc: "sapp_d3d11_get_device".}
proc d3d11GetDevice*(): pointer =
  c_d3d11GetDevice()

proc c_d3d11GetDeviceContext(): pointer {.cdecl,
    importc: "sapp_d3d11_get_device_context".}
proc d3d11GetDeviceContext*(): pointer =
  c_d3d11GetDeviceContext()

proc c_d3d11GetSwapChain(): pointer {.cdecl,
    importc: "sapp_d3d11_get_swap_chain".}
proc d3d11GetSwapChain*(): pointer =
  c_d3d11GetSwapChain()

proc c_d3d11GetRenderView(): pointer {.cdecl,
    importc: "sapp_d3d11_get_render_view".}
proc d3d11GetRenderView*(): pointer =
  c_d3d11GetRenderView()

proc c_d3d11GetResolveView(): pointer {.cdecl,
    importc: "sapp_d3d11_get_resolve_view".}
proc d3d11GetResolveView*(): pointer =
  c_d3d11GetResolveView()

proc c_d3d11GetDepthStencilView(): pointer {.cdecl,
    importc: "sapp_d3d11_get_depth_stencil_view".}
proc d3d11GetDepthStencilView*(): pointer =
  c_d3d11GetDepthStencilView()

proc c_win32GetHwnd(): pointer {.cdecl, importc: "sapp_win32_get_hwnd".}
proc win32GetHwnd*(): pointer =
  c_win32GetHwnd()

proc c_wgpuGetDevice(): pointer {.cdecl, importc: "sapp_wgpu_get_device".}
proc wgpuGetDevice*(): pointer =
  c_wgpuGetDevice()

proc c_wgpuGetRenderView(): pointer {.cdecl,
    importc: "sapp_wgpu_get_render_view".}
proc wgpuGetRenderView*(): pointer =
  c_wgpuGetRenderView()

proc c_wgpuGetResolveView(): pointer {.cdecl,
    importc: "sapp_wgpu_get_resolve_view".}
proc wgpuGetResolveView*(): pointer =
  c_wgpuGetResolveView()

proc c_wgpuGetDepthStencilView(): pointer {.cdecl,
    importc: "sapp_wgpu_get_depth_stencil_view".}
proc wgpuGetDepthStencilView*(): pointer =
  c_wgpuGetDepthStencilView()

proc c_glGetFramebuffer(): uint32 {.cdecl, importc: "sapp_gl_get_framebuffer".}
proc glGetFramebuffer*(): uint32 =
  c_glGetFramebuffer()

proc c_glGetMajorVersion(): int32 {.cdecl,
    importc: "sapp_gl_get_major_version".}
proc glGetMajorVersion*(): int32 =
  c_glGetMajorVersion()

proc c_glGetMinorVersion(): int32 {.cdecl,
    importc: "sapp_gl_get_minor_version".}
proc glGetMinorVersion*(): int32 =
  c_glGetMinorVersion()

proc c_androidGetNativeActivity(): pointer {.cdecl,
    importc: "sapp_android_get_native_activity".}
proc androidGetNativeActivity*(): pointer =
  c_androidGetNativeActivity()

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

{.passc: "-DSOKOL_NIM_IMPL".}
when defined(release):
  {.passc: "-DNDEBUG".}
{.compile: "c/sokol_app.c".}
