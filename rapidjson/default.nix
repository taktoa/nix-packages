{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  name = "rapidjson-1.0.2";

  src = fetchFromGitHub {
    owner = "miloyip";
    repo = "rapidjson";
    rev = "3d5848a7cd3367c5cb451c6493165b7745948308";
    sha256 = "01gh5d1v8rbrcl4jdksllnpfbkmc9994yr4l3ki0f87353cy872i";
  };

  buildInputs = [ cmake ];

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "A fast JSON parser/pretty-printer for C++";
    homepage = http://rapidjson.org;
    license = licenses.mit;
    meta.platforms = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
