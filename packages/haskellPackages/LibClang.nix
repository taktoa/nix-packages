{ mkDerivation, base, bytestring, c2hs, llvm_38, clang_38, filepath
, hashable, mtl, ncurses, resourcet, stdenv, text, time
, transformers, transformers-base, vector
}:
mkDerivation {
  pname = "LibClang";
  version = "3.8.0";
  sha256 = "1p5r1m65gfdf7zkx2wbcbi5bfmlry1wllhqsxrdfi5xs9vq56p4l";
  libraryHaskellDepends = [
    base bytestring filepath hashable mtl resourcet text time
    transformers transformers-base vector
  ];
  patches = [ ./LibClang.patch ];
  librarySystemDepends = [ clang_38.cc ];
  libraryPkgconfigDepends = [ ncurses ];
  libraryToolDepends = [ llvm_38 c2hs ];
  extraLibraries = [ clang_38.cc ];
  homepage = "https://github.com/chetant/LibClang";
  description = "Haskell bindings for libclang (a C++ parsing library)";
  license = stdenv.lib.licenses.bsd3;
}
