{ pkgs }:

{
  clippy = pkgs.callPackage ./clippy { rustPlatform = pkgs.rustNightlyBin; };
  rustup = pkgs.callPackage ./rustup {};
}
