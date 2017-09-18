{ mkDerivation, base, bifunctors, Cabal, containers, cpphs, Diff
, directory, extra, fetchgit, filepath, formatting, ghc-mod, git
, haskell-src-exts, hlint, hscolour, hspec, optparse-applicative
, process, split, stdenv, strict, stylish-haskell, temporary, text
, transformers, unix
}:
mkDerivation {
  pname = "git-vogue";
  version = "0.2.2.0";
  src = fetchgit {
    url = "https://github.com/taktoa/git-vogue";
    sha256 = "0dbn5f3c4aighi0al0878l6j3irpz249sc268x6bqwww21kqd2s1";
    rev = "6c9f073874377be5f54a34c5552f692118f82a54";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers directory extra filepath formatting
    optparse-applicative process split text transformers unix
  ];
  executableHaskellDepends = [
    base bifunctors Cabal cpphs Diff directory ghc-mod haskell-src-exts
    hlint hscolour optparse-applicative process strict stylish-haskell
    text
  ];
  testHaskellDepends = [
    base containers directory filepath hspec process temporary
  ];
  testToolDepends = [ git ];
  homepage = "https://github.com/christian-marie/git-vogue";
  description = "A framework for pre-commit checks";
  license = stdenv.lib.licenses.bsd3;
}
