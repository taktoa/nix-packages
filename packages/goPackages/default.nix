{ pkgs }:

pkgs.goPackages // {
  asciinema = pkgs.callPackage ./asciinema {};
  color     = pkgs.callPackage ./color {};
  pup       = pkgs.callPackage ./pup {};
}
