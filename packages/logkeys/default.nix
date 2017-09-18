{ stdenv, fetchFromGitHub, autoreconfHook, which, procps, kbd }:

stdenv.mkDerivation rec {
  name = "logkeys-${version}";
  version = "2017-04-04";

  src = fetchFromGitHub {
    owner  = "kernc";
    repo   = "logkeys";
    rev    = "8d5b63bafdae8b004396069fa133a26d258da07f";
    sha256 = "1mi8xzds0h89p5zjb5i58r82zsl37qx7n5cvjalpd7y85d0fbwbl";
  };

  patches = [ ./remove-setuid.patch ];

  buildInputs = [ autoreconfHook which procps kbd ];

  postInstall = ''
      rm -rv "$out/etc"
      rm -v "$out/bin/llk"
      rm -v "$out/bin/llkk"
  '';

  meta = with stdenv.lib; {
    inherit name version;
    description = "A GNU/Linux keylogger that works!";
    homepage    = "https://github.com/kernc/logkeys";
    license     = with licenses; [ wtfpl gpl3Plus ];
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
