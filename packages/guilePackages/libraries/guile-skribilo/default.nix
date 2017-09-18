{ fetchgit, stdenv                         # Nix functions
, pkgconfig, autoconf, automake, gettext   # Build tools
, guile, guile_lib, guileReader            # Guile libraries
, lout, ploticus, imagemagick, ghostscript # Other libraries
}:

stdenv.mkDerivation rec {
  name = "guile-skribilo-${version}";
  version = "20150720";

  # FIXME: when this gets a non-3-year-old release, switch it over to Savannah
  src = fetchgit {
    url    = "git://git.sv.gnu.org/skribilo.git";
    rev    = "2f92a85003d5eaaeacbef2e8443ccab9eff6b2a6";
    sha256 = "0if2yjj2r8xwksrj0ibzs3kqb97xqcawsb3yg9ffqg63mqa5qgcd";
  };

  buildInputs = [
    autoconf automake gettext pkgconfig
    guile guile_lib guileReader
    lout ploticus imagemagick ghostscript
  ];

  preConfigure = ''
      autoreconf -vif
  '';

  meta = with stdenv.lib; {
    inherit name version;
    description = "Guile-based structured document format."
    homepage    = "http://www.nongnu.org/skribilo/index.html";
    license     = licenses.gpl3Plus;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
