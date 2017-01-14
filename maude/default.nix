{ stdenv, fetchFromGitHub, flex, bison, makeWrapper, autoconf, automake
, ncurses, buddy, tecla, readline, libsigsegv, gmpxx, cvc4, cln }:

with {
  sources = {
    maude = {
      mfe-hooks-scc = fetchFromGitHub {
        owner  = "maude-team";
        repo   = "maude";
        rev    = "ef3a376b98cc59feb6f7f9cf65d0af585b59144d";
        sha256 = "12hrzsp9lh2pqvnrji76gzrrdg18inqmy3y8sbn81zpb0b0fs16y";
      };

      mfe-hooks = fetchFromGitHub {
        owner  = "maude-team";
        repo   = "maude";
        rev    = "dbd778c8cd42bac220b55a56c75caf4c73533303";
        sha256 = "02xawj0a435qd18npnxwfp54i5si8y65jps11zwwsfyfan9mgkv9";
      };

      master = fetchFromGitHub {
        owner  = "maude-team";
        repo   = "maude";
        rev    = "f4560a5986806b0d4dc0206e283f6acf790a7542";
        sha256 = "0dvf5796vrnml8yd4n9dyk7048d6ap04wspq1jw4wnqnam7b3r06";
      };

      readline = fetchFromGitHub {
        owner  = "taktoa";
        repo   = "maude";
        rev    = "77beee6108487c273885a9605f07b6c35c8e89f6";
        sha256 = "17iapgmwwc9xhxkvlkvdrw7yw14b5z79qqv0rlfyrjkypksgrg1l";
      };
    };

    fullMaude = {
      master = fetchFromGitHub {
        owner  = "maude-team";
        repo   = "full-maude";
        rev    = "a82a703ef14cdf55930c07edd7991b0c7a4c2d88";
        sha256 = "0pbgk2kcdfp08xblnsnigmh76j9vc0d1rbm4vvvin4fy41x8ii44";
      };
    };
  };
};

stdenv.mkDerivation rec {
  name = "maude-2.7.1";

  # src = fetchFromGitHub sources.mfe-hooks-scc;
  # src = fetchFromGitHub sources.mfe-hooks;
  # src = fetchFromGitHub sources.master;
  src = sources.maude.readline;

  fullMaude = sources.fullMaude.master;

  nativeBuildInputs = [
    flex bison makeWrapper autoconf automake
  ];

  buildInputs = [
    ncurses buddy tecla readline gmpxx libsigsegv cvc4 cln
  ];

  hardeningDisable = with stdenv; lib.concatLists [
    [ "stackprotector" ]
    (lib.optionals isi686 [ "pic" "fortify" ])
  ];

  # # For normal compilation with Tecla
  # preConfigure = ''
  #   configureFlagsArray=(
  #     --srcdir="$(pwd)"
  #     --datadir=$out/share/maude
  #     TECLA_LIBS="-ltecla -lncursesw"
  #     CVC4_LIB="-lcln -lcvc4"
  #     CFLAGS="-O3" CXXFLAGS="-O3"
  #   )
  # '';

  # For use with my readline patch
  preConfigure = ''
    autoreconf -vif
    configureFlagsArray=(
      --srcdir="$(pwd)"
      --datadir=$out/share/maude
      --without-tecla
      --with-readline
      READLINE_LIBS="-lreadline"
      CVC4_LIB="-lcln -lcvc4"
      CFLAGS="-O3" CXXFLAGS="-O3"
    )
  '';

  postInstall = ''
    for file in "$out/bin/"*; do
        wrapProgram "$file" --suffix MAUDE_LIB ':' "$out/share/maude"
    done
    mkdir -p $out/share/maude
    ln -sv ${fullMaude}/full-maude27d.maude $out/share/maude/full-maude.maude
  '';

  meta = {
    homepage = "http://maude.cs.illinois.edu/";
    description = "High-level specification language";
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}
