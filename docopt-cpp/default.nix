{ stdenv, fetchFromGitHub, pkgs }:

stdenv.mkDerivation rec {
  name = "docopt-cpp-${version}";
  version = "0.6.2";

  src = fetchFromGitHub {
    owner  = "docopt";
    repo   = "docopt.cpp";
    rev    = "v${version}";
    sha256 = "1rgkc8nsc2zz2lkyai0y68vrd6i6kbq63hm3vdza7ab6ghq0n1dd";
  };

  buildInputs = with pkgs; [ cmake ];

  meta = with stdenv.lib; {
    inherit name version;
    description = "";
    homepage    = "https://github.com/docopt/docopt.cpp";
    license     = licenses.mit;
    platforms   = platforms.all;
    maintainers = with maintainers; [ taktoa ];
  };
}
