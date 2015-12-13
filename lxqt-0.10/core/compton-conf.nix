{ stdenv, fetchgit, pkgconfig
, cmake
, qt55
, libconfig
}:

stdenv.mkDerivation rec {
  basename = "compton-conf";
  version = "0.1.x";
  name = "${basename}-${version}";

  src = fetchgit {
    url = "https://github.com/lxde/${basename}.git";
    rev = "a1640ea36790145fc94b478118e342a7bee97ac9";
    sha256 = "0xxilgvzrp928wnmwz2zdy0wp35km60l95c2xwalgvj2i45wxpvk";
  };

  buildInputs = [
    stdenv pkgconfig
    cmake
    qt55.qtbase qt55.qttools
    libconfig
  ];

  preConfigure = ''cmakeFlags="-DUSE_QT5=ON"'';

  meta = {
    homepage = "http://www.lxqt.org";
    description = "X composite manager configuration (for compton)";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
