//go_import:github.com/Pascal-0x90/gscript/tools/linker_test/typelib as typelib

function Deploy() {
  val = 12345
  console.log(typelib.TakePointer(val))
  console.log(typelib.TakeHandle(val))
  var naming = G.rand.GetAlphaString(4)
  console.log(naming)
  DebugConsole()
}