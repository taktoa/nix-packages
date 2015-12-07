{ stdenv, fetchFromGitHub, gtk-engine-murrine }:

stdenv.mkDerivation rec {
  name = "numix-gtk-theme-20150120";

  src = fetchFromGitHub {
    owner = "shimmerproject";
    repo = "Numix";
    rev = "e66a98a24e";
    sha256 = "0zsg3qpn3dnxxxdj1y4imy6impy6p2siz37392n060gxhkd4k0j2";
  };

  dontBuild = true;

  installPhase = ''
    install -dm 755 $out/share/themes/Numix
    cp -dr --no-preserve='ownership' {LICENSE,CREDITS,index.theme,gtk-2.0,gtk-3.0,metacity-1,openbox-3,unity,xfce-notify-4.0,xfwm4} $out/share/themes/Numix/
  '';
  
  meta = {
    description = "Numix GTK theme";
    homepage = https://numixproject.org;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
