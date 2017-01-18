{ lib, stdenv, slibGuile }:

let slibVersion = stdenv.lib.strings.getVersion slibGuile;
in stdenv.mkDerivation rec {
  name = "guile-slib-${slibVersion}";
  buildInputs = [];
  phases = [ "installPhase" ];
  installPhase = ''
      mkdir -p $out/share/guile/site
      cp -R ${slibGuile}/lib/slib $out/share/guile/site/2.0
  '';

  meta = {};
};
