{ stdenv, fetchurl, gfortran, libX11 }:

stdenv.mkDerivation rec {
  package-name = "xfoil";
  version = "6.99";
  name = "${package-name}-${version}";
  buildInputs = [ gfortran libX11 ];
  src = fetchurl {
    url = "http://web.mit.edu/drela/Public/web/${package-name}/${package-name}${version}.tgz";
    sha256 = "0h5y5v0qlyvi4qc943x394npz4779i8f52iksxshxkjj7xj500jw";
  };

  xfoilPatch = ./xfoil.patch;

  patches = [ xfoilPatch ];

  preConfigure = ''

    cd plotlib/
    make
    cd ../bin
  '';

  installPhase = ''
    install -m755 -d $out/bin
    install -m755 -d $out/share/xfoil/{doc,orrs}
    install -m755 ./{xfoil,pplot,pxplot} $out/bin
    install -m644 ../orrs/osmap.dat $out/share/xfoil/orrs
    install -m644 ../xfoil_doc.txt $out/share/xfoil/doc
  '';

  meta = {
    description = "Airfoil simulation program";
    homepage = http://web.mit.edu/drela/Public/web/xfoil/;
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}
