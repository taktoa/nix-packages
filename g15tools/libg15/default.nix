{ stdenv, fetchurl, libusb }:

stdenv.mkDerivation rec {
  name = "libg15-1.2.7";

  src = fetchurl {
    url = "mirror://sourceforge/g15tools/${name}.tar.bz2";
    sha256 = "1mkrf622n0cmz57lj8w9q82a9dcr1lmyyxbnrghrxzb6gvifnbqk";
  };

  buildInputs = [ libusb ];

  patches = [ ./add-g510-libg15.patch ];

  meta = {
    description = "Userspace tools for the Logitech G15 keyboard.";
    homepage = http://sourceforge.net/projects/g15tools;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.linux;
  };
}
