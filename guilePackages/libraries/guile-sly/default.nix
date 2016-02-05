{ stdenv, fetchFromGitHub, writeText
, pkgconfig, texinfo, unzip
, autoconf, automake
, guile
, guile-sdl
, guile-opengl
, gsl
, mesa
, freeimage
}:

let guileSlyEnv = writeText "guile-sly-env" ''
        add-to-guile-path () {
          export GUILE_LOAD_PATH="''${GUILE_LOAD_PATH:+''${GUILE_LOAD_PATH}:}$1"
        }
        export LTDL_LIBRARY_PATH="''${LTDL_LIBRARY_PATH:+''${LTDL_LIBRARY_PATH}:}${freeimage}/lib"
        export LD_LIBRARY_PATH="''${LD_LIBRARY_PATH:+''${LD_LIBRARY_PATH}:}${gsl}/lib"
        add-to-guile-path @out@/share/guile
        add-to-guile-path @out@/share/guile/site
        add-to-guile-path @out@/share/guile/site/2.0
    '';
in stdenv.mkDerivation rec {
  name = "guile-sly-20150616";

  src = fetchFromGitHub {
    owner  = "taktoa";
    repo   = "guile-sly";
    rev    = "6573261753243257c7b168e174d45c9cd40061ee";
    sha256 = "1b6vbxik5x6w9b92l49nk24r86wir4hwikwgha6lr7xgbcdjlncs";
  };
  
  buildInputs = [
    pkgconfig
    autoconf
    automake
    texinfo
    gsl
    mesa
    guile
    guile-sdl
    guile-opengl
    freeimage
    unzip
  ];

  patches = [ ./fix-config-build.patch ];
  
  preConfigure = ''
      source ${guileSlyEnv}
      export GUILE_AUTO_COMPILE=0
      ./autogen.sh
  '';

  postInstall = ''
      mkdir -p $out/nix-support
      substitute ${guileSlyEnv} $out/nix-support/guile-env --subst-var out
  '';  
  
  meta = {
    description = "Sly is a free software game engine written in Guile Scheme.";
    homepage = https://git.framasoft.org/a-guile-mind/sly;
    license = stdenv.lib.licenses.gpl3;
    meta.platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
