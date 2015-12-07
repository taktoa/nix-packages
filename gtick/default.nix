{ stdenv, fetchurl, alsaLib, alsaOss, gnome, pkgconfig, libpulseaudio }:

stdenv.mkDerivation rec {
  pkgName = "gtick";
  pkgVersion = "0.5.4";
  name = "${pkgName}-${pkgVersion}";

  src = fetchurl {
    url = "http://www.antcom.de/${pkgName}/download/${name}.tar.gz";
    sha256 = "0z7sn9nhjvnk2xc8h6qfj8ry7izqq09sf1ldzkxgqbw967i3k520";
  };

  buildInputs = [
    gnome.gtk
    alsaLib
    alsaOss
    pkgconfig
    libpulseaudio
  ];

  meta = {
    description = "GTK metronome";
    homepage = http://www.antcom.de/gtick/;
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.all;
  };
}
