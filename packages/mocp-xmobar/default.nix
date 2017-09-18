#{ stdenv, fetchFromGitHub, imagemagick }:
{ stdenv, fetchFromGitHub, imagemagick, unzip, file }:
#with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "mocp-xmobar-1.0";

  src = ./mocp-xmobar.zip;

#  src = fetchFromGitHub {
#    owner = "taktoa";
#    repo = "mocp-xmobar";
#    rev = "lol";
#    sha256 = "lol";
#  };

#  buildInputs = [ imagemagick ];
  buildInputs = [ imagemagick unzip file ];

  preConfigure = ''chmod +x configure'';

  meta = {
    description = "A script that outputs information suitable for xmobar to display your current music from MOCP";
    homepage = http://github.com/taktoa/mocp-xmobar;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
