{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "kati-${version}";
  version = "2017-05-23";

  src = fetchFromGitHub {
    owner  = "google";
    repo   = "kati";
    rev    = "2dde61e46ab789f18956ff3b7c257dd8eb97993f";
    sha256 = "1das1fvycra546lmh72cr5qpgblhbzqqy7gfywiijjgx160l75vq";
  };

  buildInputs = [ ];

  installPhase = ''
      mkdir -p "$out/bin"
      cp ckati "$out/bin/"
  '';

  meta = with stdenv.lib; {
    description = "An experimental GNU make clone.";
    homepage    = "https://github.com/google/kati";
    license     = licenses.asl20;
    platforms   = platforms.all;
  };
}
