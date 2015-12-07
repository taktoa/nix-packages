{ stdenv, fetchFromGitHub, gtk }:

stdenv.mkDerivation rec {
  name = "numix-icon-theme-circle-20150418";

  src = fetchFromGitHub {
    owner = "numixproject";
    repo = "numix-icon-theme-circle";
    rev = "e0d704689d";
    sha256 = "1jwpgkmw0jhcw9yziip838my52iwkkddssd4lr3xb0m17l380kpi";
  };

  buildInputs = [ gtk ];
  
  dontBuild = true;

  dontStrip = true;

  installPhase = ''
    install -dm 755 $out/share/icons
    cp -dr --no-preserve='ownership' Numix-Circle{,-Light} $out/share/icons/
    ls $out/share/icons
    gtk-update-icon-cache $out/share/icons/Numix-Circle
    gtk-update-icon-cache $out/share/icons/Numix-Circle-Light
  '';
  
  meta = {
    description = "Numix icon theme (circle version)";
    homepage = https://numixproject.org;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
