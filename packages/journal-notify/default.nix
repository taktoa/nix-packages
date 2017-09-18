{ stdenv, fetchFromGitHub, pkgconfig, libnotify, systemd, gdk_pixbuf }:

stdenv.mkDerivation rec {
  name = "journal-notify-0.1.1";

  src = fetchFromGitHub {
    owner  = "eworm-de";
    repo   = "journal-notify";
    rev    = "1cfb77ed922b348159bc5357951eb62488fa3f05";
    sha256 = "18y9hs6nwbfvax74l3fgkxhajcaw08w7yi2lrlfxf06wfil4kp77";
  };

  phases = ["unpackPhase" "installPhase"];
  
  installPhase = ''
      sed -i 's|$(DESTDIR)/usr|$(DESTDIR)|g' Makefile
      touch README.html
      make "DESTDIR=$out" install
  '';
  
  buildInputs = [ pkgconfig libnotify systemd gdk_pixbuf ];
}
