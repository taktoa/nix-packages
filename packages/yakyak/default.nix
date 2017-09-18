{ pkgs, nodejs ? pkgs.nodejs-6_x }:

with pkgs.stdenv.lib;

let
  nodePackages = pkgs.callPackage <nixpkgs/pkgs/top-level/node-packages.nix> {
    inherit nodejs;
    neededNatives = with pkgs; [ python utillinux ];
    self = nodePackages;
    generated = ./package.nix;
    overrides = {};
  };

in nodePackages.buildNodePackage rec {
  version = "1.3.3";
  name = "yakyak-${version}";

  src = pkgs.fetchFromGitHub {
    owner  = "yakyak";
    repo   = "yakyak";
    rev    = "5494c2f37e3b447e05070018ab4398aaa9262c67";
    sha256 = "01shmq4r4bmykgvnibhxhxwm0xq5q9azvv9m7y130jcc3rrlv8va";
  };

  deps = (filter (v: nixType v == "derivation") (attrValues nodePackages));

  buildInputs = [ pkgs.electron ];

  patches = [ ./yakyak.patch ];

  postBuild = ''
      ln -sv $HOME/node_modules ./node_modules
      npm install
      npm run gulp
  '';

  installPhase = ''
      mkdir -p $out/{bin,share/yakyak}
      cp -R ./app $out/share/yakyak/

      cat > $out/bin/yakyak <<EOF
      #!${pkgs.bash}/bin/bash
      ${pkgs.electron}/bin/electron @out@/share/yakyak/app
      EOF

      substituteAllInPlace $out/bin/yakyak

      chmod +x $out/bin/yakyak
  '';

  passthru.names = ["yakyak"];

  meta = {}; # FIXME
}
