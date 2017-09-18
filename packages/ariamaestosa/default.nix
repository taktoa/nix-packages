{ stdenv
, fetchurl
, scons
, wxGTK30
, pkgconfig
, glib
, python
, gnome3
, alsaLib
}:

stdenv.mkDerivation rec {
  pkgName = "ariamaestosa";
  version = "1.4.10";
  name = "${pkgName}-${version}";

  buildInputs = [
    scons
    wxGTK30
    pkgconfig
    glib
    python
    gnome3.gtk
    alsaLib
  ];

  patches = [ ./fix-pkg-config-path.patch ];

  configurePhase = "";

  buildPhase = ''
      scons prefix=$out CXXFLAGS="$NIX_CFLAGS_COMPILE" LDFLAGS="$NIX_LDFLAGS"
      
      exit -1
  '';
  
  src = fetchurl {
    url = "mirror://sourceforge/${pkgName}/${pkgName}/${version}/AriaSrc-${version}.tar.bz2";
    sha256 = "1xjj1z6akm81cinmkj7amjb5c5a71dp2bkrbziiklq9d07aq911l";
  };

  meta = {
    description = "Aria Maestosa is an open-source MIDI sequencer/editor";
    homepage = http://ariamaestosa.sourceforge.net;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}
