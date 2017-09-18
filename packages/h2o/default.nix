{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  name = "h2o-${version}";
  version = "1.4.5";

  src = fetchFromGitHub {
    owner  = "h2o";
    repo   = "h2o";
    rev    = "v${version}";
    sha256 = "10kdyi0a5sd46rdch03ymxr1mjifh5b8wjvnzcv3341ddy54s1j2";
  };

  buildInputs = [ cmake ];

  enableParallelBuilding = true;
  
  meta = {
    description = "H2O - the optimized HTTP/1, HTTP/2 server.";
    homepage = https://h2o.examp1e.net;
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.all;
  };
}
