{ pkgs, haskellPackages }:

with pkgs.haskell.lib;

let # We use fetchgit because fetchFromGitHub doesn't support git submodules
    clash-source = pkgs.fetchgit {
      url    = "https://github.com/clash-lang/clash-compiler.git";
      # branch: master
      rev    = "6b875d5ca807cf7d79744ee4a16e2b912e5b96c3";
      sha256 = "11fkwgg9xg78gbh3apd35xdfkf87qkvg1hwhfxs1z4736w6rj8sb";
      # # branch: ghc-8.0
      # rev    = "7a7904ce3cb4f039c675a41d8d625b12a3892259";
      # sha256 = "02pa9azkx1i45qchjwmhg3mks6lpvg4ri47vb6jgjzzwsnaw0b86";
    };

    mkClashLib = drv: name: dontCheck (overrideCabal drv (old: {
      src = clash-source; prePatch = "cd ${name}";
    }));

in haskellPackages.override {
  overrides = self: super: {
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
    nixfmt = self.callPackage ./nixfmt.nix {};
    fltkhs = addPkgconfigDepend super.fltkhs pkgs.mesa_glu;
    hjsonschema = overrideCabal super.hjsonschema (old: {
      isExecutable = false;
    });
    binary-serialise-cbor = self.callPackage ./binary-serialise-cbor.nix {};
    language-javascript = self.callPackage ./language-javascript.nix {};
    purescript-native = dontCheck (self.callPackage ./purescript-native.nix {});
    llvm-general-pure = self.callPackage ./llvm-general/llvm-general-pure.nix {};
    synthesizer-core = dontCheck super.synthesizer-core;
    hnix = dontCheck super.hnix;
    haskell-names = dontCheck super.haskell-names;
    s-cargot = dontCheck super.s-cargot;
    friday-juicypixels = dontCheck super.friday-juicypixels;
    mighttpd2 = super.mighttpd2.overrideScope (self: super: {
      http-client = super.http-client_0_5_3_3;
      http-client-tls = super.http-client-tls_0_3_3;
      http-conduit = super.http-conduit_2_2_3;
    });
    aeson-diff = dontCheck super.aeson-diff;
    # clash-lib = dontCheck super.clash-lib;
    # clash-prelude = dontCheck super.clash-prelude;
    clash-prelude = mkClashLib super.clash-prelude "clash-prelude";
    clash-lib = mkClashLib super.clash-lib "clash-lib";
    clash-ghc = mkClashLib super.clash-ghc "clash-ghc";
    clash-vhdl = mkClashLib super.clash-vhdl "clash-vhdl";
    clash-verilog = mkClashLib super.clash-verilog "clash-verilog";
    clash-systemverilog = mkClashLib super.clash-systemverilog "clash-systemverilog";
    term-rewriting = dontCheck super.term-rewriting;
    # idris = self.callPackage ./idris.nix {};
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
