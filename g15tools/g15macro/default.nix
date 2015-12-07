{ stdenv, fetchurl, g15daemon, libg15render, libg15, x11, xlibs }:

stdenv.mkDerivation rec {
  name = "g15macro-1.0.3";

  src = fetchurl {
    url = "mirror://sourceforge/g15daemon/${name}.tar.bz2";
    sha256 = "1mp2idsbf288qqa3vi2536bmdxa2qc9a5996f3b0h4p6621i2i96";
  };

  buildInputs = [
    g15daemon
    libg15render
    libg15
    x11
    xlibs.libXtst
  ];

  meta = {
    description = "Logitech G15 macro daemon";
    homepage = http://sourceforge.net/projects/g15daemon;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
