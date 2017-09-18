{ stdenv, fetchurl, unzip, pkgconfig, libusb }:

stdenv.mkDerivation rec {
  package-name = "lm4tools";
  package-version = "20141201";
  git-version = "5a4bc0b31a";
  name = "${package-name}-${package-version}";
  buildInputs = [ unzip libusb pkgconfig ];
  src = fetchurl {
    url = "https://github.com/utzig/${package-name}/archive/${git-version}.zip";
    sha256 = "1abd1vfwrlsdnwv6x2zpsfk73z85hfd9pzqck8ymdgvq38zr08s4";
  };
  preConfigure = ''cd lm4flash'';
  installPhase = ''
    install -Dm755 "./lm4flash" "$out/bin/lm4flash"
  '';
  meta = {
    description = "Tools for development on the TI Stellaris Launchpad boards";
    homepage = https://github.com/utzig/lm4tools;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}
