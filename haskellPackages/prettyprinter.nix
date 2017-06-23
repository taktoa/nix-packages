{ mkDerivation, ansi-wl-pprint, base, bytestring, criterion
, doctest, mtl, pgp-wordlist, QuickCheck, random, stdenv, tasty
, tasty-hunit, tasty-quickcheck, text, transformers
}:
mkDerivation {
  pname = "prettyprinter";
  version = "1.0.1";
  sha256 = "1dgc5ib5bb45kazbkgafkbi6fb7w5yyx8vcaiqa4y3g2gafzh8d8";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base text ];
  testHaskellDepends = [
    base bytestring doctest pgp-wordlist QuickCheck tasty tasty-hunit
    tasty-quickcheck text
  ];
  benchmarkHaskellDepends = [
    ansi-wl-pprint base criterion mtl random text transformers
  ];
  homepage = "http://github.com/quchen/prettyprinter";
  description = "A modern, easy to use, well-documented, extensible prettyprinter";
  license = stdenv.lib.licenses.bsd2;
}
