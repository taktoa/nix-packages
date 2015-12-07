{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "nailgun-client-20150410";

  src = fetchFromGitHub {
    owner = "martylamb";
    repo = "nailgun";
    rev = "7e561e80db";
    sha256 = "18gfhiyy4caw2dqqih3jlk9qp71zpjkidzwqg0x5fymw425xgjv7";
  };

  installPhase = ''
    install -d $out/bin
    install ng $out/bin
  '';

  meta = {
    description = "Nailgun is a client, protocol, and server for running Java programs from the command line without incurring the JVM startup overhead";
    homepage = http://www.martiansoftware.com/nailgun/;
    license = stdenv.lib.licenses.asl20;
#    maintainers = [ stdenv.lib.maintainers.taktoa ];
    platforms = stdenv.lib.platforms.linux;
  };
}
