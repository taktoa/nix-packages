#{ stdenv, fetchurl, perl }:
with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "info2html-2.0";

  src = fetchurl {
    url = "mirror://sourceforge/info2html/${name}.tar";
    sha256 = "19c4dwkp1bz34rd51cxdj4vfiq82hxxy4rmf4xfkxhgdwwblsgsm";
  };

  buildInputs = [ perl ];

  dontBuild = true;

  meta = {
    description = "info2html is a server for info files";
    homepage = http://info2html.sourceforge.net;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}

