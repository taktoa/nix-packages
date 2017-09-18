{ stdenv, fetchFromGitHub
, cmake
, qt55
, kwindowsystem
, libqtxdg
}:

stdenv.mkDerivation rec {
  basename = "liblxqt";
  version = "0.10.0";
  name = "${basename}-${version}";

  src = fetchFromGitHub {
    owner = "lxde";
    repo = basename;
    rev = version;
    sha256 = "0r67n4w01cxpfbm4nkkp0akh9bhm04qaw8r3nkjg3nn5nvmsgfdq";
  };

  buildInputs = [ stdenv cmake
                  qt55.qtbase qt55.qttools qt55.qtx11extras
                  kwindowsystem libqtxdg ];

  # FIXME: replace the "sed" with "substitute"
  patchPhase = ''
    sed -i 's|DESTINATION ..TR_INSTALL_DIR.|DESTINATION share/lxqt/translations|' cmake/modules/LXQtTranslateTs.cmake
  '';

  meta = {
    homepage = "http://www.lxqt.org";
    description = "Common base library for most lxde-qt components";
    license = stdenv.lib.licenses.lgpl21;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.ellis ];
  };
}
