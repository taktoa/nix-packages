{ stdenv, fetchsvn, bison, flex, qt55, xlibs }:

stdenv.mkDerivation rec {
  name = "qtspim-20160506";

  src = fetchsvn {
    url = "https://svn.code.sf.net/p/spimsimulator/code";
    rev = 690;
    sha256 = "1vba971jdps7xfzlmcq5m8jvlsfwlmyxrmjjrwrrq1nwyp64sv40";
  };

  nativeBuildInputs = [ bison flex qt55.qttools ];

  buildInputs = with xlibs; [ qt55.qtbase libXt libXaw libXpm libXext ];

  buildPhase = ''
      MAKE_FLAGS="BIN_DIR=$out/bin EXCEPTION_DIR=$out/share/spim"

      cd spim
      make $MAKE_FLAGS
      cd ..

      cd xspim
      make $MAKE_FLAGS
      cd ..

      cd QtSpim
      rm parser_yacc.* scanner_lex.*
      qmake QtSpim.pro
      sed -i "s|\$(MOVE) help/qtspim.qhc help/qtspim.qhc;||" Makefile
      make
      cd ..
  '';

  installPhase = ''
      mkdir -p $out/{bin,share/spim}

      cd spim
      make $MAKE_FLAGS install
      cd ..

      cd xspim
      make $MAKE_FLAGS install
      cd ..

      install -D QtSpim/QtSpim "$out/bin/qtspim"
  
      install -Dm644 Documentation/spim.man   "$out/share/man/man1/spim.1"
      install -Dm644 Documentation/xspim.man  "$out/share/man/man1/xspim.1"
      install -Dm644 Documentation/qtspim.man "$out/share/man/man1/qtspim.1"
  
      install -Dm644 Setup/NewIcon48x48.png "$out/share/qtspim/qtspim.png"
  
      install -Dm644 Setup/qtspim_debian_deployment/qtspim.desktop \
          "$out/share/applications/qtspim.desktop"
  '';
}
