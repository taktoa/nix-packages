{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  name = "rapidjson-${version}";
  version = "1.0.2";

  src = fetchFromGitHub {
    owner  = "miloyip";
    repo   = "rapidjson";
    rev    = "v${version}";
    sha256 = "01gh5d1v8rbrcl4jdksllnpfbkmc9994yr4l3ki0f87353cy872i";
  };

  buildInputs = [ cmake ];

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    inherit name version;
    description = "A fast JSON parser/pretty-printer for C++";
    homepage    = http://rapidjson.org;
    license     = licenses.mit;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
