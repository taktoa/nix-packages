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
    sha256 = "13zqdqg6q8xrww760r6p3a4byhxcy3fbrdmpfpyxc2krslmnlgid";
    rev = "c7b1b628c1e1c5e8da468c2e3e05d8f5eb6c0e75";
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
