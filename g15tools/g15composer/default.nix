{ stdenv, fetchurl, g15daemon, libg15, libg15render }:

stdenv.mkDerivation rec {
  name = "g15composer-3.2";

  src = fetchurl {
    url = "mirror://sourceforge/g15tools/${name}.tar.bz2";
    sha256 = "0ddh2zn8rhziff54rd02kni5gipidw5abras32vqp1fm3nngvqqa";
  };

  buildInputs = [ g15daemon libg15 libg15render ];

  meta = {
    description = "Userspace tools for the Logitech G15 keyboard.";
    homepage = http://sourceforge.net/projects/g15tools;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
