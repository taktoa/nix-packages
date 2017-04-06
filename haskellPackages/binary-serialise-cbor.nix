{ mkDerivation, aeson, array, base, base16-bytestring
, base64-bytestring, binary, bytestring, containers, deepseq
, directory, fetchgit, filepath, ghc-prim, half, hashable
, integer-gmp, old-locale, QuickCheck, quickcheck-instances
, scientific, stdenv, tasty, tasty-hunit, tasty-quickcheck, text
, time, unordered-containers, vector
}:
mkDerivation {
  pname = "binary-serialise-cbor";
  version = "0.1.1.0";
  src = fetchgit {
    url = "https://github.com/well-typed/binary-serialise-cbor.git";
    sha256 = "1j72jfx83fr9xqqhbm769r3wcy05ixj83hl6qmhwy5adxfazfid5";
    rev = "f5a286232e478802d45aa06e3d3f0a180d67d296";
  };
  libraryHaskellDepends = [
    array base bytestring containers ghc-prim hashable integer-gmp
    old-locale text time unordered-containers vector
  ];
  testHaskellDepends = [
    aeson array base base16-bytestring base64-bytestring binary
    bytestring containers deepseq directory filepath ghc-prim half
    hashable old-locale QuickCheck quickcheck-instances scientific
    tasty tasty-hunit tasty-quickcheck text time unordered-containers
    vector
  ];
  description = "Yet Another Binary Serialisation Library";
  license = stdenv.lib.licenses.bsd3;
}
