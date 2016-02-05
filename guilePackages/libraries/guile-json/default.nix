{ fetchurl, stdenv, guile, pkgconfig }:

stdenv.mkDerivation rec {
  packageName = "guile-json";
  version = "0.4.0";

  name = "${packageName}-${version}";

  src = fetchurl {
    url = "mirror://savannah/${packageName}/${name}.tar.gz";
    sha256 = "0v06272rw4ycwzssjf3fzpk2vhpslvl55hz94q80vc6f74j0d5h6";
  };

  buildInputs = [
    guile
    pkgconfig
  ];

  GUILE_AUTO_COMPILE = 0;
  
  meta = {
    inherit version;

    description = "JSON parsing for Guile";

    longDescription = ''
        guile-json is a JSON module for Guile.
        These are the main features:
          - Strictly complies to http://json.org specification.
          - Build JSON documents programmatically via macros.
          - Basic unicode support for strings.
          - Allows JSON pretty printing.
    '';

    homepage = https://github.com/aconchillo/guile-json;

    license = stdenv.lib.licenses.gpl3;

    meta.platforms = stdenv.lib.platforms.linux;

    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
