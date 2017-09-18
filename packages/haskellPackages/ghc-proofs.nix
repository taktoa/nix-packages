{ mkDerivation, fetchFromGitHub, base, ghc, stdenv }:
mkDerivation {
  pname = "ghc-proofs";
  version = "0.1";
  src = fetchFromGitHub {
    owner  = "nomeata";
    repo   = "ghc-proofs";
    rev    = "439d40cd5d2396c19ec423a72e9720f211bcce12";
    sha256 = "0rqv50rik17xxmgq7856qhp3d86qpq5nxzfli72xgl5h7ba4ixfi";
  };
  libraryHaskellDepends = [ base ghc ];
  homepage = "https://github.com/nomeata/ghc-proofs";
  description = "GHC plugin to prove program equations by simplification";
  license = stdenv.lib.licenses.mit;
}
