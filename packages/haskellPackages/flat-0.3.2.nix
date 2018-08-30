{ mkDerivation, array, base, bytestring, containers, deepseq, dlist
, doctest, fetchFromGitHub, filemanip, ghc-prim, mono-traversable, pretty
, primitive, quickcheck-instances, stdenv, tasty, tasty-hunit
, tasty-quickcheck, text, vector
}:
mkDerivation {
  pname = "flat";
  version = "0.3.2";
  src = fetchFromGitHub {
    owner  = "Quid2";
    repo   = "flat";
    rev    = "5366f64ca89579374172d193f1fdd9a9e4d5c97b";
    sha256 = "1vhfilfm7kg8r5zy0fls2npjc6fb6ysyynizpfgmlmgj8hcq2fi4";
  };
  libraryHaskellDepends = [
    array base bytestring containers deepseq dlist ghc-prim
    mono-traversable pretty primitive text vector
  ];
  testHaskellDepends = [
    base bytestring containers deepseq doctest filemanip ghc-prim
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
  ];
  homepage = "http://github.com/Quid2/flat";
  description = "Principled and efficient bit-oriented binary serialization";
  license = stdenv.lib.licenses.bsd3;
}
