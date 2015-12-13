{ stdenv, nodePackages }:

let np = nodePackages.override { generated = ./node.nix; self = np; };
in np."pulp"
