{ stdenv, fetchurl, libg15, libg15render }:

stdenv.mkDerivation rec {
  name = "g15daemon-1.9.5.3";

  src = fetchurl {
    url = "mirror://sourceforge/g15daemon/${name}.tar.bz2";
    sha256 = "1613gsp5dgilwbshqxxhiyw73ksngnam7n1iw6yxdjkp9fyd2a3d";
  };

  buildInputs = [ libg15 libg15render ];

  patches = [ ./add-g510-g15daemon.patch ];

  meta = {
    description = "Logitech G15 daemon";
    homepage = http://sourceforge.net/projects/g15daemon;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
