{ stdenv, fetchFromGitHub, tcsh }:

stdenv.mkDerivation rec {
  name = "dparser-${version}";
  version = "20161107";

  src = fetchFromGitHub {
    owner  = "jplevyak";
    repo   = "dparser";
    rev    = "62630b2ba313e6d2f0ae08f452efc8a1e702f731";
    sha256 = "1qal66j893m8lcwrnflshi8spns2yia8kndkaygy09fr6p6ysii7";
  };

  buildInputs = [ tcsh ];

  postConfigure = "patchShebangs ./parser_tests ./mkdep ./baseline";

  makeFlags = "PREFIX=$$out";

  checkTarget = "test";
  
  doCheck = true;

  meta = with stdenv.lib; {
    inherit name version;
    description = "A scannerless GLR parser generator.";
    homepage    = "http://dparser.sourceforge.net";
    license     = licenses.bsd3;
    platforms   = platforms.all;
    maintainers = with maintainers; [ taktoa ];
  };
}
