{ fetchurl, stdenv, guile, pkgconfig, curlFull }:

stdenv.mkDerivation rec {
  name = "guile-curl-${version}";
  version = "0.3";

  src = fetchurl {
    url    = "http://www.lonelycactus.com/tarball/guilecurl-${version}.tar.gz";
    sha256 = "0k40qnjijp4039phixvcsnhnqqv2zw10yy7ad9q16hq7gnm24ki8";
  };

  buildInputs = [ pkgconfig guile curlFull ];

  configurePhase = ''
      ./configure --prefix=$out                                 \
                  --disable-static                              \
                  --disable-dependency-tracking                 \
                  --with-guilesitedir=$out/share/guile/site/2.0 \
                  --with-guileextensiondir=$out/lib
  '';

  meta = with stdenv.lib; {
    inherit name version;
    description = "A libcurl-based download module for Guile";
    homepage    = "http://www.lonelycactus.com/guile-curl.html";
    license     = licenses.gpl3;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
