{ mkDerivation, base, Cabal, directory, fetchgit, filepath
, haskell-src-exts, optparse-applicative, process, split, stdenv
}:
mkDerivation {
  pname = "packunused";
  version = "0.1.1.4";
  src = fetchgit {
    url = "https://github.com/hvr/packunused";
    sha256 = "0354acn85dvl458rm0673zaa9rdizzzs67iraa52yrawd87cqz67";
    rev = "f73d42d8c13caad687bbbc0b84c6f0cb5ec53abe";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base Cabal directory filepath haskell-src-exts optparse-applicative
    process split
  ];
  homepage = "https://github.com/hvr/packunused";
  description = "Tool for detecting redundant Cabal package dependencies";
  license = stdenv.lib.licenses.bsd3;
}
