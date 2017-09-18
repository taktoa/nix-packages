{ mkDerivation, fetchFromGitHub, base, bifunctors, bytestring, cmdargs, containers, directory
, filepath, genifunctors, geniplate, ghc, ghc-paths, ghc-prim, jukebox, mtl, pretty, pretty-show
, process, QuickCheck, quickspec, SHA, split, stdenv, stm, stm-promise, structural-induction
, template-haskell, time, transformers, unification-fd, void
}:
mkDerivation {
  pname = "hipspec";
  version = "3.0";
  src = fetchFromGitHub {
    owner  = "danr";
    repo   = "hipspec";
    rev    = "814319b51565aeb56f8983ec8e07d48d1185a08c";
    sha256 = "15g8clq61m7y2prf83j8lqqx1ixbagsnxrqidcx5zvxyymp9p72j";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base QuickCheck quickspec ];
  executableHaskellDepends = [
    base bifunctors bytestring cmdargs containers directory filepath
    genifunctors geniplate ghc ghc-paths ghc-prim jukebox mtl pretty
    pretty-show process quickspec SHA split stm stm-promise
    structural-induction template-haskell time transformers
    unification-fd void
  ];
  homepage = "http://www.github.com/danr/hipspec";
  description = "HipSpec: prove properties of Haskell programs, with theory exploration from QuickSpec";
  license = stdenv.lib.licenses.gpl3;
}
