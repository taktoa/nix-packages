{ stdenv, fetchFromGitHub, mlton }:

stdenv.mkDerivation rec {
  name = "smackage-1.3.0";

  src = fetchFromGitHub {
    owner = "standardml";
    repo = "smackage";
    rev = "bafae46c021a7b76f218d2f31e5444d5d065ef93";
    sha256 = "0lakdspc737jy07k1v3wg2zlhqngypzp0ln2i0mi9pwhkars9w0s";
  };

  buildPhase = ''
      make mlton
  '';

  installPhase = ''
      mkdir -p $out/bin
      cp bin/smackage $out/bin
  '';

  buildInputs = [ mlton ];

  meta = {
    description = "A package manager for Standard ML";
    homepage = http://standardml.github.io/smackage/;
    license = stdenv.lib.licenses.bsd3;
    platforms = stdenv.lib.platforms.all;
  };
}
