{ stdenv, fetchurl, unzip }:

stdenv.mkDerivation rec {
  name = "lm-math-1959";

  src = fetchurl {
    url = "http://www.gust.org.pl/projects/e-foundry/lm-math/download/latinmodern-math-1959.zip";
    sha256 = "1y540fcq6s18i0rynf4glk3sggwsid4vkvvmx1hi82gw9w5hdama";
  };

  buildInputs = [ unzip ];

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p $out/share/fonts/opentype
    cp -v otf/latinmodern-math.otf $out/share/fonts/opentype/
  '';

  meta = with stdenv.lib; {
    homepage = http://www.gust.org.pl/projects/e-foundry/lm-math;
    description = "A modern math font";
    platforms = platforms.all;
  };
}
