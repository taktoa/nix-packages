{ pkgs }:

rec {
  bool   = pkgs.callPackage ./bool.nix {};
  number = pkgs.callPackage ./number.nix {};
  string = pkgs.callPackage ./string.nix {};
  file   = pkgs.callPackage ./file.nix {};
  list   = pkgs.callPackage ./list.nix {};
  url    = pkgs.callPackage ./url.nix {};
}
