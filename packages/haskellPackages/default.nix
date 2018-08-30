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

    # cabal2nix = super.cabal2nix.overrideScope (self: super: {
    #   Cabal = self.Cabal_2_2_0_0;
    # });

    antigen-hs = self.callPackage ./antigen-hs {};
    nixfmt = self.callPackage ./nixfmt.nix {};
    language-javascript = self.callPackage ./language-javascript.nix {};
    #purescript-native = dontCheck (self.callPackage ./purescript-native.nix {
    #  HUnit          = self.HUnit_1_5_0_0;
    #  hspec          = self.hspec_2_3_2;
    #  hspec-discover = self.hspec-discover_2_3_2;
    #});
    hnix = dontCheck super.hnix;
    mighttpd2 = super.mighttpd2.overrideScope (self: super: {
      http-client_0_5_5 = super.http-client;
      http-client-tls_0_3_3_1 = super.http-client-tls;
      http-conduit_2_2_3 = super.http-conduit;
    });
    bustle = dontCheck super.bustle;
    term-rewriting = doJailbreak (dontCheck super.term-rewriting);
    hexpat = super.hexpat.overrideScope (self: super: {
      List = self.callPackage ./List-0.5.2.nix {};
    });
    smtlib2-pipe = dontCheck super.smtlib2-pipe;
    LibClang = self.callPackage ./LibClang.nix {};
    stream-monad = doJailbreak super.stream-monad;
    language-boogie = self.callPackage ./language-boogie.nix {};
    ghc-proofs = self.callPackage ./ghc-proofs.nix {};
    friday-devil = doJailbreak super.friday-devil;
    friday-scale-dct = doJailbreak super.friday-scale-dct;
    pipes-binary = doJailbreak super.pipes-binary;
    pipes-transduce = dontCheck super.pipes-transduce;
    abt = doJailbreak super.abt;
    shake-minify = doJailbreak super.shake-minify;
    # fficxx = self.callPackage ./fficxx-0.3.1.nix {};
    # fficxx-runtime = self.callPackage ./fficxx-runtime-0.3.nix {};
    # liquid-fixpoint = dontCheck (self.callPackage ./liquid-fixpoint.nix {});
    # liquiddesugar = self.callPackage ./liquiddesugar.nix {};
    # liquidhaskell = dontCheck (self.callPackage ./liquidhaskell.nix {});

    # fltkhs = (
    #   addPkgconfigDepend (
    #     addBuildTools (self.callPackage ./fltkhs.nix {})
    #     [pkgs.autoconf pkgs.fltk pkgs.mesa pkgs.libjpeg]
    #   ) pkgs.fltk
    # );

    # hdevtools = self.callPackage ./hdevtools.nix {};
    secp256k1 = addBuildTools super.secp256k1 [pkgs.autoconf pkgs.automake pkgs.libtool];

    # llvm-hs-pure = self.callPackage ./llvm-hs-pure.nix {};
    # llvm-hs = self.callPackage ./llvm-hs.nix {
    #   llvm-config = pkgs.llvm_4;
    # };
    # llvm-hs-pure = super.llvm-hs-pure_5_0_0;

    lzma = doJailbreak super.lzma;

    git-vogue = doJailbreak (self.callPackage ./git-vogue.nix {
      git = pkgs.gitFull;
    });
    packunused = doJailbreak (self.callPackage ./packunused.nix {});

    weeder = self.callPackage ./weeder.nix {};

    smallcheck-lens = doJailbreak super.smallcheck-lens;
    tasty-lens = doJailbreak super.tasty-lens;

    yi-core            = self.callHackage "yi-core"            "0.16.0" {};
    yi-frontend-vty    = self.callHackage "yi-frontend-vty"    "0.16.0" {};
    yi-fuzzy-open      = self.callHackage "yi-fuzzy-open"      "0.16.0" {};
    yi-ireader         = self.callHackage "yi-ireader"         "0.16.0" {};
    yi-keymap-cua      = self.callHackage "yi-keymap-cua"      "0.16.0" {};
    yi-keymap-emacs    = self.callHackage "yi-keymap-emacs"    "0.16.0" {};
    yi-keymap-vim      = self.callHackage "yi-keymap-vim"      "0.16.0" {};
    yi-language        = self.callHackage "yi-language"        "0.16.0" {};
    yi-misc-modes      = self.callHackage "yi-misc-modes"      "0.16.0" {};
    yi-mode-haskell    = self.callHackage "yi-mode-haskell"    "0.16.0" {};
    yi-mode-javascript = self.callHackage "yi-mode-javascript" "0.16.0" {};
    yi-snippet         = self.callHackage "yi-snippet"         "0.16.0" {};
    yi-rope            = self.callHackage "yi-rope"            "0.10"   {};

    # yi-frontend-pango  = self.callHackage "yi-frontend-pango" "0.17.0" {};
    # yi-mode-haskell    = self.callHackage "yi-mode-haskell"   "0.";
    # yi-mode-javascript = super.yi-mode-javascript_0_17_0;

    quota = self.callCabal2nix "quota" (pkgs.fetchFromGitHub {
      repo   = "haskell-quota";
      owner  = "zenhack";
      rev    = "9f0b67cdba226a0cfe23502e044adce48936a1e6";
      sha256 = "0bi50addsnxs4wmbn6ybvjldsi01q9ji7m4d3s7ca9visq3n6gvj";
    }) {};

    # haskell-names = self.callCabal2nix "haskell-names" (pkgs.fetchFromGitHub {
    #   repo   = "haskell-names";
    #   owner  = "haskell-suite";
    #   rev    = "v0.9.0";
    #   sha256 = "133b10d8njcwccnpbkff28svqv41a7vqasq1y69v5ajs7n25is4w";
    # }) {};

    hipspec = super.callPackage ./hipspec.nix {};

    grid           = doJailbreak super.grid;
    patches-vector = doJailbreak super.patches-vector;

    # remove if pkgs.leksah builds without these overrides
    ltk           = doJailbreak super.ltk;
    leksah-server = dontCheck   super.leksah-server;
    leksah        = doJailbreak super.leksah;

    testing-feat = (
      assert super.testing-feat.version == "0.4.0.3";
      super.testing-feat_1_1_0_0);

    llvm-hs-pure = (
      assert super.llvm-hs-pure.version == "5.1.2";
      super.llvm-hs-pure_6_2_1);
    llvm-hs = (
      assert super.llvm-hs.version == "5.1.3";
      self.llvm-hs_6_3_0.override { llvm-config = pkgs.llvm_6; });

    # llvm-hs = super.callHackage "llvm-hs" "4.0.1.0" {
    #   llvm-config = pkgs.llvm_4;
    # };
    # llvm-hs_4_2_0 = (
    #   assert super.llvm-hs.version == "4.2.0";
    #   super.llvm-hs);
    #
    # llvm-hs-pure = super.callHackage "llvm-hs-pure" "4.0.0.0" {};
    # llvm-hs-pure_4_1_0_0 = (
    #   assert super.llvm-hs-pure.version == "4.1.0.0";
    #   super.llvm-hs-pure);

    # We don't have an NVidia graphics card anyway
    cuda                = null;
    cublas              = null;
    accelerate-llvm-ptx = null;

    blas-hs = enableCabalFlag
      (addExtraLibrary super.blas-hs pkgs.openblas)
      "openblas";

    algebraic-graphs = doJailbreak super.algebraic-graphs;
    loc              = doJailbreak super.loc;
    loc-test         = doJailbreak super.loc-test;
    socket-io        = doJailbreak super.socket-io;
    engine-io        = doJailbreak super.engine-io;
    text-format      = doJailbreak super.text-format;
    text-show        = doJailbreak super.text-show;

    ip = dontCheck super.ip;

    flat = (
      assert super.flat.version == "0.3";
      super.callPackage ./flat-0.3.2.nix {});

    vinyl = (
      assert super.vinyl.version == "0.7.0";
      super.vinyl_0_8_1_1);

    snap-server = (
      assert super.snap-server.version == "1.0.3.3";
      super.snap-server_1_1_0_0);

    accelerate = (
      assert super.accelerate.version == "1.1.1.0";
      super.accelerate_1_2_0_0);

    #accelerate             = self.callHackage "accelerate"             "1.0.0.0" {};
    #accelerate-llvm        = self.callHackage "accelerate-llvm"        "1.2.0.0" {};
    #accelerate-llvm-native = self.callHackage "accelerate-llvm-native" "1.0.0.0" {};
    #colour-accelerate      = self.callHackage "colour-accelerate"      "0.1.0.0" {};
    #accelerate-blas        = (
    #  appendPatch
    #  (disableCabalFlag (self.callHackage "accelerate-blas" "0.1.0.1" {}) "llvm-ptx")
    #  ./accelerate-blas.patch);
    #accelerate-bignum      = dontCheck super.accelerate-bignum;

    corrode = super.callCabal2nix "corrode" (
      pkgs.fetchFromGitHub {
        owner  = "jameysharp";
        repo   = "corrode";
        rev    = "34053342c2f1ca04f23ad94d67057f14e74d9fb9";
        sha256 = "0qwglbbcm96hm44yinzlyspfb60bi2iql750qv0psk5651jfrrdf";
      }) {};

    # packdeps = self.callHackage "packdeps" "0.4.4" {
    #   Cabal = self.Cabal_2_0_0_2;
    #   optparse-applicative = self.optparse-applicative_0_14_0_0;
    # };
    # packdeps_0_4_3 = (
    #   assert super.packdeps.version == "0.4.3";
    #   super.packdeps);

    Agda = dontHaddock super.Agda;

    tensorflow-proto = addBuildTool super.tensorflow-proto pkgs.protobuf3_3;

    api-builder = doJailbreak super.api-builder;
    reddit = doJailbreak super.reddit;

    dynamic-graph = doJailbreak super.dynamic-graph;
    sdr = doJailbreak super.sdr;

    # uuid-aeson = null;

    config-ini = dontCheck (doJailbreak super.config-ini);

    # vty_5_18_1 = dontCheck (super.callHackage "vty" "5.18.1" {});
    #
    # brick_0_33 = super.callCabal2nix "brick" (
    #   pkgs.fetchFromGitHub {
    #     owner  = "jtdaugherty";
    #     repo   = "brick";
    #     rev    = "a9c4e41455e4c2bbca6252091a13433467ab226c";
    #     sha256 = "0i0k6biy3aap7d48hmmkkyn6lfqqzhpzhnwi4i12pax13xcbfbjj";
    #   }) { vty = self.vty_5_18_1; };

    bhoogle = super.callCabal2nix "bhoogle" (
      pkgs.fetchFromGitHub {
        owner  = "andrevdm";
        repo   = "bhoogle";
        rev    = "16481c79a98b76a46f8db756201aec0a3e446d06";
        sha256 = "15grpk653pqglnlcxyfx4hhppzmvgxl0pz3xkraqbk500cfrcsj5";
      }) { brick = self.brick_0_33; };

    # hpack = super.hpack_0_22_0;
    # hpack_0_21_2 = super.hpack;

    # inherit (rec {
    #   crucibleSource = pkgs.fetchFromGitHub {
    #     owner  = "GaloisInc";
    #     repo   = "crucible";
    #     rev    = "fad84db29d1d064b65fdbc40c71437ecca136218";
    #     sha256 = "1wa31knwqi0v9ms9aw1gq3h94j5x5zczr7p1yhd3x8df7j4myhyz";
    #   };
    #   callCrucible = name: (
    #     self.callCabal2nix name "${crucibleSource}/${name}" {});
    #   galois-matlab = callCrucible "galois-matlab";
    #   crucible      = callCrucible "crucible";
    # }) galois-matlab crucible;

    datadog = dontCheck (doJailbreak super.datadog);

    bullet = addPkgconfigDepend haskellPackages.bullet pkgs.mesa;

    aeson-diff = dontCheck super.aeson-diff;

    lmdb-simple = doJailbreak super.lmdb-simple;

    judy = super.judy.override { Judy = pkgs.judy; };

    disjoint-containers = dontCheck super.disjoint-containers;

    sbv = (
      with {
        sbvSource = pkgs.fetchFromGitHub {
          owner  = "LeventErkok";
          repo   = "sbv";
          rev    = "4576ba8b91c945c7b9c82f5f6c9c171a85b178b9";
          sha256 = "1s1bag1zg3fg2agfjmniy1hhvxwigmgmbzyzqpnbprvlm4cr3i1p";
        };
      };
      if builtins.compareVersions super.sbv.version "7.5" <= 0
        then dontCheck (appendPatch (super.callCabal2nix "sbv" sbvSource {}) ./sbv.patch)
        else abort "haskellPackages.sbv.version > 7.5, remove override!");

    inherit (rec {
      fficxxSource = pkgs.fetchFromGitHub {
        owner  = "wavewave";
        repo   = "fficxx";
        rev    = "c75ce1be0227afaff7c77bc0fc9ef8d19cdcb9bc";
        sha256 = "18y9k3va411n8vh1w93b24jp3xyrq1fksdvbx4h7qpv5917y3vn9";
      };
      fficxx         = self.callCabal2nix "fficxx"         (fficxxSource + "/fficxx")         {};
      fficxx-runtime = self.callCabal2nix "fficxx-runtime" (fficxxSource + "/fficxx-runtime") {};
    }) fficxx fficxx-runtime;

    HROOT      = addBuildTool super.HROOT      pkgs.root;
    HROOT-core = addBuildTool super.HROOT-core pkgs.root;
    HROOT-graf = addBuildTool super.HROOT-graf pkgs.root;
    HROOT-hist = addBuildTool super.HROOT-hist pkgs.root;
    HROOT-io   = addBuildTool super.HROOT-io   pkgs.root;
    HROOT-math = addBuildTool super.HROOT-math pkgs.root;
    HROOT-tree = addBuildTool super.HROOT-tree pkgs.root;

    limp     = dontCheck super.limp;
    limp-cbc = doJailbreak super.limp-cbc;

    graph-rewriting  = doJailbreak super.graph-rewriting;
    unordered-graphs = doJailbreak super.unordered-graphs;
    type-list        = doJailbreak super.type-list;

    derive = self.callPackage ./derive-2.6.4.nix {};

    streaming-conduit = dontCheck super.streaming-conduit;
    spdx              = doJailbreak super.spdx;
    ether             = doJailbreak super.ether;

    crackNum = super.crackNum_2_0;

    Chart       = super.Chart_1_9;
    Chart-cairo = super.Chart-cairo_1_9;

    impure-containers = (
      appendPatch super.impure-containers ./impure-containers.patch);

    blake2 = enableCabalFlag super.blake2 "support_blake2_sse";

    # haddock-library = (
    #   dontCheck (doJailbreak super.haddock-library_1_6_0));
    # haddock-api = (
    #   dontCheck (self.callHackage "haddock-api" "2.20.0" {}));
  };
}
