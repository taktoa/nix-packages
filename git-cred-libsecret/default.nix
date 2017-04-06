{ stdenv, pkgconfig, git, libsecret }:

stdenv.mkDerivation {
  name = "git-credential-libsecret-0";
  src = "${git}/share/git/contrib/credential/libsecret";
  buildInputs = [ pkgconfig libsecret ];
  # patchPhase = ''
  #   sed -i 's|#include <glib.h>|#include <glib-2.0/glib.h>|g' \
  #       git-credential-gnome-keyring.c
  # '';
  installPhase = ''
    mkdir -p $out/bin/
    install git-credential-libsecret $out/bin/
  '';
}
