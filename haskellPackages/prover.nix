{ mkDerivation, base, fetchgit, hashable, liquid-fixpoint, parsec
, stdenv, unordered-containers
}:
mkDerivation {
  pname = "prover";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/ucsd-progsys/prover.git";
    sha256 = "1clw3f3aq6hrgks629s3f2g3nm72k8jfq3fbx66v1hz2mr0kwxg7";
    rev = "f6a47df5a079f4b9586829203015cce6f82cebbb";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base hashable liquid-fixpoint parsec unordered-containers
  ];
  executableHaskellDepends = [
    base hashable liquid-fixpoint parsec unordered-containers
  ];
  description = "Automatic Prover of Logical Predicates";
  license = stdenv.lib.licenses.bsd3;
}
