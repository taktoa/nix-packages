{ mkDerivation, base, binary, bytestring, Cabal, cabal-helper
, containers, deepseq, directory, djinn-ghc, doctest, extra
, fclabels, filepath, ghc, ghc-boot, ghc-paths, ghc-syb-utils
, haskell-src-exts, hlint, hspec, monad-control, monad-journal, mtl
, old-time, optparse-applicative, pipes, pretty, process, safe
, semigroups, split, stdenv, syb, template-haskell, temporary, text
, time, transformers, transformers-base
}:
mkDerivation {
  pname = "ghc-mod";
  version = "5.7.0.0";
  sha256 = "1jp5p6pjx3nzfx7xr3hgw9d4l9vlsijj0kpagj016rdbi4629ara";
  revision = "1";
  editedCabalFile = "2a98257b2c370e8d557b4924c77e088d8220e17558317174dfc35b2e0c94d1e3";
  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [
    base Cabal containers filepath process template-haskell
    transformers
  ];
  libraryHaskellDepends = [
    base binary bytestring cabal-helper containers deepseq directory
    djinn-ghc extra fclabels filepath ghc ghc-boot ghc-paths
    ghc-syb-utils haskell-src-exts hlint monad-control monad-journal
    mtl old-time optparse-applicative pipes pretty process safe split
    syb template-haskell temporary text time transformers
    transformers-base
  ];
  executableHaskellDepends = [
    base binary deepseq directory fclabels filepath ghc monad-control
    mtl old-time optparse-applicative pretty process semigroups split
    time
  ];
  testHaskellDepends = [ base doctest hspec ];
  homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
  description = "Happy Haskell Programming";
  license = stdenv.lib.licenses.agpl3;
}
