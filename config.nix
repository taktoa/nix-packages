{ secret }:

{


#<# ┌────────────────────────┬───────────────────────┬─────────────────────────┐
#<# ├────────────────────────┤ General configuration ├─────────────────────────┤
#<# └────────────────────────┴───────────────────────┴─────────────────────────┘


  cabal = {
    enableLibraryProfiling = true;
  };

  # chromium = {
  #   enableSELinux       = true;
  #   enableNaCl          = true;
  #   enablePepperFlash   = true;
  #   enableWideVine      = true;
  #   gnomeSupport        = true;
  #   gnomeKeyringSupport = true;
  #   pulseSupport        = true;
  #   hiDPISupport        = true;
  # };

  #openblas.preferLocalBuild = true;

  allowUnfree = true;
  allowBroken = true;


#<# ┌──────────────────────────┬───────────────────┬───────────────────────────┐
#<# ├──────────────────────────┤ Package overrides ├───────────────────────────┤
#<# └──────────────────────────┴───────────────────┴───────────────────────────┘


  packageOverrides = pkgs: rec {

#<#                            ┌───────────────────┐
#<# ───────────────────────────┤ Personal packages ├────────────────────────────
#<#                            └───────────────────┘

    nixpkgs-manual = import <nixpkgs/doc>;

    bussard = pkgs.callPackage ./bussard {};

    bustle = pkgs.callPackage ./bustle {};

    docopt-cpp = pkgs.callPackage ./docopt-cpp {};

    getVersion = k: (builtins.parseDrvName k.name).version;

    utility = pkgs.callPackage ./utility {};

    smackage = pkgs.callPackage ./smackage {};

    antlr4 = pkgs.callPackage ./antlr4 {};

    h2o = pkgs.callPackage ./h2o {};

    rapidjson = pkgs.callPackage ./rapidjson {};

    googletest = pkgs.callPackage ./googletest {};

    lm-math = pkgs.callPackage ./lm-math {};

    pragmataPro = pkgs.callPackage ./nonfree/pragmata-pro {};

    enigma = pkgs.callPackage ./enigma {};

    technicLauncher = pkgs.callPackage ./technic-launcher {};

    pmd = pkgs.callPackage ./pmd {};

    libg15 = pkgs.callPackage ./g15tools/libg15 {};

    libg15render = pkgs.callPackage ./g15tools/libg15render {};

    g15composer = pkgs.callPackage ./g15tools/g15composer {};

    g15daemon = pkgs.callPackage ./g15tools/g15daemon {};

    g15macro = pkgs.callPackage ./g15tools/g15macro {};

    g15tools = pkgs.buildEnv {
      name = "g15tools";
      paths = with pkgs; [ libg15 libg15render g15composer g15daemon g15macro ];
    };

    teamspeak_client = pkgs.qt55.callPackage ./teamspeak/client.nix {};

    fbset = pkgs.callPackage ./fbset {};

    languagetool = pkgs.callPackage ./languagetool {};

    #  guilePackages = pkgs.callPackage ./guilePackages {};

    gtick = pkgs.callPackage ./gtick {};

    ariamaestosa = pkgs.callPackage ./ariamaestosa {};

    #obs-studio = pkgs.callPackage ./obs-studio {};

    mocp-xmobar = pkgs.callPackage ./mocp-xmobar {};

    powerline-fonts = pkgs.callPackage ./powerline-fonts {};

    # maven = pkgs.callPackage ./maven {}

    rust-bindgen = pkgs.callPackage ./rust-bindgen {};

    matlab = pkgs.callPackage ./nonfree/matlab {
      fileInstallationKey = secret.matlabKey;
      matlabIso = file:///opt/MATLAB-R2015a-Linux64.iso;
      licensePath = ./include/license.dat;
      matlabJDK = pkgs.openjdk8;
      licenseAgreed = true;
    };

    nailgunClient = pkgs.callPackage ./nailgun-client {};

    #    kframework = pkgs.callPackage ./kframework {};

    tinycbor = pkgs.callPackage ./tinycbor {};
    libcbor = pkgs.callPackage ./libcbor {};
    herbie = pkgs.callPackage ./herbie {};

    zscreen = pkgs.callPackage ./zscreen {};

    git-credential-gnome-keyring = pkgs.callPackage ./git-cred-gnome {};

    libxcomp = pkgs.callPackage ./libxcomp {};

    xfoil = pkgs.callPackage ./xfoil {};

    nxproxy = pkgs.callPackage ./nxproxy {};

    x2goclient = pkgs.callPackage ./x2goclient {};

    # netctl = pkgs.callPackage ./netctl {};

    scrape-html = pkgs.callPackage ./scrape-html {};

    chrome-timer = pkgs.callPackage ./chrome-timer {};

    miraclecast = pkgs.callPackage ./miraclecast {};

    pdf2htmlEX = pkgs.callPackage ./pdf2htmlEX {};

    ceta = pkgs.callPackage ./ceta {};

    maude26 = pkgs.maude;

    maude27 = pkgs.callPackage ./maude {};

    maude = maude27;

    yakyak = pkgs.callPackage ./yakyak {};

    cpuchecker = pkgs.callPackage ./cpuchecker {};

    journal-notify = pkgs.callPackage ./journal-notify {};

    hipspec = pkgs.haskellPackages.callPackage ./hipspec {};

    #lxqt = lxqt09;

    # lxqt010 = pkgs.recurseIntoAttrs
    #   (import ./lxqt-0.10 {
    #      pkgs = pkgs;
    #      newScope = pkgs.newScope;
    #    });

    #lxqt09 = pkgs.recurseIntoAttrs
    #  (import ./lxqt-0.9 {
    #     pkgs = pkgs;
    #     newScope = pkgs.newScope;
    #   });

    #wpa_supplicant = pkgs.callPackage ./wpa_supplicant {};

    qtspim = pkgs.callPackage ./qtspim {};

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

      buildInputs = old.buildInputs ++ (with pkgs; [automake autoconf libtool]);
    });

    steam = pkgs.steam.override { newStdcpp = true; };

    lib = pkgs.stdenv.lib // {
      extra = {
        # The sum of a list of numbers.
        sum = lib.fold (x: y: x + y) 0;

        # The product of a list of numbers.
        product = lib.fold (x: y: x * y) 0;

        # FIXME: doc
        combineAttrs = lib.fold (x: y: x // y) {};

        # FIXME: doc
        takeString = (num: str:
          (lib.concatStrings
            (lib.take num
              (lib.stringToCharacters str))));

        # FIXME: doc
        printList = (f: xs:
          (with lib.strings // lib.debug;
            traceSeq ("\n\n" + (concatStrings (map (x: (f x) + "\n") xs))) {}));

        # Input list must be sorted
        #fastUniquePresorted = (with lib; rec {
        #  go = xs: if
        #}).go;
        # Same as fastUnique', except it sort
        #fastUnique
      };

      unsafe = {
        inherit (builtins) unsafeDiscardOutputDependency;
        inherit (builtins) unsafeDiscardStringContext;
        inherit (builtins) unsafeGetAttrPos;
      };
    };

    # https://github.com/jherico/OculusSDK.git

#<#                            ┌───────────────────┐
#<# ───────────────────────────┤ Package overrides ├────────────────────────────
#<#                            └───────────────────┘

    #idea = pkgs.idea.override { jdk = pkgs.oraclejdk8; };

    setName = pkgs.lib.setName;

    # for some reason chromium ends up building from source
    chromium = (import <nixpkgs> { config.packageOverrides = pkgs: {}; }).chromium.override {
      enablePepperFlash = true;
    #  enableWideVine    = true;
    };

    i3lock-dpms = pkgs.writeScriptBin "slock" ''
        #!/usr/bin/env bash
        revert() { xset dpms 0 0 0; }
        trap revert SIGHUP SIGINT SIGTERM
        xset +dpms dpms 5 5 5
        ${pkgs.i3lock}/bin/i3lock -n -c000000
        revert
    '';

    #qt5Override = pkgs.qt5.base.overrideDerivation;
    #
    #teamspeakQt5 = setName "teamspeak-qt5" (qt5Override (old: {
    #  nativeBuildInputs = old.nativeBuildInputs ++
    #                      (with pkgs; [ libpulseaudio pcre ]);
    #
    #  propagatedBuildInputs = with pkgs; [
    #    directfb
    #    libpulseaudio
    #    openssl sqlite icu
    #    fontconfig freetype
    #    glib udev dbus.libs
    #    libxml2 libxslt pcre
    #    zlib libjpeg libpng libtiff
    #  ];
    #
    #  configureFlags = ''
    #      -verbose
    #      -confirm-license
    #      -opensource
    #      -shared
    #      -pkg-config
    #      -release
    #      -c++11
    #      -rpath
    #      -strip
    #      -reduce-relocations
    #      -optimized-qmake
    #      -qml-debug
    #      -gui
    #      -widgets
    #      -nis
    #      -iconv
    #      -icu
    #      -pch
    #      -linuxfb
    #      -xcb
    #      -qpa xcb
    #      -glib
    #      -largefile
    #      -pulseaudio
    #      -no-sql-psql
    #      -no-sql-mysql
    #      -no-sql-odbc
    #      -no-sql-tds
    #      -no-sql-oci
    #      -no-sql-db2
    #      -no-sql-ibase
    #      -no-gtkstyle
    #      -no-eglfs
    #      -no-kms
    #      -no-cups
    #      -no-dbus
    #      -no-wayland
    #      -no-opengl
    #      -make   libs
    #      -nomake tools
    #      -nomake examples
    #      -nomake tests
    #      -system-zlib
    #      -system-libpng
    #      -system-libjpeg
    #      -system-sqlite
    #      -openssl-linked
    #      -dbus-linked
    #  '';
    #}));
    #
    #teamspeak_client = pkgs.teamspeak_client.override
    #                   { qt5 = { base = teamspeakQt5; }; };

    #headlessTeamspeak =
    #  let ts3 = pkgs.teamspeak_client;
    #      ts3Version = (builtins.parseDrvName ts3.name).version;
    #      rename = setName "teamspeak-headless-client-${ts3Version}";
    #      inputs = { libpulseaudio = pkgs.libpulseaudio;
    #                 qt5           = { base = teamspeakQt5; };
    #                 freetype      = teamspeakQt5;
    #                 xlibs         = { libxcb = teamspeakQt5; };
    #                 xorg          = { libSM       = teamspeakQt5;
    #                                   libICE      = teamspeakQt5;
    #                                   libXrender  = teamspeakQt5;
    #                                   libXrandr   = teamspeakQt5;
    #                                   libXfixes   = teamspeakQt5;
    #                                   libXcursor  = teamspeakQt5;
    #                                   libXinerama = teamspeakQt5;
    #                                   libXext     = teamspeakQt5;
    #                                   libX11      = teamspeakQt5;
    #                                 };
    #               };
    #
    #  in rename ((ts3.override inputs).overrideDerivation (old: {
    #    postInstall = ''
    #        mv $out/bin/ts3client $out/bin/headless-teamspeak
    #        mv $out/lib/teamspeak $out/lib/headless-teamspeak
    #        rm $out/bin/.ts3client-wrapped
    #        ln -s $out/lib/headless-teamspeak/ts3client \
    #              $out/bin/.ts3client-wrapped
    #        rm -rf $out/share
    #    '';
    #  }));

    wesnoth = pkgs.wesnoth.overrideDerivation (old: {
      name = "wesnoth-1.12.2";
      src = pkgs.fetchurl {
        url = "mirror://sourceforge/sourceforge/wesnoth/wesnoth-1.12.2.tar.bz2";
        sha256 = "12vrzva9zb4p7mjxfd65k5ccg3d5yypmb63vxfipbq8czpjpckqz";
      };
    });

    libcacaFull = pkgs.libcaca.overrideDerivation (old: {
      configureFlags = "";
    });

    libtoxcore = pkgs.libtoxcore.overrideDerivation (old: {
      name = "tox-core-20150511";
      src = pkgs.fetchFromGitHub {
        owner  = "irungentoo";
        repo   = "toxcore";
        rev    = "b2350f2e26e4fd2c1e9627680663170d94b6d0b8";
        sha256 = "13pq4vnmgbny4yfsgn2sqybmgwyvakrabsnp89k9whnp5c8jp4q9";
      };
    });

    aria = aria2;
    aria2 = pkgs.aria2.overrideDerivation (old: rec {
      name = "aria2-${version}";
      version = "1.30.0";
      src = pkgs.fetchFromGitHub {
        owner = "aria2";
        repo = "aria2";
        rev = "release-${version}";
        sha256 = "0zm5qnxqafa3ssk48a1iaf8ydwf8r42dd9b09kkyyp9x03yi4xm5";
      };
    });

    chromiumFixed = pkgs.stdenv.mkDerivation {
      name = "chromium-fixed-${(builtins.parseDrvName chromium.name).version}";
      buildInputs = [ pkgs.makeWrapper ];
      phases = "installPhase";
      installPhase = ''
          makeWrapper ${chromium}/bin/chromium $out/bin/chromium \
            --set LD_PRELOAD ""
          ln -sv $out/bin/chromium $out/bin/chromium-browser
          ln -sv ${chromium}/share $out/share
      '';
    };

    freetype = pkgs.freetype.override {
      useEncumberedCode = true;
    };

    oraclejdk8_helpers = rec {
      jdk = rec {
        major = "8";
        minor = "51";
        build = "16";
        sha256 = "1wggrcr2gjwkv5bawgcw86h6rhyzw0jphxm1sfwcvhjirh99056p";
      };

      version = "${jdk.major}u${jdk.minor}";
      buildVersion = "${version}-b${jdk.build}";
      arch = if pkgs.stdenv.system == "x86_64-linux" then "x64" else "i586";
      mirror = "http://download.oracle.com/otn-pub/java/jdk";
      url = "${mirror}/${buildVersion}/jdk-${version}-linux-${arch}.tar.gz";

      src = pkgs.fetchurl {
        inherit url;
        inherit (jdk) sha256;
        curlOpts = "-b oraclelicense=a";
      };

      inherit (pkgs.stdenv.lib) overrideDerivation;
    };

    oraclejdk8 = (with oraclejdk8_helpers;
      overrideDerivation pkgs.oraclejdk8 (old: { inherit src; }));

    youtube-dl = pkgs.youtube-dl.overrideDerivation (old: rec {
      name = "youtube-dl-${version}";
      version = "2016.12.09";
      src = pkgs.fetchurl {
        url = "http://youtube-dl.org/downloads/${version}/${name}.tar.gz";
        sha256 = "0js9825nzdnny3mpjfnmy6267qnas92f0hv6icsz1rr8si4knjgm";
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

    sphinxbase = pkgs.sphinxbase.overrideDerivation (old: rec {
      name = "sphinxbase-5prealpha";
      src = pkgs.fetchurl {
        url = "mirror://sourceforge/cmusphinx/${name}.tar.gz";
        sha256 = "0vr4k8pv5a8nvq9yja7kl13b5lh0f9vha8fc8znqnm8bwmcxnazp";
      };
      nativeBuildInputs = pkgs.lib.concatLists [
        old.nativeBuildInputs
        [ pkgs.swig pkgs.python27 ]
      ];
    });

    pocketsphinx = pkgs.pocketsphinx.overrideDerivation (old: rec {
      name = "pocketsphinx-5prealpha";
      src = pkgs.fetchurl {
        url = "mirror://sourceforge/cmusphinx/${name}.tar.gz";
        sha256 = "1n9yazzdgvpqgnfzsbl96ch9cirayh74jmpjf7svs4i7grabanzg";
      };
      nativeBuildInputs = pkgs.lib.concatLists [
        [ sphinxbase pkgs.pkgconfig pkgs.swig pkgs.python27 ]
        pkgs.gst_all_1.gstreamer.all
        pkgs.gst_all_1.gst-plugins-base.all
      ];
      patches = [ ./pocketsphinx/fix-gstreamer-caps.patch ];
    });

    djvulibre_combined = pkgs.djvulibre.overrideDerivation (old: rec {
      outputs = ["out"];
    });

    pdf2djvu = pkgs.pdf2djvu.overrideDerivation (old: rec {
      nativeBuildInputs = pkgs.lib.concatLists [
        (with pkgs; [pkgconfig poppler.dev poppler.out fontconfig libjpeg])
        djvulibre_combined.all
      ];
    });

    cvsps = pkgs.cvsps.overrideDerivation (old: rec {
      name = "cvsps-20060617";
      src = pkgs.fetchFromGitHub {
        owner  = "andreyvit";
        repo   = "cvsps";
        rev    = "33357c6940d204acac23d9e7ae369d071ce61a01";
        sha256 = "1mcnzr8xf0gvkk9nq64sp17m66z4ywcskb10sb0mr03mmg4fs5c8";
      };
      patches = [];
    });

    inherit (python27Packages) ocrodjvu csvkit gst-gtklaunch;

    #arcane-fixes = /home/remy/Documents/NotWork/Projects/C++/arcane-chat/fixes;

    #gst_all_1 = pkgs.recurseIntoAttrs (pkgs.callPackage "${arcane-fixes}/gstreamer" {});

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

    #liquidHaskell =
    #  let hsPkgs     = pkgs.haskellngPackages;
    #      runFind    = "${pkgs.findutils}/bin/find";
    #      ghcVersion = (builtins.parseDrvName hsPkgs.ghc.name).version;
    #  in buildEnv {
    #    name = "liquidHaskell";
    #    paths = [
    #      hsPkgs.liquidhaskell
    #      hsPkgs.liquid-fixpoint
    #    ];
    #    postBuild = ''
    #        rm -rf $out/bin
    #        mkdir -p $out/bin
    #        source ${pkgs.makeWrapper}/nix-support/setup-hook
    #        export GHC_ROOT="${haskell Pkgs}" # FIXME
    #        wrap () {
    #          makeWrapper "$1" "$2"                                    \
    #            --set NIX_GHC        "$GHC_ROOT/bin"                   \
    #            --set NIX_GHCPKG     "$GHC_ROOT/bin"                   \
    #            --set NIX_GHC_DOCDIR "$GHC_ROOT/share/doc/ghc/html"    \
    #            --set NIX_GHC_LIBDIR "$GHC_ROOT/lib/ghc-${ghcVersion}"
    #        }
    #        for i in "${hsPkgs.liquidhaskell} ${hsPkgs.liquid-fixpoint}"; do
    #          for j in "$(${runFind} $i/bin -executable -xtype f)"; do
    #            echo "Wrapping: $j"
    #            wrap "$j" $out/bin/$(basename "$j")
    #          done
    #        done
    #        exit -1
    #    '';
    #  };

    #nginxWithRTMP = pkgs.nginx.override {
    #  modules = with pkgs.nginxModules; [ rtmp ];
    #};

#<#                          ┌───────────────────────┐
#<# ─────────────────────────┤ Package set overrides ├──────────────────────────
#<#                          └───────────────────────┘

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
      GetoptDeclare = pkgs.callPackage ./perlPackages/GetoptDeclare {};
      TextBalanced  = pkgs.callPackage ./perlPackages/TextBalanced {};
    };

    # goPackages = pkgs.goPackages // {
    #   asciinema = pkgs.callPackage ./goPackages/asciinema {};
    #   color     = pkgs.callPackage ./goPackages/color {};
    #   pup       = pkgs.callPackage ./goPackages/pup {};
    # };

    makeNodePackages = (args:
      pkgs.callPackage ./nodePackages ({ inherit pkgs; } // args));

    myNodePackages_6_x  = makeNodePackages { nodejs = pkgs.nodejs-6_x;  };
    myNodePackages_5_x  = makeNodePackages { nodejs = pkgs.nodejs-5_x;  };
    myNodePackages_4_x  = makeNodePackages { nodejs = pkgs.nodejs-4_x;  };
    myNodePackages_0_10 = makeNodePackages { nodejs = pkgs.nodejs-0_10; };

    myNodePackages = myNodePackages_4_x;

    pythonPackagesGen = (pp:
      pkgs.callPackage ./pythonPackages {
        inherit pkgs;
        pythonPackages = pp;
      });

    pypyPackages     = pythonPackagesGen pkgs.pypyPackages;

    python27Packages = pythonPackagesGen pkgs.python27Packages;
    python33Packages = pythonPackagesGen pkgs.python33Packages;
    python34Packages = pythonPackagesGen pkgs.python34Packages;
    python35Packages = pythonPackagesGen pkgs.python35Packages;

    python2Packages  = python27Packages;
    python3Packages  = python34Packages;
    pythonPackages   = python27Packages;

    pylint  = python2Packages.pylint;
    pylint3 = python3Packages.pylint;

    pythonEnv = { name, paths }: buildEnv {
      inherit name;
      paths = [
        (python35Packages.python.withPackages paths)
      ];
    };

    haskellPackages = pkgs.callPackage ./haskellPackages {
      inherit pkgs;
      haskellPackages = pkgs.haskellPackages;
    };

    profiledHaskellPackages = pkgs.haskellPackages.override {
      overrides = self: super: {
        mkDerivation = args: super.mkDerivation (args // {
          enableLibraryProfiling = true;
        });
      };
    };

    hoogleEnabled = false;

    ghcWith = (if hoogleEnabled then haskellPackages.ghcWithHoogle else haskellPackages.ghcWithPackages);

    haskellEnv = ({ name, paths }:
      pkgs.buildEnv {
        inherit name;
        paths = [ (ghcWith paths) ];
        ignoreCollisions = true;
      });

    idrisPackages = pkgs.idrisPackages.override {
      overrides = self: super: {
        derive = idrisPackages.build-idris-package {
          name = "derive-all-the-instances-20161017";
          src = pkgs.fetchFromGitHub {
            owner = "taktoa";
            repo = "derive-all-the-instances";
            rev = "ddbd418c810b714f2815e97c56a663792567edfd";
            sha256 = "0qimj31s3x3xbbrmdfn588rdfzrwa2qs9y86fd14ym79jxfk9xb0";
          };
          buildInputs = with idrisPackages; [ prelude base pruviloj ];
        };

        lightyear = idrisPackages.build-idris-package {
          name = "lightyear-20160701";
          src = pkgs.fetchFromGitHub {
            owner = "ziman";
            repo = "lightyear";
            rev = "9420f9e892e23a7016dea1a61d8ce43a6d4ecf15";
            sha256 = "0xbjwq7sk4x78mi2zcqxbx7wziijlr1ayxihb1vml33lqmsgl1dn";
          };
          buildInputs = with idrisPackages; [ prelude base effects ];
        };

        wl-pprint = super.wl-pprint.overrideDerivation (old: {
          name = "wl-pprint-20161007";
          src = pkgs.fetchFromGitHub {
            owner = "shayan-najd";
            repo = "wl-pprint";
            rev = "1d365fcf4ba075859844dbc5eb96a90f57b9f338";
            sha256 = "0g7c3y9smifdz4sivi3qmvymhdr7v9kfq45fmfmmvkqcrix0spzn";
          };
        });
      };
    };

    ocamlEnv = pkgs.callPackage ./ocamlwrapper;

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

    emacsEnv = ({ name, paths }:
      pkgs.buildEnv {
        inherit name;
        paths = [ (emacsPackages.emacsWithPackages paths) ];
      });

    overrideDeriv = pkgs.stdenv.lib.overrideDerivation;

    # ideaCommunity = pkgs.idea.idea-community.overrideDerivation (old: {
    #   name = "idea-community-15.0.1";
    #   src = pkgs.fetchurl {
    #     url = "https://download.jetbrains.com/idea/ideaIC-15.0.1.tar.gz";
    #     sha256 = "1dbwzj12xkv2xw5nrhr779ac24hag0rb96dlagzyxcvc44xigjps";
    #   };
    # });

    gradle26 = pkgs.callPackage ./gradle26 {};
    gradle = gradle26;

    resume-cli = pkgs.callPackage ./resume-cli {};

    rapidcheck = pkgs.callPackage ./rapidcheck {};

    gstreamer1 = buildEnv {
      name = "gstreamer1";
      paths = pkgs.lib.concatLists [
        pkgs.gst_all_1.gstreamer.all
        pkgs.gst_all_1.gstreamermm.all
        pkgs.gst_all_1.gst-libav.all
        pkgs.gst_all_1.gst-plugins-base.all
        pkgs.gst_all_1.gst-plugins-good.all
        pkgs.gst_all_1.gst-plugins-ugly.all
        pkgs.gst_all_1.gst-plugins-bad.all
      ];
    };

#<#                               ┌──────────────┐
#<# ──────────────────────────────┤ Package sets ├──────────────────────────────
#<#                               └──────────────┘

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
        csvkit
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
        gstreamer1
        htop
        hwloc
        impressive
        iperf3
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
        resume-cli
        rlwrap
        rtags
        screen
        screenfetch
        i3lock
        i3lock-dpms
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
        deluge
        dmenu
        evince
        fbreader
        filezilla
        firefox
        gnome3.seahorse
        gnumeric
        gsettings_desktop_schemas
        gst-gtklaunch
        quassel
        libreoffice
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
        yakyak
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
        #hledger-irr     #: Computes the internal rate of return with HLedger
        #hledger-diff    #: Compares the transactions in two HLedger files
        #hledger-web     #: Web interface for HLedger

        # Miscellaneous
        pointfree        #: Utility for transforming Haskell to pointfree form
        pointful         #: Utility for transforming Haskell to pointful form
        djinn            #: Find function definitions via parametricity
        darcs            #: Haskell version control tool
        git-annex        #: Manage large files with git
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
        hasktags             #: Generate vim/Emacs tags files from Haskell
        hdevtools            #: Development tools for Haskell
        hlint                #: Check for code smell in Haskell source
        hindent              #: Haskell source formatter
        stylish-haskell      #: Organize Haskell imports
        #~standalone-haddock #: Standalone Haddock
        c2hs                 #: FFI helpers
        c2hsc                #: FFI helpers

        # Build systems
        cabal-install    #: Haskell package manager
        #~stack          #: Wrapper around Cabal
        cabal2nix        #: Generate Nix packages from Cabal files
        shake            #: Haskell-based build system
        shake-language-c #: Shake rules for building C, C++, and Objective C
        #~shake-minify   #: Shake rules for source minification

        # Development
        haddocset         #: Generate Dash/Zeal docsets from Haddock docs
        haskell-docs      #: Documentation browser
        intero            #: Improved version of ghci
        haddock-api       #: The Haddock API
        ghc               #: GHC API
        ghc.doc           #: GHC documentation
        purescript-native #: Purescript compiler

        # Pandoc
        pandoc          #: Convert text files easily
        pandoc-citeproc #: Use the Citation Style Language with Pandoc

        # Hakyll
        #~hakyll  #: A static site generator written in Haskell
        mighttpd2 #: A Warp-based static web server
        warp-tls  #: TLS support for Warp

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
        #~classy-prelude #: A typeclass-based prelude

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
        shelly               #: Use Haskell as a scripting language
        shelly-extra         #: Extra stuff for shelly
        shake                #: Haskell build system
        uuid                 #: UUIDs for Haskell
        derive               #: Tools for deriving instances in Haskell
        type-level-sets      #: Type level sets
        singletons           #: Singletons
        recursion-schemes    #: Generalized bananas, lenses, and barbed wire

        ### System IO
        path           #: A type-safe file path abstraction
        path-io        #: An interface to `directory` using types from `path`
        hpath          #: Another type-safe path library
        process        #: Launch processes from Haskell
        HFuse          #: Bindings for FUSE in Haskell
        hit            #: Tools for interacting with the git store
        gitlib         #: A high-level interface to the Git API
        gitlib-libgit2 #: The libgit2 backend to gitlib
        filestore      #: A high-level interface to multiple versioning file stores
        mmap           #: Gives access to the mmap syscall
        #~libzfs       #: Bindings to the ZFS API
        btrfs          #: Bindings to the btrfs API

        ### Dates and times
        time    #: Time manipulation
        thyme   #: Improved time library
        clock   #: Access to high-resolution clock and timer functions

        ### Text manipulation
        bytestring    #: Lazy and strict packed bytestrings
        split         #: Split strings and lists
        text          #: Packed unicode strings
        text-icu      #: Unicode functions for Data.Text
        #~hyphenation #: Hyphenate / line-break text
        unicode-show  #: Show text with unescaped Unicode characters

        ### General text processing
        pcre-heavy  #: Usable version of pcre-light
        regex-tdfa  #: Regular expressions through tagged DFAs
        regex-pcre  #: PCRE regular expressions
        #~peggy     #: PEG grammars
        parsers     #: Generate parsers from a single definition
        trifecta    #: A user-friendly and effective parser library
        boomerang   #: Reversible parsing
        attoparsec  #: Faster version of Parsec
        parsec      #: Monadic parser combinators
        megaparsec  #: A better version of Parsec
        Earley      #: Earley parsers
        BNFC        #: BNF compiler
        #~BNFC-meta #: TH support for BNFC
        derp        #: Derivative parsers
        happy       #: Haskell parser generator
        alex        #: Haskell lexer generator

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
        aeson-diff     #: Diff JSON
        aeson-lens     #: Lenses for Aeson
        hjsonschema    #: JSON Schema validator
        html-conduit   #: Parse/render HTML
        blaze-html     #: HTML combinators for Haskell
        css-text       #: Parse/render CSS
        email-validate #: Parse/render email addresses
        github         #: Bindings to the GitHub API

        ### Language processing
        haskell-src             #: Parse/render Haskell
        haskell-src-exts_1_18_2 #: Parse/render Haskell
        hint                    #: Interpret Haskell
        s-cargot                #: S-expression parser in Haskell

        ### Image processing
        gloss                #: Easy-to-use bindings to OpenGL
        FontyFruity          #: A Haskell TrueType parser
        JuicyPixels          #: Load and store images in a variety of formats
        Rasterific           #: A rasterizer written in pure Haskell
        #~friday             #: Functional image processing
        #~friday-juicypixels #: Convert between friday and JuicyPixels types
        #~friday-scale-dct   #: Scale friday images with DCT

        ### Graph processing
        graphviz          #: Bindings to the graphviz visualization library
        fgl               #: The Functional Graph Library
        #~graph-rewriting #: Monadic EDSL for graph rewriting

        ### Network
        pcap #: Bindings to libpcap

        ### Command-line interfaces
        brick                #: Terminal application UI
        vty_5_14             #: Virtual terminal library
        concurrent-output    #: Concurrent terminal output
        ascii-progress       #: An ASCII progress bar
        optparse-applicative #: CLI option parsers
        configurator         #: Configuration
        docopt               #: Declarative CLI option parser language

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
        conduit                  #: Deterministic resource handling for Haskell
        conduit-combinators      #: Commonly-used combinators for conduit
        #~classy-prelude-conduit #: Conduit instances for classy-prelude
        conduit-audio            #: Conduits for audio
        conduit-audio-sndfile    #: conduit-audio + sndfile
        pipes                    #: Pipes
        pipes-concurrency        #: Concurrency for pipes
        pipes-safe               #: Resource management and exceptions for pipes
        pipes-http               #: Network sockets for pipes
        pipes-network            #: Network sockets for pipes
        #~pipes-network-tls      #: TLS network sockets for pipes
        pipes-attoparsec         #: Parsing for pipes
        pipes-bytestring         #:
        pipes-extras             #:
        pipes-group              #:
        pipes-parse              #:
        pipes-wai                #:
        #~pipes-courier          #:
        pipes-text               #:
        pipes-aeson              #:
        #~pipes-binary           #:
        pipes-zlib               #:
        pipes-csv                #:
        #~pipes-shell            #:
        #~pipes-zeromq4          #:
        process-streaming        #:

        ### Testing
        HUnit                   #: HUnit is a testing framework for Haskell
        hspec                   #: Hspec is a testing framework for Haskell
        hspec-webdriver         #: Hspec support for webdriver
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
        fitspec                 #: Evolve functions from examples

        ### Benchmarking
        criterion #: Benchmarking library for Haskell
        ekg       #: Get information on a Haskell application

        ### Debugging
        debug-diff #: Do a colorized diff between two Haskell values
        #~editable #: Edit data types on the command line

        ### Compilers
        #~abt               #: Abstract binding trees
        #~bound             #: Easy to use name binding
        #~llvm              #: Bindings to the LLVM compiler toolkit
        #~llvm-general      #: General purpose LLVM bindings
        #~llvm-general-pure #: Pure Haskell LLVM functionality (no FFI)
        language-c          #: C parser and pretty-printer library
        language-dot        #: Graphviz DOT parser and pretty-printer library
        language-javascript #: Javascript parser and pretty-printer library
        language-lua        #: Lua parser and pretty-printer library
        language-nix        #: Nix parser and pretty-printer library
        hnix                #: Nix parser and pretty-printer library
        unification-fd      #: Simple generic unification algorithms
        #~term-rewriting    #: Yet another term-rewriting library

        ### FPGA
        clash-lib           #: A functional hardware description language
        clash-prelude       #: A functional hardware description language
        clash-vhdl          #: VHDL backend for Clash
        clash-verilog       #: Verilog backend for Clash
        clash-systemverilog #: SystemVerilog backend for Clash

        ### Game Engine
        helm #: FRP game engine

        ### Compression
        lz4    #: The LZ4 compression format
        lzma   #: The LZMA compression format
        snappy #: The Snappy compression format
        bzlib  #: The bz2 compression format
        zlib   #: The gzip and zlib compression formats

        ### Archives
        zip-archive        #: The zip archive format
        tar                #: The tar archive format
        libarchive-conduit #: Supports many archive formats

        ### Miscellaneous
        data-default     #: Default values for data types
        optional-args    #: A type for specifying optional function arguments
        #~DataTreeView   #: A GTK widget for viewing generic instances of Data
        #~dynamic-plot   #: Plot continuous/infinite data structures efficiently
        mecha            #: Constructive solid modeling
        #~patches-vector #: An algebraic notion of a patch
        #~diff-parse     #: Parse diff files

        ## -------------------------- Data structures --------------------------

        ### General
        streams              #: Stream comonads
        containers           #: General containers
        unordered-containers #: High-performance unordered containers
        ListLike             #: A typeclass for list-like types

        ### Arrays
        matrix            #: Matrices based on Data.Vector
        accelerate        #: A high-performance embedded array language
        #~accelerate-io   #: Conversion between accelerate and various backends
        repa              #: Regular parallel arrays
        repa-io           #: Regular parallel arrays -- IO
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
        servant          #: Combinators for defining webservices APIs
        servant-server   #: Create servers from servant specifications
        servant-client   #: Autogenerate Haskell to query servant APIs
        servant-blaze    #: Servant support for blaze-html
        servant-js       #: Autogenerate JavaScript to query servant APIs
        #~servant-pandoc #: Create servant API documentation with Pandoc
        scotty           #: A web microframework
        websockets       #: WebSocket-capable servers
        #~socket-io      #: A Socket.io server
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
        threepenny-gui #: FRP GUI using locally-served HTML

        ### Chart
        Chart       #: Generate 2D charts and plots
        Chart-gtk   #: GTK backend for Chart
        Chart-cairo #: Cairo backend for Chart

        ### Diagrams
        diagrams
        diagrams-svg
        diagrams-cairo
        diagrams-graphviz
        diagrams-rasterific
        rasterific-svg

        ### Functional Reactive Programming
        varying              #: FRP framework
        #~reflex             #: FRP framework
        reactive-banana      #: FRP framework
        #~reactive-banana-wx #: wxWidgets for reactive-banana
        frpnow               #: FRP framework
        frpnow-gtk           #: GTK for frpnow

        ### Bindings
        cairo      #: Cairo bindings
        gtk        #: GTK 3 bindings
        gtk3       #: GTK 3 bindings
        sdl2       #: SDL 2 bindings
        sdl2-cairo #: SDL 2 + Cairo helpers
        #~wx       #: wxHaskell
        #~wxc      #: wxHaskell
        #~wxcore   #: wxHaskell
      ];
    };

    idrisPkgs = buildEnv {
      name = "idrisPkgs";
      paths = with pkgs; [
        (with idrisPackages; with-packages [
          base
          prelude
          effects
          contrib
          pruviloj
          derive
          wl-pprint
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
        #gtick
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
        nixpkgs-manual
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
      paths = with perlPackages; [
        # pkgs.perl
        pkgs.pcre
        pkgs.rakudo
        GetoptDeclare
        TextDiff
        XMLLibXML
        XMLSAX
        libxml_perl
      ];
      passthru = { meta = { priority = 0; }; };
    };

    pythonPkgs = pythonEnv {
      name = "pythonPkgs";
      paths = ps: [
        ps.python
        ps.fonttools
        ps.ipython
        ps.matplotlib
        ps.scipy
        ps.numpy
        ps.pygments
        ps.pygobject
        ps.ptpython
        ps.jsonpatch
        ps.pep8
        ps.flake8
        ps.autopep8
        ps.beautifulsoup4
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

    texPkgs = buildEnv {
      name = "texPkgs";
      paths = with pkgs; [
        (texlive.combine {
          # inherit (texlive) collection-wintools;           # length: 1
          # inherit (texlive) collection-basic;              # length: 79
          # inherit (texlive) collection-texworks;           # length: 82
          # #inherit (texlive) collection-langafrican;       # length: 93
          # inherit (texlive) collection-genericrecommended; # length: 99
          # #inherit (texlive) collection-langportuguese;    # length: 103
          # inherit (texlive) collection-fontutils;          # length: 114
          # inherit (texlive) collection-formatsextra;       # length: 117
          # #inherit (texlive) collection-langindic;         # length: 119
          # #inherit (texlive) collection-langarabic;        # length: 120
          # inherit (texlive) collection-langitalian;        # length: 121
          # inherit (texlive) collection-langspanish;        # length: 123
          # inherit (texlive) collection-plainextra;         # length: 125
          # #inherit (texlive) collection-langcjk;           # length: 128
          # inherit (texlive) collection-fontsrecommended;   # length: 145
          # inherit (texlive) collection-langgreek;          # length: 145
          # inherit (texlive) collection-langkorean;         # length: 158
          # #inherit (texlive) collection-langfrench;        # length: 160
          # inherit (texlive) collection-langother;          # length: 165
          # inherit (texlive) collection-luatex;             # length: 170
          # #inherit (texlive) collection-langchinese;       # length: 174
          # inherit (texlive) collection-latex;              # length: 176
          # inherit (texlive) collection-metapost;           # length: 182
          # #inherit (texlive) collection-langgerman;        # length: 186
          # inherit (texlive) collection-genericextra;       # length: 191
          # inherit (texlive) collection-langenglish;        # length: 199
          # inherit (texlive) collection-xetex;              # length: 211
          # inherit (texlive) collection-music;              # length: 233
          # #inherit (texlive) collection-games;             # length: 250
          # #inherit (texlive) collection-binextra;          # length: 263
          # #inherit (texlive) collection-omega;             # length: 285
          # #inherit (texlive) collection-humanities;        # length: 305
          # #inherit (texlive) collection-langczechslovak;   # length: 307
          # #inherit (texlive) collection-langeuropean;      # length: 312
          # #inherit (texlive) collection-langpolish;        # length: 318
          # #inherit (texlive) collection-latexrecommended;  # length: 339
          # #inherit (texlive) collection-science;           # length: 355
          # #inherit (texlive) collection-langcyrillic;      # length: 399
          # #inherit (texlive) collection-langjapanese;      # length: 401
          # #inherit (texlive) collection-pstricks;          # length: 409
          # #inherit (texlive) collection-bibtexextra;       # length: 418
          # #inherit (texlive) collection-pictures;          # length: 435
          # #inherit (texlive) collection-htmlxml;           # length: 453
          # #inherit (texlive) collection-mathextra;         # length: 512
          # #inherit (texlive) collection-publishers;        # length: 584
          # inherit (texlive) collection-fontsextra;         # length: 638
          # #inherit (texlive) collection-context;           # length: 1646
          # inherit (texlive) collection-latexextra;         # length: 3620
          #scheme-full = {
          #  pkgs = map (x: lib.deepSeq x x) texlive.scheme-full.pkgs;
          #};
          inherit (texlive) scheme-full;
          ## FIXME: figure out why (pkg.tlType == "doc") causes a stack overflow
          #pkgFilter = pkg: pkg.tlType == "run" || pkg.tlType == "bin" || pkg.tlType == "doc";
          #pkgFilter = pkg: pkgs.lib.debug.traceSeq pkg.pname (pkg.tlType == "run" || pkg.tlType == "bin");
        })
        lmodern
        texinfoInteractive
        languagetool
      ];
      ignoreCollisions = true;
    };

    vcsPkgs = buildEnv {
      name = "vcsPkgs";
      paths = with pkgs; [
        bazaar
        cvs
        cvsps
        cvs2svn
        cvs_fast_export
        git-lfs
        gitFull
        git-credential-gnome-keyring
        mercurial
        subversion
      ];
    };

    # This package set should be installed with
    #     `nix-env -iA unstable.unstablePkgs`
    # (assuming that you have a nixpkgs unstable channel called "unstable")
    unstablePkgs = buildEnv {
      name = "unstablePkgs";
      paths = with pkgs; [
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
