{ stdenv, fetchurl, libg15 }:

stdenv.mkDerivation rec {
  name = "libg15render-1.2";

  src = fetchurl {
    url = "mirror://sourceforge/g15tools/${name}.tar.bz2";
    sha256 = "03yjb78j1fnr2fwklxy54sdljwi0imvp29m8kmwl9v0pdapka8yj";
  };

  buildInputs = [ libg15 ];

  meta = {
    description = "Userspace tools for the Logitech G15 keyboard.";
    homepage = http://sourceforge.net/projects/g15tools;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
