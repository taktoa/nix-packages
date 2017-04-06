{ mkDerivation, array, base, containers, directory, fetchgit, ghc
, hpc, stdenv, template-haskell, time
}:
mkDerivation {
  pname = "liquiddesugar";
  version = "8.0.0.0";
  src = fetchgit {
    url = "https://github.com/christetreault/liquiddesugar.git";
    sha256 = "0wlqzki4i8cmnv6yhc8599in5493gzw2i9w4526rf3if6gcfj4zk";
    rev = "1780f5f8dee933c4243e4f2e891e8f25621fb60b";
  };
  libraryHaskellDepends = [
    array base containers directory ghc hpc template-haskell time
  ];
  homepage = "http://goto.ucsd.edu/liquidhaskell";
  description = "Haskell to GHC Core Desugarar for Liquid Haskell";
  license = stdenv.lib.licenses.bsd3;
}
