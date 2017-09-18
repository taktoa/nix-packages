{ stdenv, fetchgit, pkgconfig
, automake, autoconf, libtool
, gtk_doc
, glib
, lxqt-libfm-extras
}:

stdenv.mkDerivation rec {
  basename = "menu-cache";
  version = "1.0.1";
  name = "${basename}-${version}";

  src = fetchgit {
    url = "https://github.com/lxde/${basename}.git";
    rev = "4f60184fd82b5b54531367e480a14785459b8600";
    sha256 = "1ag3ai9vwyfxb84fhlpsa6zhw6anjds7na7w1m93fhl39064n5id";
  };

  buildInputs = [ stdenv pkgconfig automake autoconf libtool
                  gtk_doc glib lxqt-libfm-extras ];

  preConfigure = ''
    ./autogen.sh
  '';

  meta = {
    homepage = "http://www.lxqt.org";
    description = "Library used to read freedesktop.org menus";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
