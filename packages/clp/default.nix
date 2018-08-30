{ stdenv, fetchFromGitHub, file, pkgconfig,
  coinutils, gfortran, glpk, blas, liblapack
}:

with { version = "1.16.11"; };

stdenv.mkDerivation rec {
  name = "clp-${version}";

  src = fetchFromGitHub {
    owner  = "coin-or";
    repo   = "Clp";
    rev    = "releases/${version}";
    sha256 = "1qskgip1j4xfk285v3rc1kz0mmnszhsm56z8gg0sbdlwx9rz00q4";
  };

  buildInputs = [
    file pkgconfig
    coinutils gfortran glpk blas liblapack
  ];

  # enableParallelBuilding = true;
}
