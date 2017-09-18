{ mkDerivation, fetchFromGitHub, base, logict, stdenv }:
mkDerivation {
  pname = "stream-monad";
  version = "0.4.0.2";
  src = fetchFromGitHub {
    repo   = "stream-monad";
    owner  = "pepeiborra";
    rev    = "1249cb0e437b63f46ba249a475a9aae4cc67f106";
    sha256 = "0zrxcnmwy1hf4pg1r6nqa8pg9ldq8l73k95spbvig9zb5qm0yvkw";
  };
  libraryHaskellDepends = [ base logict ];
  homepage = "http://github.com/sebfisch/stream-monad";
  description = "Simple, Fair and Terminating Backtracking Monad";
  license = stdenv.lib.licenses.bsd3;
}
