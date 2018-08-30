{ stdenv, fetchFromGitHub, scons, pkgconfig
, python, wxGTK30, glib, gnome3, alsaLib, rtmidi
}:

let wxGTKwithWebKit = wxGTK30.override { withWebKit = true; };
in stdenv.mkDerivation rec {
  pkgName = "ariamaestosa";
  version = "1.4.13";
  name = "${pkgName}-${version}";

  src = fetchFromGitHub {
    repo   = "ariamaestosa";
    owner  = "taktoa";
    rev    = "46bd8f22e0f3ea252c87f9e9191da12b9017091d";
    sha256 = "1b7s172msd6pvkwchyks2b295iz739dhag59h0bh6fgw2vcbn5as";
  };

  buildInputs = [
    scons
    wxGTKwithWebKit
    pkgconfig
    glib
    python
    gnome3.gtk
    alsaLib.out
    alsaLib.dev
    rtmidi
    # jdksmidi
  ];

  configurePhase = ''
    printf 'install:\n\techo DONE\n' > Makefile
  '';

  buildPhase = ''
    mkdir -p "$out"

    SCONS_CXXFLAGS=""
    SCONS_CXXFLAGS="$SCONS_CXXFLAGS $NIX_CFLAGS_COMPILE"
    SCONS_CXXFLAGS="$SCONS_CXXFLAGS -I${alsaLib.dev}/include"

    SCONS_LDFLAGS=""
    SCONS_LDFLAGS="$SCONS_LDFLAGS $(echo "$NIX_LDFLAGS" | sed 's/-rpath /-Wl,-rpath=/g')"
    SCONS_LDFLAGS="$SCONS_LDFLAGS -L${wxGTKwithWebKit}/lib"

    scons install                  \
        config=release             \
        prefix=$out                \
        compiler_arch=64bit        \
        CXXFLAGS="$SCONS_CXXFLAGS" \
        LDFLAGS="$SCONS_LDFLAGS"   \
        -j "$NIX_BUILD_CORES"
  '';

  installPhase = "";

  meta = with stdenv.lib; {
    description = "Aria Maestosa is an open-source MIDI sequencer/editor";
    homepage    = "http://ariamaestosa.sourceforge.net";
    license     = licenses.gpl2;
    platforms   = platforms.linux;
  };
}
