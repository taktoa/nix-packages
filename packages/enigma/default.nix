{ stdenv, fetchurl, SDL, SDL_ttf, SDL_mixer, SDL_image, xercesc, curl, imagemagick }:

stdenv.mkDerivation rec {
  name = "enigma-1.21";

  src = fetchurl {
    url = "mirror://sourceforge/enigma-game/${name}.tar.gz";
    sha256 = "00ffh9pypj1948pg3q9sjp1nmiabh52p5c8wpg9n1dcfgl3cywnq";
  };

  buildInputs = [ SDL SDL_ttf SDL_mixer SDL_image xercesc curl ];

  meta = {
    description = "Enigma is a puzzle game inspired by Oxyd on the Atari ST and Rock'n'Roll on the Amiga.";
    homepage = http://www.nongnu.org/enigma/index.html;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
