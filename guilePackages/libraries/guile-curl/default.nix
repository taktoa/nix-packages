{ fetchurl, stdenv, guile, pkgconfig, curlFull }:

stdenv.mkDerivation rec {
  packageName = "guile-curl";
  version = "0.3";

  name = "${packageName}-${version}";

  src = fetchurl {
    url = "http://www.lonelycactus.com/tarball/guilecurl-${version}.tar.gz";
    sha256 = "0k40qnjijp4039phixvcsnhnqqv2zw10yy7ad9q16hq7gnm24ki8";
  };

  buildInputs = [
    curlFull
    guile
    pkgconfig
  ];

  configurePhase = ''
    ./configure \
      --prefix=$out \
      --disable-static \
      --disable-dependency-tracking \
      --with-guilesitedir=$out/share/guile/site/2.0 \
      --with-guileextensiondir=$out/lib
  '';

  meta = {
    inherit version;
  
    description = "A libcurl-based download module for Guile";

    homepage = http://www.lonelycactus.com/guile-curl.html;

    license = stdenv.lib.licenses.gpl3;

    meta.platforms = stdenv.lib.platforms.linux;

    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
