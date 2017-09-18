{ mkDerivation, array, base, bytestring, containers, directory
, fetchgit, filepath, ghc, ghc-paths, haskeline, process, stdenv
, syb, time, transformers, unix
}:
mkDerivation {
  pname = "ghci-ng";
  version = "0.0.0";
  src = fetchgit {
    url = "https://github.com/chrisdone/ghci-ng.git";
    sha256 = "8c0efb239942834b0e7cdb332ced57a753b9b57e765453876f5dfe1573bb2c0c";
    rev = "2d65952f5127afe96b4c28ba6c36842c3cd03b38";
  };
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    array base bytestring containers directory filepath ghc ghc-paths
    haskeline process syb time transformers unix
  ];
  homepage = "https://github.com/chrisdone/ghci-ng";
  description = "Next generation GHCi";
  license = stdenv.lib.licenses.bsd3;
}
