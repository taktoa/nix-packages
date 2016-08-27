{ stdenv, nodejs, nodePackages, writeScriptBin }:

let node-yakyak = nodePackages.yakyak;
in node-yakyak.overrideDerivation (old: {
  name = "yakyak-${old.version}";

  buildInputs = with nodePackages; [ gulp ];
  
  buildPhase = old.buildPhase + ''
      npm install gulp
      npm run gulp
  '';

  installPhase = old.installPhase + ''
      ls -Rlah
      exit -1
  '';
})
