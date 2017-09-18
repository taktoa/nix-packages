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
in nodePackages."resume-cli"
