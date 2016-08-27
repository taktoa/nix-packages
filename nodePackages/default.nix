{ pkgs }:

let super = pkgs.nodePackages;
    np = super.override { generated = ./node.nix; };
in super // np
