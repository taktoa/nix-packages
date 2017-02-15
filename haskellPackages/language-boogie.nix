{ mkDerivation, fetchFromGitHub, ansi-terminal, ansi-wl-pprint, base, cmdargs
, containers, html, lens, logict, mtl, parsec, random, stdenv
, stream-monad, syb, time, transformers, z3
}:
mkDerivation {
  pname = "language-boogie";
  version = "20151230";
  src = fetchFromGitHub {
    owner  = "taktoa";
    repo   = "language-boogie";
    rev    = "5d668f9a9d220a0be5ee5864e8a9c29225a4534f";
    sha256 = "0yvys2h80s2c7ff29bmi618pq6v3kgdxkabi0h5zdxhsilndxvcy";
  };
  isLibrary = true;
  isExecutable = true;
  jailbreak = true;
  libraryHaskellDepends = [
    ansi-wl-pprint base containers html lens logict mtl parsec random
    stream-monad syb transformers z3
  ];
  executableHaskellDepends = [
    ansi-terminal ansi-wl-pprint base cmdargs containers html lens
    logict mtl parsec random stream-monad syb time transformers z3
  ];
  homepage = "https://bitbucket.org/nadiapolikarpova/boogaloo";
  description = "Interpreter and language infrastructure for Boogie";
  license = stdenv.lib.licenses.bsd3;
}
