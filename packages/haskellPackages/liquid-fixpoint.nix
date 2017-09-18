{ mkDerivation, ansi-terminal, array, ascii-progress, async
, attoparsec, base, bifunctors, binary, boxes, bytestring, cereal
, cmdargs, containers, deepseq, directory, dotgen, fetchgit, fgl
, fgl-visualize, filemanip, filepath, ghc-prim, hashable, intern
, located-base, mtl, ocaml, parallel, parsec, pretty, process
, stdenv, syb, tasty, tasty-hunit, tasty-rerun, text, text-format
, time, transformers, unordered-containers, z3
}:
mkDerivation {
  pname = "liquid-fixpoint";
  version = "0.6.0.1";
  src = fetchgit {
    url = "https://github.com/ucsd-progsys/liquid-fixpoint.git";
    sha256 = "1nnhjh7d9wdkxrqvkp0r61cdbd336rn1imrvmc30znxsxhrwypix";
    rev = "8ee28cc55c51bdd624e6b617705331cfcf4a9e39";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal array ascii-progress async attoparsec base bifunctors
    binary boxes bytestring cereal cmdargs containers deepseq directory
    dotgen fgl fgl-visualize filemanip filepath ghc-prim hashable
    intern located-base mtl parallel parsec pretty process syb text
    text-format time transformers unordered-containers
  ];
  executableHaskellDepends = [ base ];
  executableSystemDepends = [ ocaml ];
  testHaskellDepends = [
    base directory filepath process tasty tasty-hunit tasty-rerun text
  ];
  testSystemDepends = [ z3 ];
  homepage = "https://github.com/ucsd-progsys/liquid-fixpoint";
  description = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
  license = stdenv.lib.licenses.bsd3;
}
