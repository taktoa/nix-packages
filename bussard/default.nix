{ stdenv, fetchgit }:

stdenv.mkDerivation rec {
  name = "bussard-20160710";

  src = fetchgit {
    url = "https://gitlab.com/technomancy/bussard.git";
    rev = "a07376e54004cbfc1e83ce28ea456f669cc97648";
    sha256 = "8c789ad256afa4ca93f1af6436e7adff51cdd1c380de7d7cc78b41e178507a7e";
  };
}
