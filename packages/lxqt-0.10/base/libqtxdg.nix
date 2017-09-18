{ stdenv, fetchgit
, cmake
, file # libmagic.so
, qt55
, pkgconfig
}:

stdenv.mkDerivation rec {
  basename = "libqtxdg";
  version = "1.3.0";
  name = "${basename}-${version}";

  src = fetchgit {
    url = "https://github.com/lxde/${basename}.git";
    rev = "b65a324bcd2fc498f8a01eb56dfb54ae05e9b0b2";
    sha256 = "1h13xw4k9g7zz1frrppqxsm2rhgkn09lfq561qjivi926p7j71zg";
  };

  buildInputs = [ stdenv cmake qt55.qtbase file pkgconfig ];

  meta = {
    homepage = "http://www.lxqt.org";
    description = "Library providing freedesktop.org specs implementations for Qt";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
