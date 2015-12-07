{ stdenv, fetchFromGitHub, gtk }:

stdenv.mkDerivation rec {
  name = "numix-icon-theme-20150411";

  src = fetchFromGitHub {
    owner = "numixproject";
    repo = "numix-icon-theme";
    rev = "7441e1e17b";
    sha256 = "0vcxsgjr9jfbdvjhpq4lp09s8ab32slbr3np783gsll28l66zf1r";
  };

  buildInputs = [ gtk ];
  
  dontBuild = true;

  dontStrip = true;

  installPhase = ''
    install -dm 755 $out/share/icons
    cp -dr --no-preserve='ownership' Numix{,-Light} $out/share/icons/
    ls $out/share/icons
    gtk-update-icon-cache $out/share/icons/Numix
    gtk-update-icon-cache $out/share/icons/Numix-Light
  '';
  
  meta = {
    description = "Numix icon theme";
    homepage = https://numixproject.org;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
