{ stdenv, fetchurl, bison, flex }:

stdenv.mkDerivation rec {
  name = "fbset-2.1";
  src = fetchurl {
    urls = [ "https://fuspr.net/mirror/${name}.tar.gz"
             "http://users.telenet.be/geertu/Linux/fbdev/${name}.tar.gz" ];
    sha256 = "080wnisi0jq7dp0jcwdp83rq8q8s3kw41vc712516xbv4jq4mzs0";
  };
  buildInputs = [ bison flex ];
  installPhase = ''
      mkdir -p $out/bin $out/share/man/man{5,8}
      install fbset      $out/bin
      install fb.modes.5 $out/share/man/man5
      install fbset.8    $out/share/man/man8
  '';
}
