{ pkgs }:

pkgs.haskellPackages.override {
  overrides = self: super: with pkgs.haskell.lib; {
    antigen-hs = self.callPackage ./antigen-hs {};
    #FontyFruity = overrideCabal super.FontyFruity (old: {
    #  src = pkgs.fetchFromGitHub {
    #    owner  = "taktoa";
    #    repo   = "FontyFruity";
    #    rev    = "18bdf2ca36e724c128adc7fd178efc86a9fd9959";
    #    sha256 = "0940frxngr89rk8mqaa1nizrxcgm3y8d4rp880gwjn81hpm0zk80";
    #  };
    #  libraryHaskellDepends = old.libraryHaskellDepends ++ [ super.xml ];
    #});
    fltkhs = addPkgconfigDepend super.fltkhs pkgs.mesa_glu;
    hjsonschema = overrideCabal super.hjsonschema (old: {
      isExecutable = false;
    });
    binary-serialise-cbor = self.callPackage ./binary-serialise-cbor.nix {};
  };
}


#  "hjsonschema" = callPackage
#    ({ mkDerivation, aeson, async, base, bytestring, containers
#     , directory, file-embed, filepath, hjsonpointer, http-client
#     , http-types, HUnit, QuickCheck, regexpr, scientific, semigroups
#     , tasty, tasty-hunit, tasty-quickcheck, text, unordered-containers
#     , vector, wai-app-static, warp
#     }:
#     mkDerivation {
#       pname = "hjsonschema";
#       version = "0.9.0.0";
#       sha256 = "08367763571d49f3e0ec67b04143bf3196dcc217ffb4811af887b114b04b035a";
#       isLibrary = true;
#       isExecutable = true;
#       libraryHaskellDepends = [
#         aeson base bytestring containers file-embed hjsonpointer
#         http-client http-types QuickCheck regexpr scientific semigroups
#         text unordered-containers vector
#       ];
#       executableHaskellDepends = [
#         aeson base hjsonpointer text unordered-containers vector
#       ];
#       testHaskellDepends = [
#         aeson async base bytestring directory filepath hjsonpointer HUnit
#         QuickCheck tasty tasty-hunit tasty-quickcheck text
#         unordered-containers vector wai-app-static warp
#       ];
#       jailbreak = true;
#       homepage = "https://github.com/seagreen/hjsonschema";
#       description = "JSON Schema library";
#       license = stdenv.lib.licenses.mit;
#       hydraPlatforms = stdenv.lib.platforms.none;
#     }) {};
