{ fetchFromGitHub, stdenv, pkgconfig, guile, autoconf, automake, texinfo }:

stdenv.mkDerivation rec {
  packageName = "guildhall";
  version = "20150622";

  name = "${packageName}-${version}";

  src = fetchFromGitHub {
    owner = "ijp";
    repo = "guildhall";
    rev = "2fe2cc539f4b811bbcd69e58738db03eb5a2b778";
    sha256 = "115bym7bg66h3gs399yb2vkzc2ygriaqsn4zbrg8f054mgy8wzn1";
  };

  buildInputs = [
    pkgconfig
    autoconf
    automake
    guile
    texinfo
  ];

  GUILE_AUTO_COMPILE = 0;

  preConfigure = ''
      ./autogen.sh --prefix=$out
  '';

  meta = {
    inherit version;
  
    description = "Package manager for Guile";

    homepage = https://github.com/ijp/guildhall;

    license = stdenv.lib.licenses.free;

    meta.platforms = stdenv.lib.platforms.linux;

    maintainers = [ stdenv.lib.maintainers.taktoa ];
  };
}
