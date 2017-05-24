{ pkgs }:

with { inherit (pkgs.stdenv) lib; };

with pkgs.haskell.lib;

{
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
    #fltkhs = addPkgconfigDepend super.fltkhs pkgs.mesa_glu;
    binary-serialise-cbor = doJailbreak (self.callPackage ./binary-serialise-cbor.nix {});
    patches-vector = dontCheck super.patches-vector;
    language-javascript = self.callPackage ./language-javascript.nix {};
    purescript-native = dontCheck (self.callPackage ./purescript-native.nix {
      HUnit          = self.HUnit_1_5_0_0;
      hspec          = self.hspec_2_3_2;
      hspec-discover = self.hspec-discover_2_3_2;
    });
    #llvm-general-pure = self.callPackage ./llvm-general/llvm-general-pure.nix {};
    synthesizer-core = dontCheck super.synthesizer-core;
    hnix = dontCheck super.hnix;
    haskell-names = dontCheck super.haskell-names;
    s-cargot = dontCheck super.s-cargot;
    friday-juicypixels = dontCheck super.friday-juicypixels;
    mighttpd2 = super.mighttpd2.overrideScope (self: super: {
      http-client_0_5_5 = super.http-client;
      http-client-tls_0_3_3_1 = super.http-client-tls;
      http-conduit_2_2_3 = super.http-conduit;
    });
    aeson-diff = dontCheck super.aeson-diff;
    bustle = dontCheck super.bustle;
    term-rewriting = doJailbreak (dontCheck super.term-rewriting);
    idris_0_99 = doJailbreak (dontCheck super.idris_0_99);
    hexpat = super.hexpat.overrideScope (self: super: {
      List = self.callPackage ./List-0.5.2.nix {};
    });
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
    #reflex = doJailbreak super.reflex;
    fficxx = self.callPackage ./fficxx-0.3.1.nix {};
    fficxx-runtime = self.callPackage ./fficxx-runtime-0.3.nix {};
    # liquid-fixpoint = dontCheck (self.callPackage ./liquid-fixpoint.nix {});
    # liquiddesugar = self.callPackage ./liquiddesugar.nix {};
    # liquidhaskell = dontCheck (self.callPackage ./liquidhaskell.nix {});
    tasty-ant-xml = doJailbreak super.tasty-ant-xml;

    # fltkhs = (
    #   addPkgconfigDepend (
    #     addBuildTools (self.callPackage ./fltkhs.nix {})
    #     [pkgs.autoconf pkgs.fltk pkgs.mesa pkgs.libjpeg]
    #   ) pkgs.fltk
    # );

    cabal-helper = self.callPackage ./cabal-helper-0.7.3.0.nix {};
    ghc-mod = dontCheck (self.callPackage ./ghc-mod-5.7.0.0.nix {});
    # hdevtools = self.callPackage ./hdevtools.nix {};
    secp256k1 = addBuildTools super.secp256k1 [pkgs.autoconf pkgs.automake pkgs.libtool];

    # haskell-gi-base   = doHaddock self.haskell-gi-base_0_20;
    # haskell-gi        = doHaddock self.haskell-gi_0_20;
    # gi-atk            = doHaddock self.gi-atk_2_0_11;
    # gi-cairo          = doHaddock self.gi-cairo_1_0_11;
    # gi-gdkpixbuf      = doHaddock self.gi-gdkpixbuf_2_0_11;
    # gi-gio            = doHaddock self.gi-gio_2_0_11;
    # gi-gobject        = doHaddock self.gi-gobject_2_0_11;
    # gi-gtk            = doHaddock self.gi-gtk_3_0_11;
    # gi-javascriptcore = doHaddock self.gi-javascriptcore_4_0_11;
    # gi-gdk            = doHaddock self.gi-gdk_3_0_11;
    # gi-glib           = doHaddock self.gi-glib_2_0_11;
    # gi-pango          = doHaddock self.gi-pango_1_0_11;
    # gi-soup           = doHaddock self.gi-soup_2_4_11;
    gi-secret         = self.callPackage ./gi-secret.nix {};
    # gi-webkit         = doHaddock self.gi-webkit_3_0_11;

    servant-elm = dontCheck super.servant-elm;

    llvm-hs-pure = self.callPackage ./llvm-hs-pure.nix {};
    llvm-hs = self.callPackage ./llvm-hs.nix {
      llvm-config = pkgs.llvm_4;
    };

    lzma = dontCheck super.lzma;

    git-vogue = doJailbreak (self.callPackage ./git-vogue.nix {
      git = pkgs.gitFull;
    });
    packunused = doJailbreak (self.callPackage ./packunused.nix {});
    hlint_2_0_5 = self.callPackage ./hlint-2.0.5.nix {};

    stylish-haskell = super.stylish-haskell.override {
      haskell-src-exts = super.haskell-src-exts_1_19_1;
    };
    stylish-haskell_0_8_0_0 = super.stylish-haskell_0_8_0_0.override {
      haskell-src-exts = super.haskell-src-exts_1_19_1;
    };
  };
}
