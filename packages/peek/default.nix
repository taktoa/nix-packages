{ stdenv, fetchFromGitHub, cmake, pkgconfig, gettext, vala, wrapGAppsHook
, gtk3, pcre, dbus, epoxy, at_spi2_core, keybinder3, libxkbcommon, xlibs
}:

stdenv.mkDerivation rec {
  name = "peek-${version}";
  version = "1.0.1";

  src = fetchFromGitHub {
    repo   = "peek";
    owner  = "phw";
    rev    = "v${version}";
    sha256 = "1yqvnmgx2x884bi84w1a53ilgv9p34nydwwaql6nfn1p6l7iafqw";
  };

  buildInputs = [
    cmake pkgconfig gettext vala wrapGAppsHook
    gtk3 pcre dbus epoxy at_spi2_core keybinder3 libxkbcommon
    xlibs.libpthreadstubs xlibs.libXdmcp
  ];

  meta = with stdenv.lib; {
    inherit name version;
    description = "Simple animated GIF screen recorder";
    homepage    = https://github.com/phw/peek;
    license     = licenses.gpl3Plus;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
