{ stdenv, pkgconfig, git, glib, libgnome_keyring }:

stdenv.mkDerivation {
  name = "git-credential-gnome-keyring-0";
  src = "${git}/share/git/contrib/credential/gnome-keyring";
  buildInputs = [ pkgconfig glib libgnome_keyring ];
  patchPhase = ''
    sed -i 's|#include <glib.h>|#include <glib-2.0/glib.h>|g' git-credential-gnome-keyring.c
  '';
  installPhase = ''
    mkdir -p $out/share/git/contrib/credential/gnome-keyring/
    install git-credential-gnome-keyring $out/share/git/contrib/credential/gnome-keyring/
  '';
}
