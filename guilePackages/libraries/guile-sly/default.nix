{ stdenv, fetchFromGitHub, writeText            # Nix functions
, pkgconfig, texinfo, unzip, autoconf, automake # Build utilities
, guile, guile-sdl, guile-opengl                # Guile libraries
, gsl, mesa, freeimage                          # Other libraries
}:

let
  guileSlyEnv = writeText "guile-sly-env" ''
      appendComp () {
          local VAR="$1"
          local APP="$2"
          # This is horrible, and would probably be easier to read if not for
          # the escaping imposed by being in a Nix double-single-quoted string.
          eval "export \$$VAR=\"\''${$VAR:+''${$VAR}:}$APP\""
      }

      add_to_GUILE_LOAD_PATH   () { appendComp GUILE_LOAD_PATH   "$1"; }
      add_to_LTDL_LIBRARY_PATH () { appendComp LTDL_LIBRARY_PATH "$1"; }
      add_to_LD_LIBRARY_PATH   () { appendComp LD_LIBRARY_PATH   "$1"; }

      add_to_LTDL_LIBRARY_PATH "${freeimage}/lib"
      add_to_LD_LIBRARY_PATH   "${gsl}/lib"
      add_to_GUILE_LOAD_PATH   "@out@/share/guile"
      add_to_GUILE_LOAD_PATH   "@out@/share/guile/site"
      add_to_GUILE_LOAD_PATH   "@out@/share/guile/site/2.0"

      unset -f add_to_GUILE_LOAD_PATH
      unset -f add_to_LTDL_LIBRARY_PATH
      unset -f add_to_LD_LIBRARY_PATH
      unset -f appendComp
  '';
in stdenv.mkDerivation rec {
  name = "guile-sly-${version}";
  version = "20150616"

  src = fetchFromGitHub {
    owner  = "taktoa";
    repo   = "guile-sly";
    rev    = "6573261753243257c7b168e174d45c9cd40061ee";
    sha256 = "1b6vbxik5x6w9b92l49nk24r86wir4hwikwgha6lr7xgbcdjlncs";
  };

  buildInputs = [
    pkgconfig autoconf automake texinfo unzip
    guile guile-sdl guile-opengl
    gsl mesa freeimage
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

  meta = with stdenv.lib; {
    inherit name version;
    description = "Sly is a free software game engine written in Guile Scheme.";
    homepage    = "https://git.framasoft.org/a-guile-mind/sly";
    license     = licenses.gpl3;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
