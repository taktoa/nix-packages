{ fetchgit, stdenv, guile, guile_lib, gwrap
, pkgconfig, gnome3, gnome, glib, gtk
, pango, guileCairo, autoconf, automake
, texinfo
}:

stdenv.mkDerivation rec {
  name = "guile-gnome-platform-2.16.3";
  
  src = fetchgit {
    url = "git://git.sv.gnu.org/guile-gnome.git";
    rev = "3e91b29cf8f0d8af4eba23f8133f47f21cf3526a";
    sha256 = "1gbfa7gsr7blka3hcnq95wgj4fcmgjbvmfgxpcrzrfmil2f0c5z5";
  };
  
  buildInputs = [
    autoconf
    automake
    texinfo
    guile
    gwrap
    pkgconfig
    gnome3.gconf
    glib
    gnome.gnome_vfs
    gtk
    gnome.libglade
    gnome.libgnome
    gnome.libgnomecanvas
    gnome.libgnomeui
    pango
    guileCairo
  ] ++ stdenv.lib.optional doCheck guile_lib;

  preConfigure = ''
      ./autogen.sh
  '';

  GUILE_AUTO_COMPILE = 0;

  # The test suite tries to open an X display, which fails.
  doCheck = false;

  meta = {
    description = "GNOME bindings for GNU Guile";

    longDescription =
      '' GNU guile-gnome brings the power of Scheme to your graphical
         application.  guile-gnome modules support the entire Gnome library
         stack: from Pango to GnomeCanvas, Gtk+ to GStreamer, Glade to
         GtkSourceView, you will find in guile-gnome a comprehensive
         environment for developing modern applications.
      '';

    homepage = http://www.gnu.org/software/guile-gnome/;

    license = stdenv.lib.licenses.gpl2Plus;

    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
