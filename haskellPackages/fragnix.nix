{ mkDerivation, aeson, base, bytestring, clock, containers
, criterion, deepseq, directory, fetchgit, filepath, hashable
, haskell-names, haskell-src-exts, process, stdenv, tagged, tasty
, tasty-golden, text, transformers
}:
mkDerivation {
  pname = "fragnix";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/phischu/fragnix.git";
    sha256 = "1gyvfpwg5q5a61l87j2hw5j5ncajjkcdjjbx4j3h3ljhbasr8qj2";
    rev = "5251ab405d79bb0dfb33d399a2a3d05f471474d3";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring containers directory filepath hashable
    haskell-names haskell-src-exts process tagged text transformers
  ];
  executableHaskellDepends = [
    aeson base bytestring clock containers directory filepath hashable
    haskell-names haskell-src-exts process tagged text transformers
  ];
  testHaskellDepends = [
    aeson base bytestring containers directory filepath hashable
    haskell-names haskell-src-exts process tagged tasty tasty-golden
    text transformers
  ];
  benchmarkHaskellDepends = [
    base containers criterion deepseq directory haskell-names
    haskell-src-exts
  ];
  description = "Immutable, fragment-based dependency management!";
  license = stdenv.lib.licenses.bsd3;
}
