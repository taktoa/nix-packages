let secret = import ./include/secret.nix;
in {

# ------------------------------------------------------------------------------
# --------------------------- General configuration ----------------------------
# ------------------------------------------------------------------------------


  cabal = {
    enableLibraryProfiling = true;
  };

  chromium = {
    enableSELinux       = true;
    enableNaCl          = true;
    enablePepperFlash   = true;
    enableWideVine      = true;
    gnomeSupport        = true;
    gnomeKeyringSupport = true;
    pulseSupport        = true;
    hiDPISupport        = true;
  };

  #openblas.preferLocalBuild = true;

  allowUnfree = true;
  allowBroken = true;

# ------------------------------------------------------------------------------
# ----------------------------| Package overrides |-----------------------------
# ------------------------------------------------------------------------------


  packageOverrides = pkgs: rec {


#                             *-------------------*
# ----------------------------| Personal packages |-----------------------------
#                             *-------------------*


    bussard = pkgs.callPackage ./packages/bussard {};

    bustle = pkgs.callPackage ./packages/bustle {};

    getVersion = k: (builtins.parseDrvName k.name).version;

    utility = pkgs.callPackage ./packages/utility {};

    smackage = pkgs.callPackage ./packages/smackage {};

    antlr4 = pkgs.callPackage ./packages/antlr4 {};

    h2o = pkgs.callPackage ./packages/h2o {};

    rapidjson = pkgs.callPackage ./packages/rapidjson {};

    googletest = pkgs.callPackage ./packages/googletest {};

    lm-math = pkgs.callPackage ./packages/lm-math {};

    pragmataPro = pkgs.callPackage ./packages/nonfree/pragmata-pro {};

    enigma = pkgs.callPackage ./packages/enigma {};

    technicLauncher = pkgs.callPackage ./packages/technic-launcher {};

    pmd = pkgs.callPackage ./packages/pmd {};

    libg15 = pkgs.callPackage ./packages/g15tools/libg15 {};

    libg15render = pkgs.callPackage ./packages/g15tools/libg15render {};

    g15composer = pkgs.callPackage ./packages/g15tools/g15composer {};

    g15daemon = pkgs.callPackage ./packages/g15tools/g15daemon {};

    g15macro = pkgs.callPackage ./packages/g15tools/g15macro {};

    g15tools = pkgs.buildEnv {
      name = "g15tools";
      paths = with pkgs; [ libg15 libg15render g15composer g15daemon g15macro ];
    };

    fbset = pkgs.callPackage ./packages/fbset {};

    languagetool = pkgs.callPackage ./packages/languagetool {};

    #  guilePackages = pkgs.callPackage ./packages/guilePackages {};

    gtick = pkgs.callPackage ./packages/gtick {};

    ariamaestosa = pkgs.callPackage ./packages/ariamaestosa {};

    #obs-studio = pkgs.callPackage ./packages/obs-studio {};

    mocp-xmobar = pkgs.callPackage ./packages/mocp-xmobar {};

    powerline-fonts = pkgs.callPackage ./packages/powerline-fonts {};

    # maven = pkgs.callPackage ./packages/maven {}

    rust-bindgen = pkgs.callPackage ./packages/rust-bindgen {};

    matlab = pkgs.callPackage ./packages/nonfree/matlab {
      fileInstallationKey = secret.matlabKey;
      matlabIso = file:///opt/MATLAB-R2015a-Linux64.iso;
      licensePath = ./include/license.dat;
      matlabJDK = pkgs.openjdk8;
      licenseAgreed = true;
    };

    huniepop = pkgs.callPackage ./packages/nonfree/huniepop {};

    nailgunClient = pkgs.callPackage ./packages/nailgun-client {};

#    kframework = pkgs.callPackage ./packages/kframework {};

    tinycbor = pkgs.callPackage ./packages/tinycbor {};
    libcbor = pkgs.callPackage ./packages/libcbor {};
    herbie = pkgs.callPackage ./packages/herbie {};

    zscreen = pkgs.callPackage ./packages/zscreen {};

    git-credential-gnome-keyring = pkgs.callPackage ./packages/git-cred-gnome {};

    libxcomp = pkgs.callPackage ./packages/libxcomp {};

    xfoil = pkgs.callPackage ./packages/xfoil {};

    nxproxy = pkgs.callPackage ./packages/nxproxy {};

    x2goclient = pkgs.callPackage ./packages/x2goclient {};

    # netctl = pkgs.callPackage ./packages/netctl {};

    scrape-html = pkgs.callPackage ./packages/scrape-html {};

    chrome-timer = pkgs.callPackage ./packages/chrome-timer {};

    miraclecast = pkgs.callPackage ./packages/miraclecast {};

    ceta = pkgs.callPackage ./packages/ceta {};

    maude26 = pkgs.maude;
    
    maude27 = pkgs.callPackage ./packages/maude {};

    maude = maude27;   

    # yakyak = pkgs.callPackage ./packages/yakyak {};

    hipspec = pkgs.haskellPackages.callPackage ./packages/hipspec {};

    #lxqt = lxqt09;

    # lxqt010 = pkgs.recurseIntoAttrs
    #   (import ./packages/lxqt-0.10 {
    #      pkgs = pkgs;
    #      newScope = pkgs.newScope;
    #    });

    #lxqt09 = pkgs.recurseIntoAttrs
    #  (import ./packages/lxqt-0.9 {
    #     pkgs = pkgs;
    #     newScope = pkgs.newScope;
    #   });

    #wpa_supplicant = pkgs.callPackage ./packages/wpa_supplicant {};

    qtspim = pkgs.callPackage ./packages/qtspim {};

    westonRift = pkgs.weston.overrideDerivation (old: {
      src = pkgs.fetchFromGitHub {
        owner = "Nealefelaen";
        repo = "weston-rift";
        rev = "6df786bae015f014a4b5d85eb048fc827a09a9b7";
        sha256 = "1a7rdjvaq9clp9467yhlsl6mfz6zppmg1n566lqvb8xa2ixwa4fq";
      };

      preConfigure = ''
        echo "\nLT_INIT\n" >> configure.ac
        ./autogen.sh
      '';

      buildInputs = old.buildInputs ++
                    (with pkgs; [ automake autoconf libtool ]);
    });

    # https://github.com/jherico/OculusSDK.git



#                             *-------------------*
# ----------------------------- Package overrides ------------------------------
#                             *-------------------*

    #idea = pkgs.idea.override { jdk = pkgs.oraclejdk8; };

    setName = pkgs.lib.setName;

#    qt5Override = pkgs.qt5.base.overrideDerivation;
#
#    teamspeakQt5 = setName "teamspeak-qt5" (qt5Override (old: {
#      nativeBuildInputs = old.nativeBuildInputs ++
#                          (with pkgs; [ libpulseaudio pcre ]);
#
#      propagatedBuildInputs = with pkgs; [
#        directfb
#        libpulseaudio
#        openssl sqlite icu
#        fontconfig freetype
#        glib udev dbus.libs
#        libxml2 libxslt pcre
#        zlib libjpeg libpng libtiff
#      ];
#
#      configureFlags = ''
#          -verbose
#          -confirm-license
#          -opensource
#          -shared
#          -pkg-config
#          -release
#          -c++11
#          -rpath
#          -strip
#          -reduce-relocations
#          -optimized-qmake
#          -qml-debug
#          -gui
#          -widgets
#          -nis
#          -iconv
#          -icu
#          -pch
#          -linuxfb
#          -xcb
#          -qpa xcb
#          -glib
#          -largefile
#          -pulseaudio
#          -no-sql-psql
#          -no-sql-mysql
#          -no-sql-odbc
#          -no-sql-tds
#          -no-sql-oci
#          -no-sql-db2
#          -no-sql-ibase
#          -no-gtkstyle
#          -no-eglfs
#          -no-kms
#          -no-cups
#          -no-dbus
#          -no-wayland
#          -no-opengl
#          -make   libs
#          -nomake tools
#          -nomake examples
#          -nomake tests
#          -system-zlib
#          -system-libpng
#          -system-libjpeg
#          -system-sqlite
#          -openssl-linked
#          -dbus-linked
#      '';
#    }));
#
#    teamspeak_client = pkgs.teamspeak_client.override
#                       { qt5 = { base = teamspeakQt5; }; };

#    headlessTeamspeak =
#      let ts3 = pkgs.teamspeak_client;
#          ts3Version = (builtins.parseDrvName ts3.name).version;
#          rename = setName "teamspeak-headless-client-${ts3Version}";
#          inputs = { libpulseaudio = pkgs.libpulseaudio;
#                     qt5           = { base = teamspeakQt5; };
#                     freetype      = teamspeakQt5;
#                     xlibs         = { libxcb = teamspeakQt5; };
#                     xorg          = { libSM       = teamspeakQt5;
#                                       libICE      = teamspeakQt5;
#                                       libXrender  = teamspeakQt5;
#                                       libXrandr   = teamspeakQt5;
#                                       libXfixes   = teamspeakQt5;
#                                       libXcursor  = teamspeakQt5;
#                                       libXinerama = teamspeakQt5;
#                                       libXext     = teamspeakQt5;
#                                       libX11      = teamspeakQt5;
#                                     };
#                   };
#
#      in rename ((ts3.override inputs).overrideDerivation (old: {
#        postInstall = ''
#            mv $out/bin/ts3client $out/bin/headless-teamspeak
#            mv $out/lib/teamspeak $out/lib/headless-teamspeak
#            rm $out/bin/.ts3client-wrapped
#            ln -s $out/lib/headless-teamspeak/ts3client \
#                  $out/bin/.ts3client-wrapped
#            rm -rf $out/share
#        '';
#      }));

    wesnoth = pkgs.stdenv.lib.overrideDerivation pkgs.wesnoth (oldAttrs: {
      name = "wesnoth-1.12.2";
      src = pkgs.fetchurl {
        url = "mirror://sourceforge/sourceforge/wesnoth/wesnoth-1.12.2.tar.bz2";
        sha256 = "12vrzva9zb4p7mjxfd65k5ccg3d5yypmb63vxfipbq8czpjpckqz";
      };
    });

    libcacaFull = pkgs.stdenv.lib.overrideDerivation pkgs.libcaca (oldAttrs: {
      configureFlags = "";
    });

    libtoxcore = pkgs.stdenv.lib.overrideDerivation pkgs.libtoxcore (oldAttrs: {
      name = "tox-core-20150511";
      src = pkgs.fetchFromGitHub {
        owner  = "irungentoo";
        repo   = "toxcore";
        rev    = "b2350f2e26e4fd2c1e9627680663170d94b6d0b8";
        sha256 = "13pq4vnmgbny4yfsgn2sqybmgwyvakrabsnp89k9whnp5c8jp4q9";
      };
    });

    chromiumFixed =
      let oldName = pkgs.chromium.name;
          version = (builtins.parseDrvName oldName).version;
      in pkgs.stdenv.mkDerivation {
        name = "chromium-fixed-${version}";
        buildInputs = [ pkgs.makeWrapper ];
        phases = "installPhase";
        installPhase = ''
            makeWrapper ${pkgs.chromium}/bin/chromium $out/bin/chromium \
              --set LD_PRELOAD ""
            ln -sv $out/bin/chromium $out/bin/chromium-browser
            ln -sv ${pkgs.chromium}/share $out/share
        '';
     };

    freetype = pkgs.freetype.override {
      useEncumberedCode = true;
    };

    oraclejdk8 =
    let jdkMajor = "8";
        jdkMinor = "51";
        jdkBuild = "16";
        jdkSHA = "1wggrcr2gjwkv5bawgcw86h6rhyzw0jphxm1sfwcvhjirh99056p";

        jdkVersion = "${jdkMajor}u${jdkMinor}";
        jdkBuildVersion = "${jdkVersion}-b${jdkBuild}";
        jdkArch = if pkgs.stdenv.system == "x86_64-linux" then "x64" else "i586";
        jdkURLPrefix = "http://download.oracle.com/otn-pub/java/jdk";
        jdkURL = "${jdkURLPrefix}/${jdkBuildVersion}/jdk-${jdkVersion}-linux-${jdkArch}.tar.gz";
        jdkSrc = pkgs.fetchurl {
          url = jdkURL;
          sha256 = jdkSHA;
          curlOpts = "-b oraclelicense=a";
        };
    in pkgs.stdenv.lib.overrideDerivation pkgs.oraclejdk8 (oldAttrs: { src = jdkSrc; });

    youtube-dl = pkgs.stdenv.lib.overrideDerivation pkgs.youtube-dl (oldAttrs: rec {
      name = "youtube-dl-${version}";
      version = "2016.07.07";
      src = pkgs.fetchurl {
        url = "http://youtube-dl.org/downloads/${version}/${name}.tar.gz";
        sha256 = "0bwlqvqiisqc2jlm2jmqgdp1x8bbz7p791hqxqrh45003zdhh84y";
      };
    });

    imgur-screenshot = pkgs.imgur-screenshot.overrideDerivation (old: rec {
      name = "imgur-screenshot-1.7.1";
      src = pkgs.fetchFromGitHub {
        owner  = "jomo";
        repo   = "imgur-screenshot";
        rev    = "e5678f51640b1045fcfdba385d7462e655a4af03";
        sha256 = "01wiqrc7xxvk7kzgw756jahwa0szb200l8030iwfcgxb679k3v0j";
      };
    });

    gccFull = pkgs.wrapCC (pkgs.gcc5.cc.override {
      langC       = true;
      langCC      = true;
      langObjC    = true;
      langObjCpp  = true;
      langAda     = true;
      langFortran = true;
      langVhdl    = true;
      langGo      = true;
    });

    ocaml = pkgs.ocaml_4_02;

#    liquidHaskell =
#      let hsPkgs     = pkgs.haskellngPackages;
#          runFind    = "${pkgs.findutils}/bin/find";
#          ghcVersion = (builtins.parseDrvName hsPkgs.ghc.name).version;
#      in buildEnv {
#        name = "liquidHaskell";
#        paths = [
#          hsPkgs.liquidhaskell
#          hsPkgs.liquid-fixpoint
#        ];
#        postBuild = ''
#            rm -rf $out/bin
#            mkdir -p $out/bin
#            source ${pkgs.makeWrapper}/nix-support/setup-hook
#            export GHC_ROOT="${haskell Pkgs}" # FIXME
#            wrap () {
#              makeWrapper "$1" "$2"                                    \
#                --set NIX_GHC        "$GHC_ROOT/bin"                   \
#                --set NIX_GHCPKG     "$GHC_ROOT/bin"                   \
#                --set NIX_GHC_DOCDIR "$GHC_ROOT/share/doc/ghc/html"    \
#                --set NIX_GHC_LIBDIR "$GHC_ROOT/lib/ghc-${ghcVersion}"
#            }
#            for i in "${hsPkgs.liquidhaskell} ${hsPkgs.liquid-fixpoint}"; do
#              for j in "$(${runFind} $i/bin -executable -xtype f)"; do
#                echo "Wrapping: $j"
#                wrap "$j" $out/bin/$(basename "$j")
#              done
#            done
#            exit -1
#        '';
#      };

    #nginxWithRTMP = pkgs.nginx.override {
    #  modules = with pkgs.nginxModules; [ rtmp ];
    #};

#                           *-----------------------*
# --------------------------- Package set overrides ----------------------------
#                           *-----------------------*


    # haskellngPackages = pkgs.haskellngPackages.override {
    #   overrides = selff: superr: {
    #     hmatrix = superr.hmatrix.override {
    #       mkDerivation = (attrs: selff.mkDerivation (attrs // { extraLibraries = [ pkgs.openblas ]; configureFlags = [ "-fopenblas" ]; }));
    #     };
    #     hmatrix-gsl = superr.hmatrix-gsl.override {
    #       mkDerivation = (attrs: selff.mkDerivation (attrs // { extraLibraries = [ pkgs.openblas ]; }));
    #     };
    #     hmatrix-special = superr.hmatrix-special.override {
    #       mkDerivation = (attrs: selff.mkDerivation (attrs // { extraLibraries = [ pkgs.openblas ]; }));
    #     };
    #   };
    # };

    perlPackages = pkgs.perlPackages // {
      GetoptDeclare = pkgs.callPackage ./packages/perlPackages/GetoptDeclare {};
      TextBalanced  = pkgs.callPackage ./packages/perlPackages/TextBalanced {};
    };

    # goPackages = pkgs.goPackages // {
    #   asciinema = pkgs.callPackage ./packages/goPackages/asciinema {};
    #   color     = pkgs.callPackage ./packages/goPackages/color {};
    #   pup       = pkgs.callPackage ./packages/goPackages/pup {};
    # };

    # nodePackages = pkgs.callPackage ./packages/nodePackages { inherit pkgs; };

    pythonPackagesGen = pp:
      pkgs.callPackage ./packages/pythonPackages {
        inherit pkgs;
        pythonPackages = pp;
      };

    pypyPackages     = pythonPackagesGen pkgs.pypyPackages;

    python27Packages = pythonPackagesGen pkgs.python27Packages;
    python33Packages = pythonPackagesGen pkgs.python33Packages;
    python34Packages = pythonPackagesGen pkgs.python34Packages;
    python35Packages = pythonPackagesGen pkgs.python35Packages;

    python2Packages  = python27Packages;
    python3Packages  = python34Packages;

    pylint  = python2Packages.pylint;
    pylint3 = python3Packages.pylint;

    haskellPackages = pkgs.callPackage ./packages/haskellPackages { pkgs = pkgs; };

    profiledHaskellPackages = pkgs.haskellPackages.override {
      overrides = self: super: {
        mkDerivation = args: super.mkDerivation (args // {
          enableLibraryProfiling = true;
        });
      };
    };

    hoogleEnabled = true;

    ghcWith = let hp = haskellPackages;
              in if hoogleEnabled then hp.ghcWithHoogle else hp.ghcWithPackages;

    haskellEnv = { name, paths }:
      pkgs.buildEnv {
        inherit name;
        paths = [ (ghcWith paths) ];
        ignoreCollisions = true;
      };

    ocamlEnv = pkgs.callPackage ./packages/ocamlwrapper;

    # guileEnv = guilePackages.misc.guilewrapper;

    buildEnv = pkgs.buildEnv;

    mkEmacsHelpers = emacs: {
      emacsGTK2 = emacs.override {
        withGTK2 = true;
        withGTK3 = false;
        inherit (pkgs) gtk2;
      };

      emacsGTK3 = emacs.override {
        withGTK2 = false;
        withGTK3 = true;
        inherit (pkgs) gtk3;
      };
    };

    emacsPackages = pkgs.emacsPackagesNg.override (super: self: rec {
      emacsHelpers = mkEmacsHelpers pkgs.emacs25;
      emacs = emacsHelpers.emacsGTK3;
    });

    emacsEnv = { name, paths }:
      pkgs.buildEnv {
        inherit name;
        paths = [ (emacsPackages.emacsWithPackages paths) ];
      };

    overrideDeriv = pkgs.stdenv.lib.overrideDerivation;

    # ideaCommunity = with pkgs; overrideDeriv idea.idea-community (oldAttrs: {
    #   name = "idea-community-15.0.1";
    #   src = fetchurl {
    #     url = "https://download.jetbrains.com/idea/ideaIC-15.0.1.tar.gz";
    #     sha256 = "1dbwzj12xkv2xw5nrhr779ac24hag0rb96dlagzyxcvc44xigjps";
    #   };
    # });

    gradle26 = pkgs.callPackage ./packages/gradle26 {};
    gradle = gradle26;

#                                *--------------*
# -------------------------------- Package sets --------------------------------
#                                *--------------*


#    templatePkgs = pkgs.buildEnv {
#      name = "templatePkgs";
#      paths = with pkgs; [
#      ];
#    };


    cliPkgs = buildEnv {
      name = "cliPkgs";
      paths = with pkgs; [
        archivemount
        bashInteractive
        bashCompletion
        cdrkit
        cscope
        cv
        docbook2x
        docbook5_xsl
        dos2unix
        expect
        file
        gettext
        gist
        gnupg21
        gnuplot
        graphviz
        htop
        hwloc
        impressive
        jq
        jsonnet
        kbd
        lsof
        lynx
        macchanger
        mediainfo
        msmtp
        nload
        offlineimap
        p7zip
        parallel
        pciutils
        pixz
        psmisc
        pv
        ranger
        rlwrap
        rtags
        screen
        screenfetch
        sloccount
        smartmontools
        socat
        telnet
        thttpd
        tightvnc
        tmux
        traceroute
        tree
        unzip
        usbutils
        w3m
        xcape
        xclip
        xlibs.xev
        xlockmore
        xlsfonts
        zip
        zsh
      ];
    };

    devPkgs = buildEnv {
      name = "devPkgs";
      paths = with pkgs; [
        # gcc-arm-embedded
        # androidsdk_4_4
        clang
        clang-analyzer
        cppcheck
        gdk_pixbuf
        gcc5
#        gccgo
#        gcj48
#        ghdl
#        gnat45
        glib
        glibcLocales
        gmpxx
        include-what-you-use
        llvm
        qemu
        ncurses
      ];
      ignoreCollisions = true;
      passthru = { meta = { priority = 0; }; };
    };

    elmPkgs = buildEnv {
      name = "elmPkgs";
      paths = with pkgs.elmPackages; [
        elm
      ];
    };

    emacsPkgs = emacsEnv {
      name = "emacsPkgs";
      paths = p: with p; [
        rtags
        haskellPackages.Agda
      ];
    };

    fontPkgs = buildEnv {
      name = "fontPkgs";
      paths = with pkgs; [
        inconsolata
        pragmataPro
        powerline-fonts
      ];
    };

    gamePkgs = buildEnv {
      name = "gamePkgs";
      paths = with pkgs; [
        # enigma
        dwarf_fortress
        technicLauncher
        the-powder-toy
      ];
    };

    goPkgs = buildEnv {
      name = "goPkgs";
      paths = with pkgs; [
        go asciinema keybase-go
      ];
    };

    guiPkgs = buildEnv {
      name = "guiPkgs";
      paths = with pkgs; [
        arandr
        bustle
        conkeror
        dmenu
        evince
        fbreader
        filezilla
        gnome3.seahorse
        quassel
        lxappearance
        paprefs
        pavucontrol
        pidgin
        slack
        teamspeak_client
        transmission_gtk
        unetbootin
        weston
        wpa_supplicant_gui
        zeal
      ];
    };

    # guilePkgs = guileEnv {
    #   name = "guilePkgs";
    #   paths = let gp = pkgs.guilePackages; in [
    #     gp.libraries.guileCairo
    #     gp.libraries.guileCurl
    #     gp.libraries.guileGDB
    #     gp.libraries.guileGnome
    #     gp.libraries.guileJSON
    #     gp.libraries.guileLib
    #     gp.libraries.guileLibchop
    #     gp.libraries.guileNcurses
    #     gp.libraries.guileOpenGL
    #     gp.libraries.guileReader
    #     gp.libraries.guileSDL
    #     gp.libraries.guileSkribilo
    #     gp.libraries.guileSlib
    #     gp.libraries.guileSly
    #     gp.libraries.guileXCB
    #     gp.programs.guix
    #     gp.tooling.guildhall
    #     gp.tooling.guile
    #     gp.tooling.gwrap
    #   ];
    # };

    haskellProgPkgs = buildEnv {
      name = "haskellProgPkgs";
      paths = with pkgs; with haskellPackages; [
        ### Build systems
        hi #: Project template system

        ### Runtime inspection
        threadscope #: Haskell graphical profiler

        ### Compilers
        #ghc                          #: GHC API
        #idris                        #: Idris compiler
        Agda                          #: Agda compiler
        #pkgs.haskell.compiler.uhc    #: UHC compiler
        pkgs.haskell.compiler.jhc     #: JHC compiler
        # pkgs.haskell.compiler.ghcjs #: Javascript backend to GHC

        # HLedger
        hledger          #: A Haskell-based double-entry accounting system
        hledger-lib      #: Core data types, parsers and utilities for HLedger
        hledger-interest #: Computes interest for a given account in HLedger
        hledger-irr      #: Computes the internal rate of return with HLedger
        hledger-diff     #: Compares the transactions in two HLedger files
        #hledger-web     #: Web interface for HLedger

        # Miscellaneous
        pointfree        #: Utility for transforming Haskell to pointfree form
        pointful         #: Utility for transforming Haskell to pointful form
        djinn            #: Find function definitions via parametricity
        #~darcs          #: Haskell version control tool
        #~git-annex      #: Manage large files with git
        cgrep            #: Semantic code search
        bench            #: Benchmarking for command-line programs
        xml-to-json      #: Convert XML to JSON
        xml-to-json-fast #: Faster, but less correct, conversion of XML to JSON
        hp2pretty        #: Render heap profiles in a more pretty way
      ];
    };

    haskellPkgs = haskellEnv {
      name = "haskellPkgs";
      paths = p: with p; [
        ## ------------------------------- Tools -------------------------------

        # Source manipulation
        ghc-mod              #: Enrich Haskell editing
        #~halberd            #: Add missing imports to a Haskell file
        #~hasktags           #: Generate vim/Emacs tags files from Haskell
        hdevtools            #: Development tools for Haskell
        hlint                #: Check for code smell in Haskell source
        hindent              #: Haskell source formatter
        stylish-haskell      #: Organize Haskell imports
        #~standalone-haddock #: Standalone Haddock
        c2hs                 #: FFI helpers
        c2hsc                #: FFI helpers

        # Build systems
        cabal-install  #: Haskell package manager
        stack          #: Wrapper around Cabal
        pkgs.cabal2nix #: Generate Nix packages from Cabal files

        # Development
        haddock-api
        haddocset
        haskell-docs #: Documentation browser
        intero       #: Improved version of ghci
        ghc          #: GHC API
        ghc.doc

        # Pandoc
        pandoc          #: Convert text files easily
        pandoc-citeproc #: Use the Citation Style Language with Pandoc

        # Hakyll
        hakyll      #: A static site generator written in Haskell
        #~mighttpd2 #: A Warp-based static web server
        warp-tls    #: TLS support for Warp

        # XMonad
        DescriptiveKeys    #: Specify self-documenting XMonad keybindings
        xmobar             #: An information bar written in Haskell
        xmonad             #: A tiling window manager written in Haskell
        xmonad-contrib     #: Contributed libraries for xmonad
        xmonad-contrib-gpl #: GPL-licensed parts of xmonad-contrib
        xmonad-extras      #: Extra libraries for xmonad
        xmonad-screenshot  #: A screenshot library for xmonad
        xmonad-utils       #: A small collection of utilities for xmonad
        yeganesh           #: A dmenu wrapper that shows commonly-used commands

        # Misc
        packdeps     #: Various tools for dealing with a Hackage database
        ghc-datasize #: Get the size of a Haskell data type
        #~ghc-vis    #: Visualize GHC data structures in memory
        ShellCheck   #: A linter for bash
        antigen-hs   #: A package manager for zsh

        ## ------------------------------ General ------------------------------

        ### Prelude
        classy-prelude #: A typeclass-based prelude

        ### Unicode
        base-unicode-symbols       #: Unicode Prelude
        containers-unicode-symbols #: Unicode containers

        ### General
        lens                 #: For composing families of getters, folds, etc.
        lens-family          #: Older alternative to lens
        microlens            #: A smaller lens library
        foldl                #: Strict left folds
        free                 #: Free monads
        comonad              #: Comonads
        profunctors          #: Profunctors
        kan-extensions       #: Kan extensions
        contravariant        #: Contravariant functors
        safe                 #: Safe variants of list and string functions
        data-memocombinators #: Combinators for memoization
        here                 #: String interpolation
        turtle               #: Write scripts in Haskell
        shake                #: Haskell build system
        uuid                 #: UUIDs for Haskell
        derive               #: Tools for deriving instances in Haskell
        type-level-sets      #: Type level sets
        singletons           #: Singletons


        ### System IO
        path           #: A type-safe file path abstraction
        path-io        #: An interface to `directory` using types from `path`
        process        #: Launch processes from Haskell
        HFuse          #: Bindings for FUSE in Haskell
        hit            #: Tools for interacting with the git store
        gitlib         #: A high-level interface to the Git API
        gitlib-libgit2 #: The libgit2 backend to gitlib
        filestore      #: A high-level interface to multiple versioning file stores

        ### Dates and times
        time    #: Time manipulation
        thyme   #: Improved time library
        clock   #: Access to high-resolution clock and timer functions

        ### Text manipulation
        bytestring  #: Lazy and strict packed bytestrings
        split       #: Split strings and lists
        text        #: Packed unicode strings
        text-icu    #: Unicode functions for Data.Text
        hyphenation #: Hyphenate / line-break text

        ### General text processing
        pcre-heavy #: Usable version of pcre-light
        regex-tdfa #: Regular expressions through tagged DFAs
        #~peggy    #: PEG grammars
        parsers    #: Generate parsers from a single definition
        trifecta   #: A user-friendly and effective parser library
        boomerang  #: Reversible parsing
        attoparsec #: Faster version of Parsec
        parsec     #: Monadic parser combinators
        megaparsec #: A better version of Parsec

        ### Binary serialization
        cereal                #: Binary serialization
        binary                #: High performance binary serialization
        binary-serialise-cbor #: Very fast serialization to the CBOR format
        store                 #: Efficient pickling

        ### Simple text processing
        base16-bytestring #: Parse/render hexadecimal
        base64-bytestring #: Parse/render Base64
        unix-time         #: Parse/render times
        hex               #: Convert strings to/from hexadecimal

        ### Markup processing
        xml-conduit  #: Parse/render XML
        xml-lens     #: Lenses for xml-conduit
        dom-selector #: CSS3 selectors for xml-conduit
        yaml         #: Parse/render YAML
        markdown     #: Parse/render Markdown
        xml          #: More XML stuff
        hxt          #: The Haskell XML Toolkit
        hxt-css      #: CSS3 selectors for hxt

        ### Web data processing
        aeson          #: Parse/render JSON
        #~aeson-diff   #: Diff JSON
        #~aeson-lens   #: Lenses for Aeson
        #~hjsonschema  #: JSON Schema validator
        html-conduit   #: Parse/render HTML
        blaze-html     #: HTML combinators for Haskell
        css-text       #: Parse/render CSS
        email-validate #: Parse/render email addresses

        ### Language processing
        haskell-src-exts #: Parse/render Haskell
        hint             #: Interpret Haskell
        #~s-cargot       #: S-expression parser in Haskell

        ### Image processing
        gloss                #: Easy-to-use bindings to OpenGL
        FontyFruity          #: A Haskell TrueType parser
        JuicyPixels          #: Load and store images in a variety of formats
        Rasterific           #: A rasterizer written in pure Haskell
        friday               #: Functional image processing
        #~friday-juicypixels #: Utilities for converting between friday and JP types
        friday-scale-dct     #: Scale friday images with DCT

        ### Graph processing
        graphviz        #: Bindings to the graphviz visualization library
        fgl             #: The Functional Graph Library
        graph-rewriting #: Monadic EDSL for graph rewriting

        ### Network
        pcap #: Bindings to libpcap

        ### Command-line interfaces
        brick                #: Terminal application UI
        vty                  #: Virtual terminal library
        concurrent-output    #: Concurrent terminal output
        ascii-progress       #: An ASCII progress bar
        optparse-applicative #: CLI option parsers
        configurator         #: Configuration

        ### Exceptions
        exceptions          #: Extensible optionally-pure exceptions
        enclosed-exceptions #: Exceptions amenable to asynchrony

        ### Monads
        extensible-effects #: Extensible effects
        lifted-base        #: IO operations lifted to monad typeclasses
        mtl                #: Monad transformers for Haskell
        monad-loops        #: Monadic control logic

        ### Concurrency
        async         #: A concurrent thread abstraction
        stm           #: Software transactional memory
        resource-pool #: A pooling abstraction for collections of resources

        ### Iteratees
        conduit                #: Deterministic resource handling for Haskell IO
        conduit-combinators    #: Commonly-used combinators for conduit
        classy-prelude-conduit #: Conduit instances for classy-prelude
        pipes                  #: Pipes
        pipes-concurrency      #: Concurrency for pipes
        pipes-safe             #: Resource management and exceptions for pipes
        pipes-http             #: Network sockets for pipes
        pipes-network          #: Network sockets for pipes
        #~pipes-network-tls    #: TLS network sockets for pipes
        pipes-attoparsec       #: Parsing for pipes
        pipes-bytestring       #:
        pipes-extras           #:
        pipes-group            #:
        pipes-parse            #:
        pipes-wai              #:
        #~pipes-courier        #:
        pipes-text             #:
        pipes-aeson            #:
        pipes-binary           #:
        pipes-zlib             #:
        pipes-csv              #:
        #~pipes-shell          #:
        pipes-zeromq4          #:
        process-streaming      #:

        ### Testing
        HUnit                   #: HUnit is a testing framework for Haskell
        hspec                   #: Hspec is a testing framework for Haskell
        #~hspec-webdriver       #: Hspec support for webdriver
        hspec-laws              #: Test laws for standard type classes
        hspec-attoparsec        #: Test your attoparsec parsers with hspec
        hspec-expectations      #: Hspec combinators
        hspec-expectations-lens #: Hspec expectations for the lens stuff
        tasty                   #: A generalized testing framework
        tasty-rerun             #: Run tests by filtering the test tree
        tasty-hunit             #: Tasty support for HUnit
        tasty-hspec             #: Tasty support for Hspec
        tasty-quickcheck        #: Tasty support for QuickCheck
        tasty-smallcheck        #: Tasty support for SmallCheck
        tasty-ant-xml           #: Jenkins output for Tasty
        doctest                 #: Run examples in documentation as tests

        ### Benchmarking
        criterion #: Benchmarking library for Haskell
        ekg       #: Get information on a Haskell application

        ### Debugging
        #~editable #: Edit data types on the command line

        ### Compilers
        #~llvm
        #~llvm-general
        #~llvm-general-pure

        ### Compression
        lz4    #: The LZ4 compression format
        lzma   #: The LZMA compression format
        snappy #: The Snappy compression format
        bzlib  #: The bz2 compression format
        zlib   #: The gzip and zlib compression formats
        libvorbis
        ### Archives
        zip-archive        #: The zip archive format
        tar                #: The tar archive format
        libarchive-conduit #: Supports many archive formats

        ### Miscellaneous
        data-default   #: Default values for data types
        optional-args  #: A type for specifying optional function arguments
        unification-fd #: Simple generic unification algorithms
        hnix           #: Haskell implementation of Nix
        #~bound        #: Variable bindings
        #~DataTreeView #: A GTK widget for viewing generic instances of Data
        #~dynamic-plot #: Plot continuous/infinite data structures efficiently
        mecha          #: Constructive solid modeling
        patches-vector #: An algebraic notion of a patch
        diff-parse     #: Parse diff files

        ## -------------------------- Data structures --------------------------

        ### General
        streams              #: Stream comonads
        containers           #: General containers
        unordered-containers #: High-performance unordered containers
        ListLike             #: A typeclass for list-like types

        ### Arrays
        matrix            #: Matrices based on Data.Vector
        #~accelerate      #: A high-performance embedded array language
        #~accelerate-io   #: Conversion between accelerate and various backends
        #~repa            #: Regular parallel arrays
        #~repa-io         #: Regular parallel arrays -- IO
        vector            #: Mutable and immutable Int-indexed arrays
        vector-algorithms #: Efficient algorithms for vector arrays
        vector-instances  #: Orphan instances for the vector package

        ## -------------------------------- Web --------------------------------

        ### IPC
        zeromq4-haskell #: Low latency message queue
        protobuf        #: C++-compatible "type-safe" binary serialization
        dbus            #: DBus client and

        ### Web clients
        curl         #: Bindings to libcurl
        gravatar     #: Helpers for accessing Gravatar
        wreq         #: Simple web requests
        http-client  #: HTTP client
        http-conduit #: Conduit adapter for http-client

        ### Web servers
        servant          #: A family of combinators for defining webservices APIs
        servant-server   #: Create servers from servant specifications
        servant-client   #: Autogenerate Haskell to query servant APIs
        servant-blaze    #: Servant support for blaze-html
        #~servant-jquery #: Autogenerate JavaScript to query servant APIs
        servant-pandoc   #: Create servant API documentation with Pandoc
        scotty           #: A web microframework
        websockets       #: WebSocket-capable servers
        socket-io        #: A Socket.io server
        yesod            #: A web framework
        warp             #: A high-performance web server

        ### Databases
        persistent            #: Type-safe, multi-backend data serialization
        persistent-postgresql #: PostgreSQL backend for persistent
        persistent-sqlite     #: SQLite backend for persistent
        #~esqueleto           #: A type-safe EDSL for SQL queries
        postgresql-simple     #: Simple Haskell interface to PostgreSQL
        acid-state            #: In-memory database with strong ACID guarantees
        vcache                #: Purports to be a better version of acid-state
        sqlite                #: Bindings to SQLite3

        ### Miscellaneous
        hjsmin #: Javascript minification
        hamlet #: HTML templating

        ## ---------------------------- Mathematics ----------------------------

        ### Linear algebra
        hmatrix      #: Linear algebra based on BLAS and LAPACK
        hmatrix-gsl  #: Linear algebra based on GSL
        linear       #: Low-dimensional pure Haskell linear algebra
        vector-space #: Vector spaces and affine spaces

        ### Miscellaneous
        ad                 #: Automatic differentiation
        cryptohash         #: Cryptographic hash functions
        cryptohash-conduit #: Conduit adapters for cryptohash
        dimensional        #: Numbers with physical dimensions
        dimensional-tf     #: Same as dimensional, but based on type families
        intervals          #: Interval arithmetic
        sbv                #: SMT based verification

        ## ----------------------------- Graphics ------------------------------

        ### GUI
        #~threepenny-gui #: FRP GUI using locally-served HTML

        ### Chart
        Chart       #: Generate 2D charts and plots
        Chart-gtk   #: GTK backend for Chart
        Chart-cairo #: Cairo backend for Chart

        ### Diagrams
        diagrams
        diagrams-rasterific
        rasterific-svg

        ### Functional Reactive Programming
        #~varying          #: FRP framework
        reactive-banana    #: FRP framework
        frpnow             #: FRP framework
        reflex             #: FRP framework
        reactive-banana-wx #: wxWidgets for reactive-banana
        frpnow-gtk         #: GTK for frpnow

        ### Bindings
        cairo      #: Cairo bindings
        gtk        #: GTK 3 bindings
        gtk3       #: GTK 3 bindings
        sdl2       #: SDL 2 bindings
        sdl2-cairo #: SDL 2 + Cairo helpers
        wx         #: wxHaskell
        wxc        #: wxHaskell
        wxcore     #: wxHaskell
      ];
    };

    idrisPkgs = buildEnv {
      name = "idrisPkgs";
      paths = with pkgs; [
        (with idrisPackages; with-packages [
          base prelude
        ])
      ];
    };

    javaPkgs = buildEnv {
      name = "javaPkgs";
      ignoreCollisions = true;
      paths = with pkgs; [
        # idea.idea-community
        gradle
        groovy
        maven
        nailgunClient
        oraclejdk8
        pmd
        sbt
      ];
      passthru = { meta = { priority = 0; }; };
    };

    mediaPkgs = buildEnv {
      name = "mediaPkgs";
      paths = with pkgs; [
        ffmpeg
        gimp
        gtick
        imagemagick
        lilypond
        mid2key
        moc
        mocp-xmobar
        mplayer
        mpv
        #obs-studio
        quodlibet
        rtmpdump
        timidity
        vlc
        youtube-dl
        zscreen
      ];
    };

    miscPkgs = buildEnv {
      name = "miscPkgs";
      paths = with pkgs; [
        # ihaskell-taktoa
        # kframework
        # matlab
        atk
        jmtpfs
        libmtp
      ];
    };

    nixPkgs = buildEnv {
      name = "nixPkgs";
      paths = with pkgs; [
        nix-prefetch-scripts
        nix-repl
        nixbang
        nox
        patchelf
        nixpkgs-lint
        #nixpkgs-manual
      ];
    };

    nodePkgs = buildEnv {
      name = "nodePkgs";
      paths = with pkgs; [
        nodejs
      ];
    };

    ocamlPkgs = ocamlEnv {
      name = "ocamlPkgs";
      paths = with pkgs.ocamlPackages_latest; [
        ocaml
        findlib
        utop
        zarith
        mlgmp
        camlpdf
        lambdaTerm
        ocaml_lwt
        ocaml_react
        jsonm
        uutf
        camomile
        camlp4
        zed
      ];
    };

    perlPkgs = buildEnv {
      name = "perlPkgs";
      paths = with pkgs; with perlPackages; [
        perl
        GetoptDeclare
        TextDiff
        XMLLibXML
        XMLSAX
        libxml_perl
        pcre
        rakudo
      ];
      passthru = { meta = { priority = 0; }; };
    };

    pythonPkgs = buildEnv {
      name = "pythonPkgs";
      paths = with pkgs; with python3Packages; [
        python
        pythonPackages.deluge
        python27Packages.csvkit
        python27Packages.gst-gtklaunch
        fonttools
        ipython
        matplotlib
        scipy
        numpy
        pygments
        pygobject
        ptpython
        jsonpatch
        pep8
        flake8
        autopep8
      ];
    };

    rustPkgs = buildEnv {
      name = "rustPkgs";
      paths = with pkgs; [
        rustPlatform.rust.rustc
        rustPlatform.rust.cargo
        rustfmt
        rustracer
        rustracerd
      ];
    };

    smlPkgs = buildEnv {
      name = "smlPkgs";
      paths = with pkgs; [
        mlton
        polyml
        smlnj
        smackage
      ];
    };

    # texPkgs = buildEnv {
    #   name = "texPkgs";
    #   paths = with pkgs; [
    #     texLiveFull
    #     lmodern
    #     tipa
    #     texinfoInteractive
    #     languagetool
    #   ];
    #   ignoreCollisions = true;
    # };

    vcsPkgs = buildEnv {
      name = "vcsPkgs";
      paths = with pkgs; [
        bazaar
        cvs
        gitAndTools.git-annex
        gitFull
        git-credential-gnome-keyring
        mercurial
        subversion
      ];
    };

    # userPkgs = buildEnv {
    #   name = "userPkgs";
    #   paths = with pkgs; [
    #     cliPkgs
    #     devPkgs
    #     emacsPkgs
    #     fontPkgs
    #     gamePkgs
    #     goPkgs
    #     guiPkgs
    #     guilePkgs
    #     haskellPkgs
    #     javaPkgs
    #     idrisPkgs
    #     mediaPkgs
    #     miscPkgs
    #     nixPkgs
    #     nodePkgs
    #     ocamlPkgs
    #     perlPkgs
    #     pythonPkgs
    #     smlPkgs
    #     texPkgs
    #     vcsPkgs
    #   ];

    #   ignoreCollisions = true;
    # };
  };
}
