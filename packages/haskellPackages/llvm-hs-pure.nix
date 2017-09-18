{ mkDerivation, base, containers, mtl, parsec, stdenv, tasty
, tasty-hunit, template-haskell, transformers, transformers-compat
}:
mkDerivation {
  pname = "llvm-hs-pure";
  version = "4.0.0.0";
  sha256 = "1z9r0qfzj738g0l8f5lbn5lx122p4gyg4gg9njpxjnwmmi532lkl";
  libraryHaskellDepends = [
    base containers mtl parsec template-haskell transformers
    transformers-compat
  ];
  testHaskellDepends = [
    base containers mtl tasty tasty-hunit transformers
    transformers-compat
  ];
  homepage = "http://github.com/llvm-hs/llvm-hs/";
  description = "Pure Haskell LLVM functionality (no FFI)";
  license = stdenv.lib.licenses.bsd3;
}
