{ mkDerivation, fetchFromGitHub, stdenv
, array, base, binary, bytestring, containers, deepseq, directory, filepath
, pretty, process, QuickCheck, tagged, tasty, tasty-hunit, tasty-quickcheck
, time, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "2.1.0.0";
  src = fetchFromGitHub {
    owner  = "taktoa";
    repo   = "cabal";
    rev    = "87f2bf81d7ffb14f52e06c02d95f82fced67d1f3";
    sha256 = "1dygjf85brrzdwig1lj3pxihcsiahs782z0qp06af44ipnb5vrvm";
  };
  prePatch = ''
    cd Cabal
  '';
  libraryHaskellDepends = [
    array base binary bytestring containers deepseq directory filepath
    pretty process time unix
  ];
  testHaskellDepends = [
    array base containers directory filepath pretty QuickCheck tagged
    tasty tasty-hunit tasty-quickcheck
  ];
  doCheck = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "A framework for packaging Haskell software";
  license = stdenv.lib.licenses.bsd3;
}
