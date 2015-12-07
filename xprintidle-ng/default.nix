{ stdenv, fetchFromGitHub, autoconf, automake
, pkgconfig, gettext, texinfo, help2man
, git, wget, perl
, xlibs, gnulib
}:

stdenv.mkDerivation rec {
  name = "xprintidle-ng-${version}";
  version = "20150804";

  src = fetchFromGitHub {
    owner = "taktoa";
    repo = "xprintidle-ng";
    rev = "9057c86d20d172509ed1ceb1dd0bbacebe6bacd5";
    sha256 = "1dwp5s2g6g4ahaz81krsm8l23d6ysdb8rz33bqb6q3wld05g4rq7";
  };

  buildInputs = [
    git
    wget
    perl
    autoconf
    automake
    pkgconfig
    gettext
    texinfo
    help2man
    
    xlibs.libX11
    xlibs.libXext
    xlibs.libXScrnSaver
    gnulib
  ];

  preConfigure = ''
      cp -R "${gnulib}" ./gnulib
      chmod +w -R ./gnulib
      ./bootstrap --no-git --gnulib-srcdir=./gnulib
  '';  
  
  meta = {
    description = "xprintidle-ng is a utility that queries the X server for the
                   user's idle time and prints it to stdout (in milliseconds).";
    homepage = https://github.com/taktoa/xprintidle-ng;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
