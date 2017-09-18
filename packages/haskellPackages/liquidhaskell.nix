{ mkDerivation, aeson, array, base, bifunctors, binary, bytestring
, Cabal, cereal, cmdargs, containers, data-default, deepseq, Diff
, directory, exceptions, fetchgit, filepath, fingertree, ghc
, ghc-paths, ghc-prim, hashable, hint, hpc, hscolour
, liquid-fixpoint, liquiddesugar, located-base, mtl
, optparse-applicative, parsec, pretty, process, QuickCheck, stdenv
, stm, syb, tagged, tasty, tasty-ant-xml, tasty-hunit, tasty-rerun
, template-haskell, temporary, text, text-format, th-lift, time
, transformers, unordered-containers, vector, z3
}:
mkDerivation {
  pname = "liquidhaskell";
  version = "0.7.0.0";
  src = fetchgit {
    url = "https://github.com/ucsd-progsys/liquidhaskell.git";
    sha256 = "0jh9ngnmpqm83w6f48qnrvmpnzd7njy84ff0kkk17p2fkk3gqdc5";
    rev = "d4718df577d05d706928f30b888952b24034273c";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson array base bifunctors binary bytestring Cabal cereal cmdargs
    containers data-default deepseq Diff directory exceptions filepath
    fingertree ghc ghc-paths ghc-prim hashable hpc hscolour
    liquid-fixpoint liquiddesugar located-base mtl parsec pretty
    process QuickCheck syb template-haskell temporary text text-format
    th-lift time transformers unordered-containers vector
  ];
  executableHaskellDepends = [
    base cmdargs deepseq ghc hint liquid-fixpoint located-base pretty
    process time
  ];
  testHaskellDepends = [
    base containers directory filepath mtl optparse-applicative process
    stm tagged tasty tasty-ant-xml tasty-hunit tasty-rerun transformers
  ];
  testSystemDepends = [ z3 ];
  homepage = "http://goto.ucsd.edu/liquidhaskell";
  description = "Liquid Types for Haskell";
  license = stdenv.lib.licenses.bsd3;
}
