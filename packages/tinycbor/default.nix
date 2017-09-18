{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "tinycbor-0.4.1";

  src = fetchFromGitHub {
    owner = "01org";
    repo = "tinycbor";
    rev = "acf202a38118ed049785d210b5de84effa43c3de";
    sha256 = "03pwcp6p6bphi0216aw6d2skh6xl8i6kk8hchasbmdbq6lawy77h";
  };

  installPhase = ''
      make install "prefix=$out"
  '';
}
