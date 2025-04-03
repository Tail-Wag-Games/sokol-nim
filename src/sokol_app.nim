const
  maxTouchpoints* = 8
  maxMousebuttons* = 3
  maxKeycodes* = 512
  maxIconimages* = 8

type
  EventType* {.size: sizeof(int32).} = enum
    eventTypeInvalid,
    eventTypeKeyDown,
    eventTypeKeyUp,
    eventTypeChar,
    eventTypeMouseDown,
    eventTypeMouseUp,
    eventTypeMouseScroll,
    eventTypeMouseMove,
    eventTypeMouseEnter,
    eventTypeMouseLeave,
    eventTypeTouchesBegan,
    eventTypeTouchesMoved,
    eventTypeTouchesEnded,
    eventTypeTouchesCancelled,
    eventTypeResized,
    eventTypeIconified,
    eventTypeRestored,
    eventTypeFocused,
    eventTypeUnfocused,
    eventTypeSuspended,
    eventTypeResumed,
    eventTypeQuitRequested,
    eventTypeClipboardPasted,
    eventTypeFilesDropped,

type
  Keycode* {.size: sizeof(int32).} = enum
    keyCodeInvalid = 0,
    keyCodeSpace = 32,
    keyCodeApostrophe = 39,
    keyCodeComma = 44,
    keyCodeMinus = 45,
    keyCodePeriod = 46,
    keyCodeSlash = 47,
    keyCode0 = 48,
    keyCode1 = 49,
    keyCode2 = 50,
    keyCode3 = 51,
    keyCode4 = 52,
    keyCode5 = 53,
    keyCode6 = 54,
    keyCode7 = 55,
    keyCode8 = 56,
    keyCode9 = 57,
    keyCodeSemicolon = 59,
    keyCodeEqual = 61,
    keyCodeA = 65,
    keyCodeB = 66,
    keyCodeC = 67,
    keyCodeD = 68,
    keyCodeE = 69,
    keyCodeF = 70,
    keyCodeG = 71,
    keyCodeH = 72,
    keyCodeI = 73,
    keyCodeJ = 74,
    keyCodeK = 75,
    keyCodeL = 76,
    keyCodeM = 77,
    keyCodeN = 78,
    keyCodeO = 79,
    keyCodeP = 80,
    keyCodeQ = 81,
    keyCodeR = 82,
    keyCodeS = 83,
    keyCodeT = 84,
    keyCodeU = 85,
    keyCodeV = 86,
    keyCodeW = 87,
    keyCodeX = 88,
    keyCodeY = 89,
    keyCodeZ = 90,
    keyCodeLeftBracket = 91,
    keyCodeBackslash = 92,
    keyCodeRightBracket = 93,
    keyCodeGraveAccent = 96,
    keyCodeWorld1 = 161,
    keyCodeWorld2 = 162,
    keyCodeEscape = 256,
    keyCodeEnter = 257,
    keyCodeTab = 258,
    keyCodeBackspace = 259,
    keyCodeInsert = 260,
    keyCodeDelete = 261,
    keyCodeRight = 262,
    keyCodeLeft = 263,
    keyCodeDown = 264,
    keyCodeUp = 265,
    keyCodePageUp = 266,
    keyCodePageDown = 267,
    keyCodeHome = 268,
    keyCodeEnd = 269,
    keyCodeCapsLock = 280,
    keyCodeScrollLock = 281,
    keyCodeNumLock = 282,
    keyCodePrintScreen = 283,
    keyCodePause = 284,
    keyCodeF1 = 290,
    keyCodeF2 = 291,
    keyCodeF3 = 292,
    keyCodeF4 = 293,
    keyCodeF5 = 294,
    keyCodeF6 = 295,
    keyCodeF7 = 296,
    keyCodeF8 = 297,
    keyCodeF9 = 298,
    keyCodeF10 = 299,
    keyCodeF11 = 300,
    keyCodeF12 = 301,
    keyCodeF13 = 302,
    keyCodeF14 = 303,
    keyCodeF15 = 304,
    keyCodeF16 = 305,
    keyCodeF17 = 306,
    keyCodeF18 = 307,
    keyCodeF19 = 308,
    keyCodeF20 = 309,
    keyCodeF21 = 310,
    keyCodeF22 = 311,
    keyCodeF23 = 312,
    keyCodeF24 = 313,
    keyCodeF25 = 314,
    keyCodeKp0 = 320,
    keyCodeKp1 = 321,
    keyCodeKp2 = 322,
    keyCodeKp3 = 323,
    keyCodeKp4 = 324,
    keyCodeKp5 = 325,
    keyCodeKp6 = 326,
    keyCodeKp7 = 327,
    keyCodeKp8 = 328,
    keyCodeKp9 = 329,
    keyCodeKpDecimal = 330,
    keyCodeKpDivide = 331,
    keyCodeKpMultiply = 332,
    keyCodeKpSubtract = 333,
    keyCodeKpAdd = 334,
    keyCodeKpEnter = 335,
    keyCodeKpEqual = 336,
    keyCodeLeftShift = 340,
    keyCodeLeftControl = 341,
    keyCodeLeftAlt = 342,
    keyCodeLeftSuper = 343,
    keyCodeRightShift = 344,
    keyCodeRightControl = 345,
    keyCodeRightAlt = 346,
    keyCodeRightSuper = 347,
    keyCodeMenu = 348,

type
  AndroidTooltype* {.size: sizeof(int32).} = enum
    androidtooltypeUnknown = 0,
    androidtooltypeFinger = 1,
    androidtooltypeStylus = 2,
    androidtooltypeMouse = 3,

type Touchpoint* = object
  identifier*: uint
  posX*: float32
  posY*: float32
  androidTooltype*: AndroidTooltype
  changed*: bool

type
  Mousebutton* {.size: sizeof(int32).} = enum
    mouseButtonLeft = 0,
    mouseButtonRight = 1,
    mouseButtonMiddle = 2,
    mouseButtonInvalid = 256,

const
  modifierShift* = 1
  modifierCtrl* = 2
  modifierAlt* = 4
  modifierSuper* = 8
  modifierLmb* = 256
  modifierRmb* = 512
  modifierMmb* = 1024

type Event* = object
  frameCount*: uint64
  `type`*: EventType
  keyCode*: Keycode
  charCode*: uint32
  keyRepeat*: bool
  modifiers*: uint32
  mouseButton*: Mousebutton
  mouseX*: float32
  mouseY*: float32
  mouseDx*: float32
  mouseDy*: float32
  scrollX*: float32
  scrollY*: float32
  numTouches*: int32
  touches*: array[8, Touchpoint]
  windowWidth*: int32
  windowHeight*: int32
  framebufferWidth*: int32
  framebufferHeight*: int32

converter toEventtouches*[N: static[int]](items: array[N, Touchpoint]): array[8, Touchpoint] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

type Range* = object
  `addr`*: pointer
  size*: int

type ImageDesc* = object
  width*: int32
  height*: int32
  pixels*: Range

type IconDesc* = object
  sokolDefault*: bool
  images*: array[8, ImageDesc]

converter toIconDescimages*[N: static[int]](items: array[N, ImageDesc]): array[
    8, ImageDesc] =
  static: assert(N <= 8)
  for index, item in items.pairs: result[index] = item

type Allocator* = object
  allocFn*: proc(a1: int, a2: pointer): pointer {.cdecl.}
  freeFn*: proc(a1: pointer, a2: pointer) {.cdecl.}
  userData*: pointer

type
  LogItem* {.size: sizeof(int32).} = enum
    logitemOk,
    logitemMallocFailed,
    logitemMacosInvalidNsopenglProfile,
    logitemWin32LoadOpengl32DllFailed,
    logitemWin32CreateHelperWindowFailed,
    logitemWin32HelperWindowGetdcFailed,
    logitemWin32DummyContextSetPixelformatFailed,
    logitemWin32CreateDummyContextFailed,
    logitemWin32DummyContextMakeCurrentFailed,
    logitemWin32GetPixelformatAttribFailed,
    logitemWin32WglFindPixelformatFailed,
    logitemWin32WglDescribePixelformatFailed,
    logitemWin32WglSetPixelformatFailed,
    logitemWin32WglArbCreateContextRequired,
    logitemWin32WglArbCreateContextProfileRequired,
    logitemWin32WglOpenglVersionNotSupported,
    logitemWin32WglOpenglProfileNotSupported,
    logitemWin32WglIncompatibleDeviceContext,
    logitemWin32WglCreateContextAttribsFailedOther,
    logitemWin32D3d11CreateDeviceAndSwapchainWithDebugFailed,
    logitemWin32D3d11GetIdxgifactoryFailed,
    logitemWin32D3d11GetIdxgiadapterFailed,
    logitemWin32D3d11QueryInterfaceIdxgidevice1Failed,
    logitemWin32RegisterRawInputDevicesFailedMouseLock,
    logitemWin32RegisterRawInputDevicesFailedMouseUnlock,
    logitemWin32GetRawInputDataFailed,
    logitemLinuxGlxLoadLibglFailed,
    logitemLinuxGlxLoadEntryPointsFailed,
    logitemLinuxGlxExtensionNotFound,
    logitemLinuxGlxQueryVersionFailed,
    logitemLinuxGlxVersionTooLow,
    logitemLinuxGlxNoGlxfbconfigs,
    logitemLinuxGlxNoSuitableGlxfbconfig,
    logitemLinuxGlxGetVisualFromFbconfigFailed,
    logitemLinuxGlxRequiredExtensionsMissing,
    logitemLinuxGlxCreateContextFailed,
    logitemLinuxGlxCreateWindowFailed,
    logitemLinuxX11CreateWindowFailed,
    logitemLinuxEglBindOpenglApiFailed,
    logitemLinuxEglBindOpenglEsApiFailed,
    logitemLinuxEglGetDisplayFailed,
    logitemLinuxEglInitializeFailed,
    logitemLinuxEglNoConfigs,
    logitemLinuxEglNoNativeVisual,
    logitemLinuxEglGetVisualInfoFailed,
    logitemLinuxEglCreateWindowSurfaceFailed,
    logitemLinuxEglCreateContextFailed,
    logitemLinuxEglMakeCurrentFailed,
    logitemLinuxX11OpenDisplayFailed,
    logitemLinuxX11QuerySystemDpiFailed,
    logitemLinuxX11DroppedFileUriWrongScheme,
    logitemLinuxX11FailedToBecomeOwnerOfClipboard,
    logitemAndroidUnsupportedInputEventInputCb,
    logitemAndroidUnsupportedInputEventMainCb,
    logitemAndroidReadMsgFailed,
    logitemAndroidWriteMsgFailed,
    logitemAndroidMsgCreate,
    logitemAndroidMsgResume,
    logitemAndroidMsgPause,
    logitemAndroidMsgFocus,
    logitemAndroidMsgNoFocus,
    logitemAndroidMsgSetNativeWindow,
    logitemAndroidMsgSetInputQueue,
    logitemAndroidMsgDestroy,
    logitemAndroidUnknownMsg,
    logitemAndroidLoopThreadStarted,
    logitemAndroidLoopThreadDone,
    logitemAndroidNativeActivityOnstart,
    logitemAndroidNativeActivityOnresume,
    logitemAndroidNativeActivityOnsaveinstancestate,
    logitemAndroidNativeActivityOnwindowfocuschanged,
    logitemAndroidNativeActivityOnpause,
    logitemAndroidNativeActivityOnstop,
    logitemAndroidNativeActivityOnnativewindowcreated,
    logitemAndroidNativeActivityOnnativewindowdestroyed,
    logitemAndroidNativeActivityOninputqueuecreated,
    logitemAndroidNativeActivityOninputqueuedestroyed,
    logitemAndroidNativeActivityOnconfigurationchanged,
    logitemAndroidNativeActivityOnlowmemory,
    logitemAndroidNativeActivityOndestroy,
    logitemAndroidNativeActivityDone,
    logitemAndroidNativeActivityOncreate,
    logitemAndroidCreateThreadPipeFailed,
    logitemAndroidNativeActivityCreateSuccess,
    logitemWgpuSwapchainCreateSurfaceFailed,
    logitemWgpuSwapchainCreateSwapchainFailed,
    logitemWgpuSwapchainCreateDepthStencilTextureFailed,
    logitemWgpuSwapchainCreateDepthStencilViewFailed,
    logitemWgpuSwapchainCreateMsaaTextureFailed,
    logitemWgpuSwapchainCreateMsaaViewFailed,
    logitemWgpuRequestDeviceStatusError,
    logitemWgpuRequestDeviceStatusUnknown,
    logitemWgpuRequestAdapterStatusUnavailable,
    logitemWgpuRequestAdapterStatusError,
    logitemWgpuRequestAdapterStatusUnknown,
    logitemWgpuCreateInstanceFailed,
    logitemImageDataSizeMismatch,
    logitemDroppedFilePathTooLong,
    logitemClipboardStringTooBig,

type Logger* = object
  fn*: proc(a1: cstring, a2: uint32, a3: uint32, a4: cstring, a5: uint32,
      a6: cstring, a7: pointer) {.cdecl.}
  userData*: pointer

type Desc* = object
  initCb*: proc() {.cdecl.}
  frameCb*: proc() {.cdecl.}
  cleanupCb*: proc() {.cdecl.}
  eventCb*: proc(a1: ptr Event) {.cdecl.}
  userData*: pointer
  initUserdataCb*: proc(a1: pointer) {.cdecl.}
  frameUserdataCb*: proc(a1: pointer) {.cdecl.}
  cleanupUserdataCb*: proc(a1: pointer) {.cdecl.}
  eventUserdataCb*: proc(a1: ptr Event, a2: pointer) {.cdecl.}
  width*: int32
  height*: int32
  sampleCount*: int32
  swapInterval*: int32
  highDpi*: bool
  fullscreen*: bool
  alpha*: bool
  windowTitle*: cstring
  enableClipboard*: bool
  clipboardSize*: int32
  enableDragndrop*: bool
  maxDroppedFiles*: int32
  maxDroppedFilePathLength*: int32
  icon*: IconDesc
  allocator*: Allocator
  logger*: Logger
  glMajorVersion*: int32
  glMinorVersion*: int32
  win32ConsoleUtf8*: bool
  win32ConsoleCreate*: bool
  win32ConsoleAttach*: bool
  html5CanvasSelector*: cstring
  html5CanvasResize*: bool
  html5PreserveDrawingBuffer*: bool
  html5PremultipliedAlpha*: bool
  html5AskLeaveSite*: bool
  html5UpdateDocumentTitle*: bool
  html5BubbleMouseEvents*: bool
  html5BubbleTouchEvents*: bool
  html5BubbleWheelEvents*: bool
  html5BubbleKeyEvents*: bool
  html5BubbleCharEvents*: bool
  html5UseEmscSetMainLoop*: bool
  html5EmscSetMainLoopSimulateInfiniteLoop*: bool
  iosKeyboardResizesCanvas*: bool

type
  Html5FetchError* {.size: sizeof(int32).} = enum
    html5FetchErrorNoError,
    html5FetchErrorBufferTooSmall,
    html5FetchErrorOther,

type Html5FetchResponse* = object
  succeeded*: bool
  errorCode*: Html5FetchError
  fileIndex*: int32
  data*: Range
  buffer*: Range
  userData*: pointer

type Html5FetchRequest* = object
  droppedFileIndex*: int32
  callback*: proc(a1: ptr Html5FetchResponse) {.cdecl.}
  buffer*: Range
  userData*: pointer

type
  MouseCursor* {.size: sizeof(int32).} = enum
    mousecursorDefault = 0,
    mousecursorArrow = 1,
    mousecursorIbeam = 2,
    mousecursorCrosshair = 3,
    mousecursorPointingHand = 4,
    mousecursorResizeEw = 5,
    mousecursorResizeNs = 6,
    mousecursorResizeNwse = 7,
    mousecursorResizeNesw = 8,
    mousecursorResizeAll = 9,
    mousecursorNotAllowed = 10,
