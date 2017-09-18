{ pkgs, nodejs }:

let
  nodePackages = pkgs.callPackage <nixpkgs/pkgs/top-level/node-packages.nix> {
    inherit nodejs;
    neededNatives = with pkgs; [ python utillinux ];
    self = nodePackages;
    generated = pkgs.callPackage ./node-packages.nix;
    overrides = {
    };
  };
in nodePackages
