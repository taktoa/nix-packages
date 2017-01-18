{ fetchgit, stdenv                       # Nix functions
, autoconf, automake, pkgconfig, texinfo # Build tools
, guile, guile_lib, gwrap, guileCairo    # Guile libraries
, gnome3, gnome, glib, gtk, pango        # Other libraries
}:

stdenv.mkDerivation rec {
  name = "guile-gnome-platform-${version}";
  version = "2.16.3";

  src = fetchgit {
    url    = "git://git.sv.gnu.org/guile-gnome.git";
    rev    = "3e91b29cf8f0d8af4eba23f8133f47f21cf3526a";
    sha256 = "1gbfa7gsr7blka3hcnq95wgj4fcmgjbvmfgxpcrzrfmil2f0c5z5";
  };

  buildInputs = [
    autoconf automake texinfo pkgconfig
    guile guileCairo gwrap
    glib gtk pango
    gnome3.gconf
    gnome.gnome_vfs
    gnome.libglade
    gnome.libgnome
    gnome.libgnomecanvas
    gnome.libgnomeui
  ] ++ stdenv.lib.optional doCheck guile_lib;

  preConfigure = ''
      ./autogen.sh
  '';

  GUILE_AUTO_COMPILE = 0;

  # The test suite tries to open an X display, which fails.
  doCheck = false;

  meta = {
    inherit name version;
    description = "GNOME bindings for GNU Guile";
    homepage    = "http://www.gnu.org/software/guile-gnome";
    license     = licenses.gpl2Plus;
    maintainers = with maintainers; [ taktoa ];
  };
}
