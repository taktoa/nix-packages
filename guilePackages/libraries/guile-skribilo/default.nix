{ fetchgit, stdenv, pkgconfig, autoconf, automake, gettext
, guile, guile_lib, guileReader
, lout, ploticus, imagemagick, ghostscript
}:

stdenv.mkDerivation rec {
  name = "guile-skribilo-20150720";

  # FIXME: when this gets a non-3-year-old release, switch it over to Savannah
  src = fetchgit {
    url    = "git://git.sv.gnu.org/skribilo.git";
    rev    = "2f92a85003d5eaaeacbef2e8443ccab9eff6b2a6";
    sha256 = "0if2yjj2r8xwksrj0ibzs3kqb97xqcawsb3yg9ffqg63mqa5qgcd";
  };

  buildInputs = [
    autoconf
    automake
    gettext
    pkgconfig
    guile
    guile_lib
    guileReader
    lout
    ploticus
    imagemagick
    ghostscript
  ];

  preConfigure = ''
      autoreconf -vif
  '';

  meta = {
    description = ''
        Skribilo is a free document production tool that takes a structured
        document representation as its input and renders that document to a
        variety of output formats: HTML and Info for on-line browsing, and
        Lout and LaTeX for high-quality hard copies.
    '';
    homepage = http://www.nongnu.org/skribilo/index.html;
    license = stdenv.lib.licenses.gpl3Plus;
    meta.platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}

