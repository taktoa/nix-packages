{ fetchurl, stdenv, guile, pkgconfig }:

stdenv.mkDerivation rec {
  name = "guile-json-${version}";
  version = "0.4.0";

  src = fetchurl {
    url    = "mirror://savannah/guile-json/${name}.tar.gz";
    sha256 = "0v06272rw4ycwzssjf3fzpk2vhpslvl55hz94q80vc6f74j0d5h6";
  };

  buildInputs = [ pkgconfig guile ];

  GUILE_AUTO_COMPILE = 0;

  meta = with stdenv.lib; {
    inherit name version;
    description = "JSON parsing for Guile";
    homepage    = "https://github.com/aconchillo/guile-json";
    license     = licenses.gpl3;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
