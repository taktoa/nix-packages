{ pkgs }:

pkgs.perlPackages // {
  GetoptDeclare = pkgs.callPackage ./GetoptDeclare {};
  TextBalanced  = pkgs.callPackage ./TextBalanced {};
}
