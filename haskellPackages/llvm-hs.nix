{ mkDerivation, array, base, bytestring, Cabal, containers
, llvm-config, llvm-hs-pure, mtl, parsec, pretty-show, QuickCheck
, stdenv, tasty, tasty-hunit, tasty-quickcheck, template-haskell
, temporary, transformers, transformers-compat, utf8-string
}:
mkDerivation {
  pname = "llvm-hs";
  version = "4.0.0.0";
  sha256 = "1dckdkj6xvdps1kvg9ra721bvy8wskgg0l9233qxjwqg3a7parwz";
  setupHaskellDepends = [ base Cabal containers ];
  libraryHaskellDepends = [
    array base bytestring containers llvm-hs-pure mtl parsec
    template-haskell transformers transformers-compat utf8-string
  ];
  libraryToolDepends = [ llvm-config ];
  testHaskellDepends = [
    base bytestring containers llvm-hs-pure mtl pretty-show QuickCheck
    tasty tasty-hunit tasty-quickcheck temporary transformers
    transformers-compat
  ];
  homepage = "http://github.com/llvm-hs/llvm-hs/";
  description = "General purpose LLVM bindings";
  license = stdenv.lib.licenses.bsd3;
}
