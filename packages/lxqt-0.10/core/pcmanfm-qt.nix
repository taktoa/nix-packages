{ stdenv, fetchgit, pkgconfig
, cmake
, qt55
, lxqt-libfm
, lxqt-libfm-qt
, menu-cache
, libpthreadstubs
, libXdmcp
, standardPatch
}:

stdenv.mkDerivation rec {
  basename = "pcmanfm-qt";
  version = "0.10.1";
  name = "lxqt-${basename}-${version}";

  src = fetchgit {
    url = "https://github.com/lxde/${basename}.git";
    rev = "a7533049f24bc02933ce00f61d123a069b51553a";
    sha256 = "0f94l7nfc242zjbpyj234jqg0gl47bag5g1xbg8rm41cyn1wnx2s";
  };

  buildInputs = [
    stdenv pkgconfig
    cmake
    qt55.qtbase qt55.qttools qt55.qtx11extras
    lxqt-libfm lxqt-libfm-qt menu-cache
    libpthreadstubs libXdmcp
  ];

  patchPhase = standardPatch;

  meta = {
    homepage = "http://wiki.lxde.org/en/PCManFM";
    description = "file manager";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
