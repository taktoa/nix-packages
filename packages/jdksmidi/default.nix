{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation {
  name = "jdksmidi-2014-05-12";

  src = fetchFromGitHub {
    owner  = "jdkoftinoff";
    repo   = "jdksmidi";
    rev    = "49e67afbbe60bcfcdaf3ca64e8564ea637d62d7d";
    sha256 = "0bzn0qqhs0fpimvzk6bygrbz16gxj5jzqqrm68lq834y2dwrrcv9";
  };

  buildInputs = [ cmake ];

  patches = [ ./add-install-target.patch ];

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "A C++ MIDI library by J.D. Koftinoff Software";
    homepage    = "https://github.com/jdkoftinoff/jdksmidi";
    license     = licenses.gpl2;
    platforms   = platforms.linux;
  };
}
