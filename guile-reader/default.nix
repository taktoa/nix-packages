{ fetchurl, stdenv, pkgconfig, autoconf, automake, guile, gperf }:

stdenv.mkDerivation rec {
  name = "guile-reader-0.6.1";

  src = fetchurl {
    url    = "mirror://savannah/guile-reader/${name}.tar.gz";
    sha256 = "020wz5w8z6g79nbqifg2n496wxwkcjzh8xizpv6mz0hczpl155ma";
  };

  buildInputs = [
    autoconf
    automake
    pkgconfig
    guile
    gperf
  ];

  postInstall = ''
      mkdir -p $out/share/guile/site/
      mv $out/share/guile-reader $out/share/guile/site/2.0
  '';
  
  meta = {
    description = ''
        Guile-Reader is a simple framework for building readers for GNU Guile.
    '';
    homepage = http://www.nongnu.org/guile-reader;
    license = stdenv.lib.licenses.gpl3Plus;
    meta.platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
