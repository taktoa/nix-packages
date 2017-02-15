{ pkgs, haskellPackages }:

with { inherit (pkgs.stdenv) lib; };

with pkgs.haskell.lib;

let

  # We use fetchgit because fetchFromGitHub doesn't support git submodules
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
    # mkDerivation = args: ((drv: (drv // rec {
    #   passthru = drv.passthru // {
    #     env = stdenv.overrideDerivation drv.passthru.env (old: {
    #       nativeBuildInputs = let #
    #         propagatedBuildInputs = lib.concatLists [
    #           buildDepends
    #           libraryHaskellDepends
    #           executableHaskellDepends
    #         ];
    #         otherBuildInputs = lib.concatLists [
    #           args.extraLibraries
    #           args.librarySystemDepends
    #           args.executableSystemDepends
    #           args.setupHaskellDepends
    #           args.buildTools
    #           args.libraryToolDepends
    #           args.executableToolDepends
    #           (lib.optionals (args.allPkgconfigDepends != [])
    #             ([pkgconfig] ++ args.allPkgconfigDepends))
    #           (lib.optionals args.doCheck (lib.concatLists [
    #             args.testDepends
    #             args.testHaskellDepends
    #             args.testSystemDepends
    #             args.testToolDepends
    #           ]))
    #         ];
    #         allBuildInputs = propagatedBuildInputs ++ otherBuildInputs;
    #         haskellBuildInputs = lib.filter isHaskellPkg allBuildInputs;
    #       in super.ghc.withPackages (p: args.haskellBuildInputs);
    #     });
    #   };
    #   env = passthru.env;
    #   #enableLibraryProfiling = true;
    # })) (super.mkDerivation args));

    antigen-hs = self.callPackage ./antigen-hs {};
    nixfmt = self.callPackage ./nixfmt.nix {};
    fltkhs = addPkgconfigDepend super.fltkhs pkgs.mesa_glu;
    hjsonschema_1_4_0_0 = super.hjsonschema_1_4_0_0.overrideScope (self: super: {
      hjsonpointer = super.hjsonpointer_1_1_0_1;
    });
    binary-serialise-cbor = self.callPackage ./binary-serialise-cbor.nix {};
    language-javascript = self.callPackage ./language-javascript.nix {};
    purescript-native = dontCheck (self.callPackage ./purescript-native.nix {
      bower-json     = self.bower-json_1_0_0_1;
      HUnit          = self.HUnit_1_5_0_0;
      hspec          = self.hspec_2_3_2;
      hspec-discover = self.hspec-discover_2_3_2;
      turtle         = self.turtle_1_3_1;
    });
    #llvm-general-pure = self.callPackage ./llvm-general/llvm-general-pure.nix {};
    synthesizer-core = dontCheck super.synthesizer-core;
    hnix = dontCheck super.hnix;
    haskell-names = dontCheck super.haskell-names;
    s-cargot = dontCheck super.s-cargot;
    friday-juicypixels = dontCheck super.friday-juicypixels;
    mighttpd2 = super.mighttpd2.overrideScope (self: super: {
      http-client     = super.http-client_0_5_5;
      http-client-tls = super.http-client-tls_0_3_3_1;
      http-conduit    = super.http-conduit_2_2_3;
    });
    aeson-diff = dontCheck super.aeson-diff;
    bustle = dontCheck super.bustle;
    # clash-lib = dontCheck super.clash-lib;
    # clash-prelude = dontCheck super.clash-prelude;
    clash-prelude = mkClashLib super.clash-prelude "clash-prelude";
    clash-lib = mkClashLib super.clash-lib "clash-lib";
    clash-ghc = mkClashLib super.clash-ghc "clash-ghc";
    clash-vhdl = mkClashLib super.clash-vhdl "clash-vhdl";
    clash-verilog = mkClashLib super.clash-verilog "clash-verilog";
    clash-systemverilog = mkClashLib super.clash-systemverilog "clash-systemverilog";
    term-rewriting = doJailbreak (dontCheck super.term-rewriting);
    # idris = self.callPackage ./idris.nix {};
    turtle_1_3_1 = self.callPackage ./turtle.nix {
      optparse-applicative = super.optparse-applicative_0_13_0_0;
    };
    hexpat = super.hexpat.overrideScope (self: super: {
      List = self.callPackage ./List-0.5.2.nix {};
    });
    yi = doJailbreak super.yi_0_13_5;
    yi-rope = super.yi-rope_0_8;
    yi-language = super.yi-language_0_13_5;
    yi-fuzzy-open = super.yi-fuzzy-open_0_13_5;
    yi-keymap-vim = dontCheck super.yi-keymap-vim;
    smtlib2-pipe = dontCheck super.smtlib2-pipe;
    LibClang = self.callPackage ./LibClang.nix {};
    stream-monad = doJailbreak super.stream-monad;
    language-boogie = self.callPackage ./language-boogie.nix {};
    ghc-proofs = self.callPackage ./ghc-proofs.nix {};
    hyphenation = dontCheck super.hyphenation;
    friday-devil = doJailbreak super.friday-devil;
    friday-scale-dct = doJailbreak super.friday-scale-dct;
    graph-rewriting = doJailbreak super.graph-rewriting;
    pipes-binary = doJailbreak super.pipes-binary;
    pipes-zeromq4 = doJailbreak super.pipes-zeromq4;
    abt = doJailbreak super.abt;
    servant-pandoc = doJailbreak super.servant-pandoc;
    shake-minify = doJailbreak super.shake-minify;
    accelerate-io = doJailbreak super.accelerate-io;
    esqueleto = doJailbreak super.esqueleto;
    reflex = doJailbreak super.reflex;
  };
}
