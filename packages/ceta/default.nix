{ stdenv, fetchurl, boost, doxygen }:

stdenv.mkDerivation rec {
  name = "ceta-alpha4";

  src = fetchurl {
    url = "http://formal.cs.uiuc.edu/ceta/releases/ceta-alpha4.tar.gz";
    sha256 = "1kzpmwmkqv743nqas12ywcfjcqm68s00wkmq4rch9g23dr5xwl2a";
  };

  nativeBuildInputs = [ doxygen ];

  buildInputs = [ boost ];
}
