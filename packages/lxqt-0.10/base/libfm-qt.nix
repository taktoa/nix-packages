{ stdenv, fetchgit
, pkgconfig, cmake
, qt55
, lxqt-libfm
, menu-cache
}:

stdenv.mkDerivation rec {
  basename = "libfm-qt";
  version = "0.10.0";
  name = "lxqt-${basename}-${version}";

  src = fetchgit {
    url = "https://github.com/lxde/${basename}.git";
    rev = "d5bfd04c9f2c2dff890a3d964adc29fed4cddc09";
    sha256 = "1gsfnavz3rcpcws3bkim37k9pmb2jrfj61i94c1dchfw533axq47";
  };

  buildInputs = [ stdenv cmake pkgconfig
                  qt55.qtbase qt55.qttools qt55.qtx11extras
                  lxqt-libfm menu-cache ];

  meta = {
    homepage = "http://www.lxqt.org";
    description = "Library providing freedesktop.org specs implementations for Qt";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
