{ stdenv, fetchFromGitHub, flex, bison, makeWrapper
, ncurses, buddy, tecla, libsigsegv, gmpxx, cvc4, cln }:

stdenv.mkDerivation rec {
  name = "maude-2.7.1";

  # MFE hooks, with SCC
  src = fetchFromGitHub {
    owner  = "maude-team";
    repo   = "maude";
    rev    = "ef3a376b98cc59feb6f7f9cf65d0af585b59144d";
    sha256 = "12hrzsp9lh2pqvnrji76gzrrdg18inqmy3y8sbn81zpb0b0fs16y";
  };

  # # MFE hooks
  # src = fetchFromGitHub {
  #   owner  = "maude-team";
  #   repo   = "maude";
  #   rev    = "dbd778c8cd42bac220b55a56c75caf4c73533303";
  #   sha256 = "02xawj0a435qd18npnxwfp54i5si8y65jps11zwwsfyfan9mgkv9";
  # };

  # # Normal
  # src = fetchFromGitHub {
  #   owner  = "maude-team";
  #   repo   = "maude";
  #   rev    = "2ef0e1960d53b83d9816358b02d041b35914e81b";
  #   sha256 = "0dvf5796vrnml8yd4n9dyk7048d6ap04wspq1jw4wnqnam7b3r06";
  # };

  fullMaude = fetchFromGitHub {
    owner  = "maude-team";
    repo   = "full-maude";
    rev    = "cab2f2ed4005cfe973d875207774756ed3fd5ae3";
    sha256 = "0636rj49viqhx66ffwydjpzvxkdzsw4v02sv7z4xp8wsawrz3ffm";
  };

  #patches = [ ./cvc4.patch ];

  nativeBuildInputs = [
    flex bison makeWrapper
  ];

  buildInputs = [
    ncurses buddy tecla gmpxx libsigsegv cvc4 cln
  ];

  hardeningDisable = [ "stackprotector" ]
    ++ stdenv.lib.optionals stdenv.isi686 [ "pic" "fortify" ];

  preConfigure = ''
    configureFlagsArray=(
      --srcdir="$(pwd)"
      --datadir=$out/share/maude
      TECLA_LIBS="-ltecla -lncursesw"
      CVC4_LIB="-lcln -lcvc4"
      CFLAGS="-O3" CXXFLAGS="-O3"
    )
  '';

  #doCheck = true;

  postInstall = ''
    for file in "$out/bin/"*; do
        wrapProgram "$file" --suffix MAUDE_LIB ':' "$out/share/maude"
    done
    mkdir -p $out/share/maude
    ln -sv ${fullMaude}/full-maude27d.maude $out/share/maude/full-maude.maude
  '';

  #enableParallelBuilding = true;

  meta = {
    homepage = "http://maude.cs.illinois.edu/";
    description = "High-level specification language";
    license = stdenv.lib.licenses.gpl2;

    longDescription = ''
      Maude is a high-performance reflective language and system
      supporting both equational and rewriting logic specification and
      programming for a wide range of applications. Maude has been
      influenced in important ways by the OBJ3 language, which can be
      regarded as an equational logic sublanguage. Besides supporting
      equational specification and programming, Maude also supports
      rewriting logic computation.
    '';

    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.peti ];
  };
}
