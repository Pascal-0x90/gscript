//go_import:github.com/Pascal-0x90/gscript/internal/linker_test/testlib as testlib

function Deploy() {
  param1 = "hello";
  param2 = "world";
  param3 = "this is longggg";
  ret = testlib.Test1("http://google.com/search");
  console.log(ret[0].Host);
}