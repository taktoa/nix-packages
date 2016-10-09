{ stdenv, fetchurl, haskellPackages
, pkgconfig, perl, help2man, intltool
, glib, libpcap
}:

let bustleHaskell = haskellPackages.bustle;
    version = bustleHaskell.version;
    srcRoot = "https://www.freedesktop.org/software";
in stdenv.mkDerivation rec {
  name = "bustle-${version}";

  src = fetchurl {
    url = "${srcRoot}/bustle/${version}/bustle-${version}.tar.gz";
    sha256 = "051z39s1xb86ab1a3v4yz8vv8k2kygpixzd878nb1p2pp6xjq74j";
  };

  makeFlags = "PREFIX=\${out}";

  buildInputs = [ pkgconfig perl help2man intltool glib libpcap ];

  # FIXME: would be nice to generate a man page for bustle with help2man, but
  # the help output from bustle screws up the generated man page.
  postInstall = ''
      mkdir -p $out/bin
      ln -s ${bustleHaskell}/bin/bustle $out/bin/bustle
  '';
}
