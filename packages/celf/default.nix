{ stdenv, fetchFromGitHub, standardML }:

stdenv.mkDerivation rec {
  name = "celf-2.9.3";

  src = fetchFromGitHub {
    owner = "clf";
    repo = "celf";
    rev = "d61d95900ab316468ae850fa34a2fe9488bc5b59";
    sha256 = "00ffh9pypj1948pg3q9sjp1nmiabh52p5c8wpg9n1dcfgl3cywnq";
  };

  buildPhase = ''
      exit -1
      # FIXME: a build script should go here!
  '';

  buildInputs = [ mlton ];

  meta = {
    description = "An implementation of the CLF logical framework";
    homepage = http://clf.github.io/celf;
    license = stdenv.lib.licenses.gpl3Plus;
    platforms = stdenv.lib.platforms.all;
  };
}
