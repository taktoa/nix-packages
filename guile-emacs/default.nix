{ stdenv, fetchurl, ncurses, x11, libXaw, libXpm, Xaw3d
, pkgconfig, gtk, libXft, dbus, libpng, libjpeg, libungif
, libtiff, librsvg, texinfo, gconf, libxml2, imagemagick, gnutls
, alsaLib, cairo, guile22
, withGTK3 ? false, gtk3 ? null
, withGTK2 ? true, gtk2
}:

# Probably a bug
assert (libXft != null) -> libpng != null;

# GTK2 and GTK3 are mutually exclusive
assert withGTK2 -> !withGTK3 && gtk2 != null;
assert withGTK3 -> !withGTK2 && gtk3 != null;

let toolkit = if withGTK3 then "gtk3" else if withGTK2 then "gtk2" else "lucid";
    toolkitPkgs = if      withGTK2 then [ gtk2 ]
                  else if withGTK3 then [ gtk3 ]
                  else                  [];
    glcld = if      system == "x86_64-linux" then "lib64"
            else if system == "i686-linux"   then "lib"
            else                                  "non-linux";
    fixMakefileScript = ''
        fixMakefile () { substituteInPlace "$1" --replace /bin/pwd pwd; }
        fixMakefile ./Makefile.in
        fixMakefile ./src/Makefile.in
        fixMakefile ./lib-src/Makefile.in
        fixMakefile ./leim/Makefile.in
        unset fixMakefile
    '';
in stdenv.mkDerivation rec {
  name = "guile-emacs-20150512";

  src = fetchgit {
    url    = "git://git.hcoop.net/git/bpt/emacs.git";
    rev    = "41120e0f595b16387eebfbf731fff70481de1b4b";
    sha256 = "0lvcvsz0f4mawj04db35p1dvkffdqkz8pkhc0jzh9j9x2i63kcz6";
  };
  
#  src = fetchurl {
#    url    = "mirror://gnu/emacs/${name}.tar.xz";
#    sha256 = "0kn3rzm91qiswi0cql89kbv6mqn27rwsyjfb8xmwy9m5s8fxfiyx";
#  };

  buildInputs = [
    autoconf automake
    ncurses libxml2 gnutls alsaLib pkgconfig texinfo dbus imagemagick gconf
    x11 libXaw Xaw3d libXpm libpng libjpeg libungif libtiff librsvg libXft
    guile22
  ] ++ toolkitPkgs;

  configureFlags = [ "--with-x-toolkit=${toolkit}" "--with-xft" ];

  enableParallelBuilding = false;
                                   
  # FIXME
  #doCheck = true;

  preConfigure = ''
      ${fixMakefileScript}
  
      [[ "${system}" = "non-linux" ]] && return 0;
   
      # This is supposed to be run on Linux. It patches the proper locations of
      # the crt{1,i,n}.o files into the build to ensure that Emacs is linked
      # with *our* versions, not the ones found in the system, as it would do by
      # default. On other platforms, this appears to be unnecessary.
      
      libc="$(cat $NIX_CC/nix-support/orig-libc)"
      echo "libc: $libc"
   
      for i in ${"src/s/*.h"} ${"src/m/*.h"}; do
        substituteInPlace $i \
          --replace /usr/${glcld}/crt1.o $libc/${glcld}/crt1.o \
          --replace /usr/${glcld}/crti.o $libc/${glcld}/crti.o \
          --replace /usr/${glcld}/crtn.o $libc/${glcld}/crtn.o \
          --replace /usr/lib/crt1.o      $libc/${glcld}/crt1.o \
          --replace /usr/lib/crti.o      $libc/${glcld}/crti.o \
          --replace /usr/lib/crtn.o      $libc/${glcld}/crtn.o
      done
  '';

  preInstall = ''
      ${fixMakefileScript}
  ''

  postInstall = ''
      mkdir -p $out/share/emacs/site-lisp/
      cp ${./site-start.el} $out/share/emacs/site-lisp/site-start.el
  '';

  meta = with stdenv.lib; {
    description = "GNU Guile Emacs";
    homepage    = http://emacswiki.org/emacs/GuileEmacs;
    license     = licenses.gpl3Plus;
    maintainers = with maintainers; [ taktoa ];
    platforms   = platforms.gnu;
  };
}

