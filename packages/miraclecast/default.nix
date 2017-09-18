{ stdenv, fetchFromGitHub, cmake, pkgconfig
, libudev, systemd, glib, check, readline }:

stdenv.mkDerivation {
  name = "miraclecast-20160706";

  src = fetchFromGitHub {
    owner  = "albfan";
    repo   = "miraclecast";
    rev    = "42820c00baba22821a22fb945efe1d7d6c97e6a9";
    sha256 = "0cla61z3yl46x7g5s8bn8nxwhxjggdi28irabzy444wvqpcf6dbq";
  };

  buildInputs = [ cmake pkgconfig check readline glib libudev systemd ];
}
