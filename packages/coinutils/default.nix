{ stdenv, fetchFromGitHub, file, pkgconfig
}:

with { version = "2.10.14"; };

stdenv.mkDerivation rec {
  name = "coinutils-${version}";

  src = fetchFromGitHub {
    owner  = "coin-or";
    repo   = "CoinUtils";
    rev    = "releases/${version}";
    sha256 = "190mn1s4272jv0vbhi1f8qvvskrnvwxmcf0yg5pznck3i3792l10";
  };

  buildInputs = [
    file pkgconfig
  ];
}
