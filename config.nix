{ secret }:

{


#<# ┌────────────────────────┬───────────────────────┬─────────────────────────┐
#<# ├────────────────────────┤ General configuration ├─────────────────────────┤
#<# └────────────────────────┴───────────────────────┴─────────────────────────┘

  permittedInsecurePackages = [
    "webkitgtk-2.4.11"
  ];

  # cabal = {
  #   enableLibraryProfiling = true;
  # };

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


  packageOverrides = super: let self = super.pkgs; in {

#<#                            ┌───────────────────┐
#<# ───────────────────────────┤ Personal packages ├────────────────────────────
#<#                            └───────────────────┘

    nixpkgs-manual = import <nixpkgs/doc>;

    clfft = super.callPackage ./packages/clfft {};
    arrayfire = self.callPackage ./packages/arrayfire {};

    bussard = super.callPackage ./packages/bussard {};

    bustle = super.callPackage ./packages/bustle {};

    docopt-cpp = super.callPackage ./packages/docopt-cpp {};

    dparser = super.callPackage ./packages/dparser {};

    getVersion = k: (builtins.parseDrvName k.name).version;

    utility = super.callPackage ./packages/utility {};

    smackage = super.callPackage ./packages/smackage {};

    antlr4 = super.callPackage ./packages/antlr4 {};

    h2o = super.callPackage ./packages/h2o {};

    rapidjson = super.callPackage ./packages/rapidjson {};

    cantera = super.callPackage ./packages/cantera {};

    googletest = super.callPackage ./packages/googletest {};

    lm-math = super.callPackage ./packages/lm-math {};

    pragmataPro = super.callPackage ./packages/nonfree/pragmata-pro {};

    # enigma = super.callPackage ./packages/enigma {};

    technicLauncher = super.callPackage ./packages/technic-launcher {};

    pmd = super.callPackage ./packages/pmd {};

    libg15 = super.callPackage ./packages/g15tools/libg15 {};

    libg15render = super.callPackage ./packages/g15tools/libg15render {};

    g15composer = super.callPackage ./packages/g15tools/g15composer {};

    g15daemon = super.callPackage ./packages/g15tools/g15daemon {};

    g15macro = super.callPackage ./packages/g15tools/g15macro {};

    g15tools = super.buildEnv {
      name = "g15tools";
      paths = with super; [ libg15 libg15render g15composer g15daemon g15macro ];
    };

    clp = self.callPackage ./packages/clp {};

    coinutils = self.callPackage ./packages/coinutils {};

    yaehmop = self.callPackage ./packages/yaehmop {};

    avogadro = self.callPackage ./packages/avogadro {};

    cp2k = self.callPackage ./packages/cp2k {};

    libxsmm = self.callPackage ./packages/libxsmm {};

    openbabel = self.callPackage ./packages/openbabel {};

    logkeys = super.callPackage ./packages/logkeys {};

    discord = (
      assert super.discord.version == "0.0.4";
      super.discord.overrideAttrs (old: rec {
        name = "discord-${version}";
        version = "0.0.5";

        src = super.fetchurl {
          url = "https://cdn.discordapp.com/apps/linux/${version}/discord-${version}.tar.gz";
          sha256 = "067gb72qsxrzfma04njkbqbmsvwnnyhw4k9igg5769jkxay68i1g";
        };
      }));

    #teamspeak_client = super.qt55.callPackage ./packages/teamspeak/client.nix {};

    teamspeak_client = super.teamspeak_client.overrideAttrs (old: rec {
      name = "teamspeak-client-${version}";
      version = "3.1.8";
      src = super.fetchurl {
        urls = [
          "http://dl.4players.de/ts/releases/${version}/TeamSpeak3-Client-linux_amd64-${version}.run"
          "http://teamspeak.gameserver.gamed.de/ts3/releases/${version}/TeamSpeak3-Client-linux_amd64-${version}.run"
        ];
        sha256 = "0yav71sfklqg2k3ayd0bllsixd486l0587s5ygjlc9gnchw3zg6z";
      };
    });

    fbset = super.callPackage ./packages/fbset {};

    languagetool = super.stdenv.mkDerivation {
      inherit (super.languagetool) name;
      buildCommand = ''
        mkdir -p "$out/bin"
        for file in ${super.languagetool}/bin/*; do
            ln -sv "$file" "$out/bin/$(basename "$file")"
        done
      '';
    };

    # igraph = super.callPackage (
    #   { stdenv, fetchFromGitHub,
    #     autoconf, automake, libtool, which, git,
    #     libxml2, gmp
    #   }:
    #
    #   stdenv.mkDerivation {
    #     name = "igraph-0.7.1";
    #     src = fetchFromGitHub {
    #       owner  = "igraph";
    #       repo   = "igraph";
    #       rev    = "2c61d45d9b5afde2fd78126a4f0d48f819c5ac94";
    #       sha256 = "1wsy0r511gk069il6iqjs27q8cjvqz20gf0a7inybx1bw84845z8";
    #     };
    #
    #     buildInputs = [ autoconf automake libtool which git libxml2 gmp ];
    #
    #     preConfigure = ''
    #       ./bootstrap.sh
    #     '';
    #   }
    # ) {};

    #  guilePackages = super.callPackage ./packages/guilePackages {};

    gtick = super.callPackage ./packages/gtick {};

    jdksmidi = super.callPackage ./packages/jdksmidi {};

    ariamaestosa = super.callPackage ./packages/ariamaestosa {};

    #obs-studio = super.callPackage ./packages/obs-studio {};

    mocp-xmobar = super.callPackage ./packages/mocp-xmobar {};

    powerline-fonts = super.callPackage ./packages/powerline-fonts {};

    maven = super.callPackage ./packages/maven {};

    rust-bindgen = super.callPackage ./packages/rust-bindgen {};

    rustPackages = super.callPackage ./packages/rustPackages {};

    matlab = super.callPackage ./packages/nonfree/matlab {
      fileInstallationKey = secret.matlabKey;
      matlabIso = file:///opt/MATLAB-R2015a-Linux64.iso;
      licensePath = ../include/license.dat;
      matlabJDK = super.openjdk8;
      licenseAgreed = true;
    };

    nailgunClient = super.callPackage ./packages/nailgun-client {};

    #    kframework = super.callPackage ./packages/kframework {};

    tinycbor = super.callPackage ./packages/tinycbor {};
    libcbor = super.callPackage ./packages/libcbor {};
    herbie = super.callPackage ./packages/herbie {};

    zscreen = super.callPackage ./packages/zscreen {};

    git-credential-gnome-keyring = super.callPackage ./packages/git-cred-gnome {};
    git-credential-libsecret = super.callPackage ./packages/git-cred-libsecret {};

    gnome-builder = super.callPackage ./packages/gnome-builder {};

    libxcomp = super.callPackage ./packages/libxcomp {};

    xfoil = super.callPackage ./packages/xfoil {};

    nxproxy = super.callPackage ./packages/nxproxy {};

    x2goclient = super.callPackage ./packages/x2goclient {};

    # netctl = super.callPackage ./packages/netctl {};

    scrape-html = super.callPackage ./packages/scrape-html {};

    chrome-timer = super.callPackage ./packages/chrome-timer {};

    miraclecast = super.callPackage ./packages/miraclecast {};

    pdf2htmlEX = super.callPackage ./packages/pdf2htmlEX {};

    ceta = super.callPackage ./packages/ceta {};

    wasmint = super.callPackage ./packages/wasmint {};

    maude26 = super.maude;

    maude27 = super.callPackage ./packages/maude {};

    maude = self.maude27;

    yakyak = super.callPackage ./packages/yakyak {};

    daedalus = super.callPackage ./packages/daedalus {};

    cpuchecker = super.callPackage ./packages/cpuchecker {};

    journal-notify = super.callPackage ./packages/journal-notify {};

    peek = super.callPackage ./packages/peek {};

    agda = super.agda // {
      userManual = super.callPackage ./packages/agda/user-manual.nix {};
    };

    #lxqt = lxqt09;

    # lxqt010 = super.recurseIntoAttrs
    #   (import ./packages/lxqt-0.10 {
    #      pkgs = super;
    #      inherit (super) newScope;
    #    });

    # lxqt09 = super.recurseIntoAttrs
    #   (import ./packages/lxqt-0.9 {
    #      pkgs = super;
    #      inherit (super) newScope;
    #    });

    #wpa_supplicant = super.callPackage ./packages/wpa_supplicant {};

    #qtspim = super.callPackage ./packages/qtspim {};

    hackrf = super.hackrf.overrideAttrs (old: {
      src = super.fetchFromGitHub {
        owner  = "taktoa";
        repo   = "hackrf";
        rev    = "3db236454d06afb66feaa88f639084a7103da11d";
        sha256 = "0mdnsypr4mz3bybz4qzagy2vxx6p1m437rg17pxg5ihznznw29la";
      };

      buildInputs = (old.buildInputs or []) ++ [
        super.doxygen
      ];

      patches = (old.patches or []) ++ [ ./packages/hackrf/fftw.patch ];
    });

    westonRift = super.weston.overrideDerivation (old: {
      src = super.fetchFromGitHub {
        owner  = "Nealefelaen";
        repo   = "weston-rift";
        rev    = "6df786bae015f014a4b5d85eb048fc827a09a9b7";
        sha256 = "1a7rdjvaq9clp9467yhlsl6mfz6zppmg1n566lqvb8xa2ixwa4fq";
      };

      preConfigure = ''
        echo "\nLT_INIT\n" >> configure.ac
        ./autogen.sh
      '';

      buildInputs = old.buildInputs ++ (with super; [automake autoconf libtool]);
    });

    evince = super.evince.overrideAttrs (old: {
      buildInputs = (old.buildInputs or []) ++ [ super.texlive.bin.core ];
    });

    binaryen = super.binaryen.overrideAttrs (old: rec {
      version = "1.37.33";
      name = "binaryen-${version}";
      src = super.fetchFromGitHub {
        owner  = "WebAssembly";
        repo   = "binaryen";
        rev    = version;
        sha256 = "1p2a459g4yhw0v3a8hndsqjj5kgnbzlbdbddhv9l078y4ri1sd0f";
      };
    });

    #steam = super.steam.override { newStdcpp = true; };

    factorio = super.factorio.override {
      username = "taktoa";
      password = secret.factorioPassword;
      # mods = (
      #   with rec {
      #     modOptions = {
      #       allRecommendedMods = false;
      #       allOptionalMods = false;
      #     };
      #     makeMod = path: name: super.factorio-utils.modDrv modOptions {
      #       src = super.stdenv.mkDerivation {
      #         inherit name;
      #         src = path;
      #         phases = [ "unpackPhase" "installPhase" ];
      #         installPhase = ''
      #           mkdir -pv "$out"
      #           cp -rv ./${name} "$out"
      #         '';
      #       };
      #     };
      #   };
      #   [
      #     (makeMod ./packages/nonfree/factorio "bobvehicleequipment_0.15.2.zip")
      #     (makeMod ./packages/nonfree/factorio "bobenemies_0.15.2.zip")
      #     (makeMod ./packages/nonfree/factorio "bobtech_0.15.3.zip")
      #     (makeMod ./packages/nonfree/factorio "bobmining_0.15.2.zip")
      #     (makeMod ./packages/nonfree/factorio "bobgreenhouse_0.15.2.zip")
      #     (makeMod ./packages/nonfree/factorio "bobwarfare_0.15.3.zip")
      #     (makeMod ./packages/nonfree/factorio "bobelectronics_0.15.3.zip")
      #     (makeMod ./packages/nonfree/factorio "bobrevamp_0.15.4.zip")
      #     (makeMod ./packages/nonfree/factorio "bobplates_0.15.12.zip")
      #     (makeMod ./packages/nonfree/factorio "boblocale_0.15.4.zip")
      #     (makeMod ./packages/nonfree/factorio "bobpower_0.15.4.zip")
      #     (makeMod ./packages/nonfree/factorio "boblogistics_0.15.6.zip")
      #     (makeMod ./packages/nonfree/factorio "boblibrary_0.15.8.zip")
      #     (makeMod ./packages/nonfree/factorio "bobassembly_0.15.7.zip")
      #     (makeMod ./packages/nonfree/factorio "bobmodules_0.15.3.zip")
      #     (makeMod ./packages/nonfree/factorio "bobinserters_0.15.1.zip")
      #     (makeMod ./packages/nonfree/factorio "bobores_0.15.6.zip")
      #   ]
      # );
    };

    lib = super.stdenv.lib // {
      inherit (builtins) parseDrvName;

      extra = with { inherit (self) lib; }; {
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
        discardOutputDependency = builtins.unsafeDiscardOutputDependency;
        discardStringContext    = builtins.unsafeDiscardStringContext;
        getAttrPos              = builtins.unsafeGetAttrPos;
      };
    };

    # https://github.com/jherico/OculusSDK.git

#<#                            ┌───────────────────┐
#<# ───────────────────────────┤ Package overrides ├────────────────────────────
#<#                            └───────────────────┘

    nix = super.nix.overrideAttrs (old: {
      patches = (old.patches or []) ++ [
        ./packages/patches/nix-repl-hyphen.patch
      ];
    });

    #idea = super.idea.override { jdk = super.oraclejdk8; };

    setName = super.lib.setName;

    # for some reason chromium ends up building from source
    chromium = (
      with {
        chromiumNixpkgs = import <nixpkgs> {
          config = { packageOverrides = _: {}; };
        };
      };
      super.chromium.override {
        #enablePepperFlash = true;
        #enableWideVine    = true;
      });

    chromiumRemoteWrapped = super.writeTextFile {
      name = "chromium-remote-wrapped-" + self.chromium.version;
      text = ''
        #!${super.bash}/bin/bash
        ${self.chromium}/bin/chromium --remote-debugging-port=9222 "$@"
      '';
      executable = true;
      destination = "/bin/chromium";
    };

    i3lock-dpms = super.writeScriptBin "slock" ''
        #!/usr/bin/env bash
        revert() { xset dpms 0 0 0; }
        trap revert SIGHUP SIGINT SIGTERM
        xset +dpms dpms 5 5 5
        ${super.i3lock}/bin/i3lock -n -c000000
        revert
    '';

    xfce = self.xfce4-12;
    xfce4-12 = (
      let f = context: context // rec {
        terminal = xfce4terminal;
        xfce4terminal = (context.xfce4terminal.overrideAttrs (old: {
          name = "xfce4-terminal-0.6.92";
          src = super.fetchurl {
            url = "https://archive.xfce.org/src/apps/xfce4-terminal/0.6/xfce4-terminal-0.6.92.tar.bz2";
            sha256 = "0x0m8sbjx5zh2f2glizb3w7rnx3ndnzwzxiw916smjfras4hy532";
          };
        })).override {
          gtk = super.gtk3;
          vte = super.gnome3.vte-ng;
          libxfce4ui = context.libxfce4ui_gtk3;
        };
      };
      in f (super.xfce4-12.override { newScope = scope: super.newScope (f scope); }));

    # (xfce4-12.xfce4terminal.overrideAttrs (old: { name = "xfce4-terminal-0.6.92"; src = fetchurl { url = "https://archive.xfce.org/src/apps/xfce4-terminal/0.6/xfce4-terminal-0.6.92.tar.bz2"; sha256 = "0x0m8sbjx5zh2f2glizb3w7rnx3ndnzwzxiw916smjfras4hy532"; }; })).override { gtk = gtk3; vte = gnome3.vte-ng; libxfce4ui = xfce4-12.libxfce4ui_gtk3; }

    #qt5Override = super.qt5.base.overrideDerivation;
    #
    #teamspeakQt5 = setName "teamspeak-qt5" (qt5Override (old: {
    #  nativeBuildInputs = old.nativeBuildInputs ++
    #                      (with super; [ libpulseaudio pcre ]);
    #
    #  propagatedBuildInputs = with super; [
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
    #teamspeak_client = super.teamspeak_client.override
    #                   { qt5 = { base = teamspeakQt5; }; };

    #headlessTeamspeak =
    #  let ts3 = super.teamspeak_client;
    #      ts3Version = (builtins.parseDrvName ts3.name).version;
    #      rename = setName "teamspeak-headless-client-${ts3Version}";
    #      inputs = { libpulseaudio = super.libpulseaudio;
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

    wesnoth = super.wesnoth.overrideDerivation (old: {
      name = "wesnoth-1.12.2";
      src = super.fetchurl {
        url = "mirror://sourceforge/sourceforge/wesnoth/wesnoth-1.12.2.tar.bz2";
        sha256 = "12vrzva9zb4p7mjxfd65k5ccg3d5yypmb63vxfipbq8czpjpckqz";
      };
    });

    libcacaFull = super.libcaca.overrideDerivation (old: {
      configureFlags = "";
    });

    # libtoxcore = super.libtoxcore.overrideDerivation (old: {
    #   name = "tox-core-0.1.9";
    #   src = super.fetchFromGitHub {
    #     owner  = "TokTok";
    #     repo   = "c-toxcore";
    #     rev    = "a429ef4a28a5e5e0ad010efffb76d2abc3ada0af";
    #     sha256 = "026srkkksa9ccmgrzas8pxqhc2vja3nrxisl64n20x91nwp4fd8k";
    #   };
    # });

    linuxPackages_grsec_nixos = null; # fix for `nox` evaluation

    freetype = super.freetype.override {
      useEncumberedCode = true;
    };

    # oraclejdk8_helpers = rec {
    #   jdk = rec {
    #     major = "8";
    #     minor = "51";
    #     build = "16";
    #     sha256 = "1wggrcr2gjwkv5bawgcw86h6rhyzw0jphxm1sfwcvhjirh99056p";
    #   };
    #
    #   version = "${jdk.major}u${jdk.minor}";
    #   buildVersion = "${version}-b${jdk.build}";
    #   arch = if super.stdenv.system == "x86_64-linux" then "x64" else "i586";
    #   mirror = "http://download.oracle.com/otn-pub/java/jdk";
    #   url = "${mirror}/${buildVersion}/jdk-${version}-linux-${arch}.tar.gz";
    #
    #   src = super.fetchurl {
    #     inherit url;
    #     inherit (jdk) sha256;
    #     curlOpts = "-b oraclelicense=a";
    #   };
    #
    #   inherit (super.stdenv.lib) overrideDerivation;
    # };
    #
    # oraclejdk8 = (with self.oraclejdk8_helpers;
    #   overrideDerivation super.oraclejdk8 (old: { inherit src; }));

    youtube-dl = super.youtube-dl.overrideDerivation (old: rec {
      name = "youtube-dl-${version}";
      version = "2018.04.09";
      src = super.fetchurl {
        url = "http://youtube-dl.org/downloads/${version}/${name}.tar.gz";
        sha256 = "1n16d1js697wy0hqz70mbhqxgm0lgjbl7180ww7drbkv3j040fr6";
      };
    });

    imgur-screenshot = (
      assert super.imgur-screenshot.name == "imgur-screenshot-1.7.1";
      super.imgur-screenshot.overrideDerivation (old: rec {
        name = "imgur-screenshot-1.7.4";
        src = super.fetchFromGitHub {
          owner  = "jomo";
          repo   = "imgur-screenshot";
          rev    = "1c655554dbdfa38ecafb55e708e87259b8406d80";
          sha256 = "1bhi9sk8v7szh2fj13qwvdwzy5dw2w4kml86sy1ns1rn0xin0cgr";
        };
      }));

    sphinxbase = super.sphinxbase.overrideDerivation (old: rec {
      name = "sphinxbase-5prealpha";
      src = super.fetchurl {
        url = "mirror://sourceforge/cmusphinx/${name}.tar.gz";
        sha256 = "0vr4k8pv5a8nvq9yja7kl13b5lh0f9vha8fc8znqnm8bwmcxnazp";
      };
      nativeBuildInputs = super.lib.concatLists [
        old.nativeBuildInputs
        [ super.swig super.python27 ]
      ];
    });

    pocketsphinx = super.pocketsphinx.overrideDerivation (old: rec {
      name = "pocketsphinx-5prealpha";
      src = super.fetchurl {
        url = "mirror://sourceforge/cmusphinx/${name}.tar.gz";
        sha256 = "1n9yazzdgvpqgnfzsbl96ch9cirayh74jmpjf7svs4i7grabanzg";
      };
      nativeBuildInputs = super.lib.concatLists [
        [ self.sphinxbase super.pkgconfig super.swig super.python27 ]
        super.gst_all_1.gstreamer.all
        super.gst_all_1.gst-plugins-base.all
      ];
      patches = [ ./packages/pocketsphinx/fix-gstreamer-caps.patch ];
    });

    djvulibre_combined = super.djvulibre.overrideDerivation (old: rec {
      outputs = ["out"];
    });

    pdf2djvu = super.pdf2djvu.overrideDerivation (old: rec {
      nativeBuildInputs = super.lib.concatLists [
        (with super; [pkgconfig poppler.dev poppler.out fontconfig libjpeg])
        self.djvulibre_combined.all
      ];
    });

    cvsps = super.cvsps.overrideDerivation (old: rec {
      name = "cvsps-20060617";
      src = super.fetchFromGitHub {
        owner  = "andreyvit";
        repo   = "cvsps";
        rev    = "33357c6940d204acac23d9e7ae369d071ce61a01";
        sha256 = "1mcnzr8xf0gvkk9nq64sp17m66z4ywcskb10sb0mr03mmg4fs5c8";
      };
      patches = [];
    });

    inherit (self.python27Packages) ocrodjvu csvkit gst-gtklaunch;

    mm-common = super.callPackage ./packages/mm-common {};

    #arcane-fixes = /home/remy/Documents/NotWork/Projects/C++/arcane-chat/fixes;

    #gst_all_1 = super.recurseIntoAttrs (super.callPackage "${arcane-fixes}/gstreamer" {});

    gccFull = super.wrapCC (super.gcc5.cc.override {
      langC       = true;
      langCC      = true;
      langObjC    = true;
      langObjCpp  = true;
      langAda     = true;
      langFortran = true;
      langVhdl    = true;
      langGo      = true;
    });

    ocaml = super.ocaml_4_02;

    #liquidHaskell =
    #  let hsPkgs     = super.haskellngPackages;
    #      runFind    = "${super.findutils}/bin/find";
    #      ghcVersion = (builtins.parseDrvName hsPkgs.ghc.name).version;
    #  in super.buildEnv {
    #    name = "liquidHaskell";
    #    paths = [
    #      hsPkgs.liquidhaskell
    #      hsPkgs.liquid-fixpoint
    #    ];
    #    postBuild = ''
    #        rm -rf $out/bin
    #        mkdir -p $out/bin
    #        source ${super.makeWrapper}/nix-support/setup-hook
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

    #nginxWithRTMP = super.nginx.override {
    #  modules = with super.nginxModules; [ rtmp ];
    #};

#<#                          ┌───────────────────────┐
#<# ─────────────────────────┤ Package set overrides ├──────────────────────────
#<#                          └───────────────────────┘

    perlPackages = import ./packages/perlPackages { pkgs = super; };

    # goPackages = import ./packages/goPackages { pkgs = super; };

    # nixNodePackages = super.fetchFromGitHub {
    #   owner  = "taktoa";
    #   repo   = "nix-node-packages";
    #   rev    = "dc3a3be28a87f8390cb995d8cc2a46a4f708b6de";
    #   sha256 = "0k006qzc7cyx41frmyawvp28h2jfi6w7769b64ppzgimfkargr4d";
    # };
    #
    # makeNodePackages = args: (
    #   import self.nixNodePackages ({ pkgs = super; } // args));
    #
    # # makeNodePackages = (args:
    # #   super.callPackage ./packages/nodePackages ({ pkgs = super; } // args));
    #
    # myNodePackages_6_x  = self.makeNodePackages { nodejs = super.nodejs-6_x;  };
    # myNodePackages_5_x  = self.makeNodePackages { nodejs = super.nodejs-5_x;  };
    # myNodePackages_4_x  = self.makeNodePackages { nodejs = super.nodejs-4_x;  };
    # myNodePackages_0_10 = self.makeNodePackages { nodejs = super.nodejs-0_10; };
    #
    # myNodePackages = self.myNodePackages_4_x;
    #
    # nixfromnpm = import (super.fetchFromGitHub {
    #   owner  = "adnelson";
    #   repo   = "nixfromnpm";
    #   rev    = "145ef2ef9711387855221c3f2acb8d1d66760524";
    #   sha256 = "02avbyd5cbbhcs2883xn7mpypxqnwidxv2wvy7jkqxhx4kpfld39";
    # }) { pkgs = super; };

    pythonPackagesGen = (pp:
      super.callPackage ./packages/pythonPackages {
        pkgs = super;
        pythonPackages = pp;
      });

    # pypyPackages     = self.pythonPackagesGen super.pypyPackages;

    # python27Packages = self.pythonPackagesGen super.python27Packages;
    # python34Packages = self.pythonPackagesGen super.python34Packages;
    # python35Packages = self.pythonPackagesGen super.python35Packages;
    # python36Packages = self.pythonPackagesGen super.python36Packages;
    #
    # python2Packages  = self.python27Packages;
    # python3Packages  = self.python35Packages;
    # pythonPackages   = self.python27Packages;

    pylint  = self.python2Packages.pylint;
    pylint3 = self.python3Packages.pylint;

    mal = self.python3Packages.mal;

    pythonEnv = { name, paths }: super.buildEnv {
      inherit name;
      paths = [
        (self.python35Packages.python.withPackages paths)
      ];
    };

    mypy = super.mypy.override {
      inherit (super.python35Packages)
        fetchPypi buildPythonApplication lxml typed-ast;
    };

    liquidHaskellPackages = (super.haskell.packages.ghc7103.override {
      overrides = selff: superr: with super.haskell.lib; {
        tasty-ant-xml   = doJailbreak superr.tasty-ant-xml;
        liquid-fixpoint = dontCheck superr.liquid-fixpoint;
        liquidhaskell   = dontCheck superr.liquidhaskell;
      };
    });

    liquidhaskell = self.liquidHaskellPackages.liquidhaskell;

    makeHaskellPackages = (hp: hp.override
      (import ./packages/haskellPackages/default.nix { pkgs = super; }));

    haskellPackages = self.makeHaskellPackages super.haskell.packages.ghc843;
    ghcjsPackages   = self.makeHaskellPackages super.haskell.packages.ghcjs;

    profiledHaskellPackages = super.haskellPackages.override {
      overrides = selff: superr: {
        mkDerivation = args: superr.mkDerivation (args // {
          enableLibraryProfiling = true;
        });
      };
    };

    hoogleEnabled = true;

    ghcWith = (
      let hp = self.haskellPackages;
      in if self.hoogleEnabled then hp.ghcWithHoogle else hp.ghcWithPackages);

    haskellEnv = ({ name, paths }:
      super.buildEnv {
        inherit name;
        paths = [ (self.ghcWith paths) ];
        ignoreCollisions = true;
        passthru = { inherit paths; };
      });

    idrisPackages = super.idrisPackages.override {
      overrides = selff: superr: {
        derive = selff.build-idris-package {
          name = "derive-all-the-instances-20161017";
          src = super.fetchFromGitHub {
            owner = "taktoa";
            repo = "derive-all-the-instances";
            rev = "ddbd418c810b714f2815e97c56a663792567edfd";
            sha256 = "0qimj31s3x3xbbrmdfn588rdfzrwa2qs9y86fd14ym79jxfk9xb0";
          };
          buildInputs = with superr; [ prelude base pruviloj ];
        };

        lightyear = selff.build-idris-package {
          name = "lightyear-20160701";
          src = super.fetchFromGitHub {
            owner = "ziman";
            repo = "lightyear";
            rev = "9420f9e892e23a7016dea1a61d8ce43a6d4ecf15";
            sha256 = "0xbjwq7sk4x78mi2zcqxbx7wziijlr1ayxihb1vml33lqmsgl1dn";
          };
          buildInputs = with superr; [ prelude base effects ];
        };

        wl-pprint = superr.wl-pprint.overrideDerivation (old: {
          name = "wl-pprint-20161007";
          src = super.fetchFromGitHub {
            owner = "shayan-najd";
            repo = "wl-pprint";
            rev = "1d365fcf4ba075859844dbc5eb96a90f57b9f338";
            sha256 = "0g7c3y9smifdz4sivi3qmvymhdr7v9kfq45fmfmmvkqcrix0spzn";
          };
        });
      };
    };

    ocamlEnv = super.callPackage ./packages/ocamlwrapper;

    # guileEnv = guilePackages.misc.guilewrapper;

    emacsGTK2 = super.emacs.override {
      withGTK2 = true;
      withGTK3 = false;
      inherit (super) gtk2;
    };

    emacsGTK3 = super.emacs.override {
      withGTK2 = false;
      withGTK3 = true;
      inherit (super) gtk3;
    };

    # emacsPackages = super.emacsPackagesGen emacsGTK3 super.emacsPackages;
    # emacsPackagesNg = (
    #   (super.emacsPackagesNgGen emacsGTK3).overrideScope
    #   (superr: selff: {
    #     cask = super.cask;
    #   }));

    emacsEnv = ({ name, paths }:
      super.buildEnv {
        inherit name;
        paths = [ (self.emacsPackagesNg.emacsWithPackages paths) ];
      });

    overrideDeriv = super.stdenv.lib.overrideDerivation;

    cask = self.emacsPackages.cask;

    # ideaCommunity = super.idea.idea-community.overrideDerivation (old: {
    #   name = "idea-community-15.0.1";
    #   src = super.fetchurl {
    #     url = "https://download.jetbrains.com/idea/ideaIC-15.0.1.tar.gz";
    #     sha256 = "1dbwzj12xkv2xw5nrhr779ac24hag0rb96dlagzyxcvc44xigjps";
    #   };
    # });

    gradle26 = super.callPackage ./packages/gradle26 {};
    gradle = self.gradle26;

    resume-cli = super.callPackage ./packages/resume-cli {};

    rapidcheck = super.callPackage ./packages/rapidcheck {};

    gstreamer1 = super.buildEnv {
      name = "gstreamer1";
      paths = super.lib.concatLists [
        super.gst_all_1.gstreamer.all
        super.gst_all_1.gstreamermm.all
        super.gst_all_1.gst-libav.all
        super.gst_all_1.gst-plugins-base.all
        super.gst_all_1.gst-plugins-good.all
        super.gst_all_1.gst-plugins-ugly.all
        super.gst_all_1.gst-plugins-bad.all
      ];
    };

#<#                               ┌──────────────┐
#<# ──────────────────────────────┤ Package sets ├──────────────────────────────
#<#                               └──────────────┘

    #    templatePkgs = self.buildEnv {
    #      name = "templatePkgs";
    #      paths = with super; [
    #      ];
    #    };

    cliPkgs = {
      inherit (self)
        archivemount
        aria2
        axel
        bashInteractive
        bashCompletion
        cdrkit
        #csvkit
        cscope
        cv
        docbook2x
        docbook5_xsl
        dos2unix
        expect
        file
        gettext
        gist
        gnupg
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
        pdf2djvu
        pixz
        psmisc
        pv
        ranger
        #resume-cli
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
        xlsfonts
        zip
        zsh;
      inherit (self.xlibs)
        xev;
    };

    devPkgs = {
      inherit (self)
        # gcc-arm-embedded
        # androidsdk_4_4
        clang_4
        # clang-analyzer
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
        ncurses;
    };

    elmPkgs = {
      inherit (self.elmPackages)
        elm;
    };

    emacsPkgs = self.emacsEnv {
      name = "emacsPkgs";
      paths = p: [
        p.rtags
        # p.ghc-mod
        # p.agda2-mode
        super.ott
        super.ats2
      ];
    };

    fontPkgs = {
      inherit (self)
        inconsolata
        pragmataPro
        powerline-fonts;
    };

    gamePkgs = {
      inherit (self)
        # enigma
        dwarf_fortress
        technicLauncher
        the-powder-toy;
    };

    goPkgs = {
      inherit (self)
        go
        asciinema
        keybase-go;
    };

    guiPkgs = {
      inherit (self)
        arandr
        # bustle
        conkeror
        deluge
        dmenu
        eagle
        evince
        fbreader
        filezilla
        firefox
        gnumeric
        gsettings_desktop_schemas
        quassel
        libreoffice
        lxappearance
        paprefs
        pavucontrol
        pidgin
        slack
        teamspeak_client
        # transmission_gtk
        unetbootin
        weston
        wpa_supplicant_gui
        # yakyak
        zeal
        gst-gtklaunch;
      inherit (self.gnome3)
        seahorse;
    };

    # guilePkgs = guileEnv {
    #   name = "guilePkgs";
    #   paths = let gp = super.guilePackages; in [
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

    haskellProgPkgs = self.buildEnv {
      name = "haskellProgPkgs";
      paths = with self.haskellPackages; [
        ### Build systems
        #~hi           #: Project template system
        #stack         #: Wrapper around Cabal
        #hpack         #: Generate Cabal files from more maintainable YAML
        #cabal-install #: Cabal executable

        ### Runtime inspection
        #threadscope #: Haskell graphical profiler

        ### Compilers
        #ghc                          #: GHC API
        #idris                        #: Idris compiler
        #Agda                         #: Agda compiler
        #self.haskell.compiler.uhc    #: UHC compiler
        #self.haskell.compiler.jhc    #: JHC compiler
        # self.haskell.compiler.ghcjs #: Javascript backend to GHC
        ghc.doc                       #: GHC documentation

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
        #git-annex       #: Manage large files with git
        #~git-vogue      #: A framework for git pre-commit hooks
        #packunused      #: Detect redundant Cabal package dependencies
        #~cgrep          #: Semantic code search
        #~bench          #: Benchmarking for command-line programs
        #xml-to-json     #: Convert XML to JSON
        xml-to-json-fast #: Faster, but less correct, conversion of XML to JSON
        hp2pretty        #: Render heap profiles in a more pretty way
        happy            #: Haskell parser generator
        alex             #: Haskell lexer generator
      ];
    };

    haskellPkgs = self.haskellEnv {
      name = "haskellPkgs";
      paths = p: with p; [
        ## ------------------------------- Tools -------------------------------

        # Source manipulation
        #~ghc-mod            #: Enrich Haskell editing
        #~halberd            #: Add missing imports to a Haskell file
        #hasktags            #: Generate vim/Emacs tags files from Haskell
        #hdevtools           #: Development tools for Haskell
        hlint                #: Check for code smell in Haskell source
        #hindent             #: Haskell source formatter
        #~stylish-haskell    #: Organize Haskell imports
        #~standalone-haddock #: Standalone Haddock
        c2hs                 #: FFI helpers
        # Cabal_1_24_2_0     #: Latest version of Cabal

        # Build systems
        # cabal-install  #: Haskell package manager
        #~stack          #: Wrapper around Cabal
        #~cabal2nix      #: Generate Nix packages from Cabal files
        shake            #: Haskell-based build system
        #shake-language-c #: Shake rules for building C, C++, and Objective C
        #shake-minify     #: Shake rules for source minification

        # Development
        #~haddocset         #: Generate Dash/Zeal docsets from Haddock docs
        #~haskell-docs      #: Documentation browser
        #intero             #: Improved version of ghci
        haddock-library     #: The Haddock library
        haddock-api         #: The Haddock API
        ghc                 #: GHC API
        #~purescript-native #: Purescript compiler
        ghcid               #: GHCi daemon
        ghci-pretty         #: GHCi syntax highlighting
        #~liquidhaskell     #: Refinement types for Haskell
        #~ghc-proofs        #: Allows GHC to prove program equations for you

        # Pandoc
        pandoc           #: Convert text files easily
        #pandoc-citeproc #: Use the Citation Style Language with Pandoc

        # Hakyll
        #hakyll   #: A static site generator written in Haskell
        mighttpd2 #: A Warp-based static web server
        warp-tls  #: TLS support for Warp

        # XMonad
        DescriptiveKeys      #: Specify self-documenting XMonad keybindings
        xmobar               #: An information bar written in Haskell
        xmonad               #: A tiling window manager written in Haskell
        xmonad-contrib       #: Contributed libraries for xmonad
        #~xmonad-contrib-gpl #: GPL-licensed parts of xmonad-contrib
        #xmonad-extras       #: Extra libraries for xmonad
        xmonad-screenshot    #: A screenshot library for xmonad
        xmonad-utils         #: A small collection of utilities for xmonad
        yeganesh             #: A dmenu wrapper that shows common commands

        # Yi
        # yi                 #: Yi editor
        # yi-core            #: Yi core library
        # yi-frontend-pango  #: Yi frontend based on Pango
        # yi-frontend-vty    #: Yi frontend based on VTY
        # yi-keymap-cua      #: Yi keymap: CUA
        # yi-keymap-emacs    #: Yi keymap: Emacs
        # yi-keymap-vim      #: Yi keymap: Vim
        # #~yi-monokai       #: Yi color scheme: Monokai
        # #~yi-solarized     #: Yi color scheme: Solarized
        # yi-language        #: Various language-related Yi libraries
        # yi-misc-modes      #: Yi modes for various other languages
        # yi-mode-haskell    #: Yi mode for Haskell
        # yi-mode-javascript #: Yi mode for JavaScript
        # #~yi-contrib       #: User-contributed Yi libraries
        # yi-fuzzy-open      #: Fuzzy open plugin for Yi
        # yi-ireader         #: Yi incremental reader
        # yi-snippet         #: Yi support for snippets
        # yi-emacs-colours   #: Convert Emacs color names to Yi's Color type
        # yi-rope            #: A rope data structure used by Yi

        # Misc
        #~packdeps   #: Various tools for dealing with a Hackage database
        #ghc-datasize #: Get the size of a Haskell data type
        #~ghc-vis    #: Visualize GHC data structures in memory
        ShellCheck   #: A linter for bash
        antigen-hs   #: A package manager for zsh
        #sdr         #: Software-defined radio library for Haskell

        ## ------------------------------ General ------------------------------

        ### Prelude
        #universum     #: Good custom prelude
        classy-prelude #: A typeclass-based prelude

        ### Unicode
        base-unicode-symbols       #: Unicode Prelude
        containers-unicode-symbols #: Unicode containers

        ### General
        lens                 #: For composing families of getters, folds, etc.
        lens-family          #: Older alternative to lens
        microlens            #: A smaller lens library
        total                #: Exhaustive pattern matching with prisms
        foldl                #: Strict left folds
        #loops               #: Fast imperative loops
        free                 #: Free monads
        comonad              #: Comonads
        profunctors          #: Profunctors
        kan-extensions       #: Kan extensions
        contravariant        #: Contravariant functors
        safe                 #: Safe variants of list and string functions
        data-memocombinators #: Combinators for memoization
        here                 #: String interpolation
        heredoc              #: String interpolation
        turtle               #: Write scripts in Haskell
        shelly               #: Use Haskell as a scripting language
        shelly-extra         #: Extra stuff for shelly
        shake                #: Haskell build system
        uuid                 #: UUIDs for Haskell
        derive               #: Tools for deriving instances in Haskell
        #type-list           #: Type-level lists and tuples
        #type-level-sets     #: Type-level sets
        singletons           #: Singletons
        recursion-schemes    #: Generalized bananas, lenses, and barbed wire
        vinyl                #: Extensible records for Haskell
        #~composite-aeson    #: Aeson instances for Vinyl
        promises             #: Lazy imperative programming
        discrimination       #: Generic, linear-time discrimination and sorting
        #~lvish              #: Deterministic parallelism
        #lio                 #: Labelled IO
        #lio-fs              #: Labelled IO filesystem primitives
        retry                #: Retry combinators
        nondeterminism       #: Non-determinism monad
        refined              #: Refinement types in Haskell
        compact              #: Compact regions

        ### System IO
        path           #: A type-safe file path abstraction
        path-io        #: An interface to `directory` using types from `path`
        hpath          #: Another type-safe path library
        process        #: Launch processes from Haskell
        HFuse          #: Bindings for FUSE in Haskell
        #hit           #: Tools for interacting with the Git store
        #hit-graph     #: Extract a commit graph with `hit`
        #gitlib         #: A high-level interface to the Git API
        #gitlib-libgit2 #: The libgit2 backend to gitlib
        #~filestore    #: A high-level interface to multiple VCS file stores
        mmap           #: Gives access to the mmap syscall
        libzfs         #: Bindings to the ZFS API
        btrfs          #: Bindings to the btrfs API

        ### Dates and times
        time    #: Time manipulation
        thyme   #: Improved time library
        chronos #: Yet another time library
        clock   #: Access to high-resolution clock and timer functions

        ### Locations
        country #: ISO 3166 country codes

        ### System administration
        cron #: Types and parsers for the `crontab` configuration format

        ### Text manipulation
        bytestring           #: Lazy and strict packed bytestrings
        split                #: Split strings and lists
        text                 #: Packed unicode strings
        text-icu             #: Unicode functions for Data.Text
        text-short           #: Provides a `ShortText` type
        hyphenation          #: Hyphenate / line-break text
        #~unicode-show       #: Show text with unescaped Unicode characters
        pretty-show          #: Pretty-print types with Show instances
        sexp-show            #: Convert types with Show instances to s-exprs
        bytestring-show      #: Convert types with Show instances to ByteString
        #~pragmatic-show     #: Alternative Show class that gives shorter view
        text-show            #: Convert types with Show instances to Text
        #text-show-instances #: Instances for `text-show`

        ### General text processing
        pcre-light         #: PCRE library
        pcre-heavy         #: Usable version of pcre-light
        regex-tdfa         #: Regular expressions through tagged DFAs
        regex-posix        #: POSIX regular expressions
        regex-pcre-builtin #: PCRE regular expressions
        #~peggy            #: PEG grammars
        parsers            #: Generate parsers from a single definition
        trifecta           #: A user-friendly and effective parser library
        #~boomerang        #: Reversible parsing
        attoparsec         #: Faster version of Parsec
        parsec             #: Monadic parser combinators
        megaparsec         #: A better version of Parsec
        Earley             #: Earley parsers
        #BNFC              #: BNF compiler
        #~BNFC-meta        #: TH support for BNFC
        #~derp             #: Derivative parsers
        #happy             #: Haskell parser generator
        #alex              #: Haskell lexer generator
        loc                #: Source spans and locations
        loc-test           #: Hedgehog generators for `loc`

        ### Binary serialization
        cereal                #: Binary serialization
        binary                #: High performance binary serialization
        store                 #: Efficient pickling
        cborg                 #: CBOR library
        cborg-json            #: Convert between CBOR and JSON
        serialise             #: CBOR-based serialization library
        #flat                 #: Bit-oriented binary serialization

        ### Simple text processing
        base16-bytestring #: Parse/render hexadecimal
        base64-bytestring #: Parse/render Base64
        unix-time         #: Parse/render times
        hex               #: Convert strings to/from hexadecimal
        pretty-hex        #: Convert strings to/from hexadecimal

        ### Markup processing
        xml-conduit         #: Parse/render XML
        xml-lens            #: Lenses for xml-conduit
        dom-selector        #: CSS3 selectors for xml-conduit
        yaml                #: Parse/render YAML
        markdown            #: Parse/render Markdown
        xml                 #: More XML stuff
        hxt                 #: The Haskell XML Toolkit
        hxt-css             #: CSS3 selectors for hxt
        tagsoup             #: Unstructured HTML parser
        #~tagsoup-selection #: CSS3 selectors for tagsoup
        hxt-tagsoup         #: Interface between tagsoup and HXT
        fast-tagsoup        #: Faster parser for tagsoup
        xlsx                #: Parse Microsoft Excel XML files
        HaTeX               #: Render TeX files with Haskell

        ### Web data processing
        aeson          #: Parse/render JSON
        aeson-diff     #: Diff JSON
        lens-aeson     #: Law-abiding lenses for aeson
        html-conduit   #: Parse/render HTML
        blaze-html     #: HTML combinators for Haskell
        css-text       #: Parse/render CSS
        email-validate #: Parse/render email addresses

        ### Web API bindings
        github           #: Bindings to the GitHub API
        #twitter-conduit #: Bindings to the Twitter API
        #hackernews      #: Bindings to the Hacker News API
        #reddit          #: Bindings to the Reddit API

        ### Cloud API bindings
        #~gogol                 #: FIXME: doc
        #~gogol-core            #: FIXME: doc
        #~gogol-ml              #: FIXME: doc
        #~gogol-pubsub          #: FIXME: doc
        amazonka                #: FIXME: doc
        amazonka-ec2            #: FIXME: doc
        amazonka-opsworks       #: FIXME: doc
        amazonka-opsworks-cm    #: FIXME: doc
        amazonka-cloudformation #: FIXME: doc

        ### Language processing
        haskell-src      #: Parse/render Haskell
        haskell-src-exts #: Parse/render Haskell
        #haskell-names   #: Name resolution for Haskell
        #hint            #: Interpret Haskell
        s-cargot         #: S-expression parser

        ### Fonts and text rendering
        FontyFruity #: A Haskell TrueType parser
        freetype2   #: Bindings to the FreeType library
        FTGL        #: Portable font rendering for OpenGL using FreeType

        ### Image processing
        #gloss             #: Easy-to-use bindings to OpenGL
        JuicyPixels        #: Load and store images in a variety of formats
        Rasterific         #: A rasterizer written in pure Haskell
        friday             #: Functional image processing
        friday-juicypixels #: Convert between friday and JuicyPixels types
        friday-scale-dct   #: Scale friday images with DCT

        ### Graph processing
        graphviz         #: Bindings to the graphviz visualization library
        dotgen           #: A simple interface for building GraphViz dot files
        fgl              #: The Functional Graph Library
        #graph-rewriting #: Monadic EDSL for graph rewriting
        #graph-matchings #: Compute maximal matchings in bipartite graphs

        ### Network
        pcap #: Bindings to libpcap
        ip   #: Types for IP and MAC addressese

        ### Command-line interfaces
        brick                #: Terminal application UI
        # vty_5_14           #: Virtual terminal library
        concurrent-output    #: Concurrent terminal output
        ascii-progress       #: An ASCII progress bar
        optparse-applicative #: CLI option parsers
        configurator         #: Configuration
        docopt               #: Declarative CLI option parser language

        ### Exceptions
        exceptions          #: Extensible optionally-pure exceptions
        enclosed-exceptions #: Exceptions amenable to asynchrony

        ### Monads
        #~extensible-effects #: Extensible effects
        lifted-base          #: IO operations lifted to monad typeclasses
        mtl                  #: Monad transformers for Haskell
        monad-loops          #: Monadic control logic
        ether                #: Tagged monad transformers and classes

        ### Concurrency
        async         #: A concurrent thread abstraction
        stm           #: Software transactional memory
        resource-pool #: A pooling abstraction for collections of resources
        thespian      #: Actor model concurrency in Haskell
        concurrency   #: Typeclasses wrapping Control.Concurrent et al.
        dejafu        #: Testing for concurrent programs
        unagi-chan    #: Better FIFO queues

        ### Distributed systems
        distributed-process #: Cloud Haskell

        ### Iteratees
        conduit                 #: Deterministic resource handling for Haskell
        conduit-combinators     #: Commonly-used combinators for conduit
        classy-prelude-conduit  #: Conduit instances for classy-prelude
        conduit-audio           #: Conduits for audio
        conduit-audio-sndfile   #: conduit-audio + sndfile
        pipes                   #: Pipes
        pipes-group             #: Group pipes streams into sub-streams
        pipes-parse             #: Shared parsing idioms for pipes
        pipes-safe              #: Resource management and exceptions for pipes
        pipes-concurrency       #: Concurrency for pipes
        pipes-extras            #: Extra utilities for pipes
        pipes-http              #: Network sockets for pipes
        pipes-network           #: Network sockets for pipes
        #~pipes-network-tls     #: TLS network sockets for pipes
        pipes-bytestring        #: Stream bytestrings with pipes
        pipes-text              #: Stream text with pipes
        pipes-wai               #: Pipes support for WAI
        #~pipes-courier         #: Message passing for pipes
        pipes-attoparsec        #: Parse with attoparsec in pipes
        pipes-aeson             #: Parse JSON in pipes
        pipes-binary            #: Parse binary data in pipes
        #~pipes-zlib            #: (De)compress data with zlib in pipes
        pipes-bzip              #: (De)compress data with bzip in pipes
        pipes-csv               #: Parse CSV in pipes
        #~pipes-shell           #: Use pipes with System.Process
        #~pipes-zeromq4         #: ZeroMQ integration with pipes
        pipes-break             #: Split text flowing through a pipe
        #process-streaming      #: Streaming interface to system processes
        daemons                 #: Daemons based on pipes
        streaming               #: A replacement for pipes
        streaming-binary        #: Use binary with streaming
        streaming-bytestring    #: Use bytestring with streaming
        #~streaming-attoparsec  #: Use attoparsec with streaming
        #streaming-cassava      #: Use cassava with streaming
        #~streaming-concurrency #: Use concurrency with streaming
        streaming-conduit       #: Use conduit with streaming
        #~streaming-process     #: Use processes with streaming
        streaming-wai           #: Use WAI with streaming
        #~streaming-pcap        #: Use libpcap with streaming
        #~streaming-base64      #: Decode Base64 with streaming
        #~streaming-png         #: Decode PNGs with streaming
        #~streaming-sort        #: Sort streaming values
        #~streaming-utils       #: Utilities for working with streaming
        streaming-with          #: Utilities for working with streaming

        ### Testing
        HUnit                      #: HUnit is a testing framework for Haskell
        hspec                      #: Hspec is a testing framework for Haskell
        #hspec-webdriver           #: Hspec support for webdriver
        hspec-laws                 #: Test laws for standard type classes
        hspec-attoparsec           #: Test your attoparsec parsers with hspec
        hspec-expectations         #: Hspec combinators
        hspec-expectations-lens    #: Hspec expectations for the lens stuff
        tasty                      #: A generalized testing framework
        tasty-golden               #: Golden tests
        tasty-rerun                #: Run tests by filtering the test tree
        tasty-hunit                #: Tasty support for HUnit
        tasty-hspec                #: Tasty support for Hspec
        tasty-quickcheck           #: Tasty support for QuickCheck
        tasty-smallcheck           #: Tasty support for SmallCheck
        tasty-hedgehog             #: Tasty support for Hedgehog
        tasty-ant-xml              #: Jenkins output for Tasty
        #tasty-html                #: Render Tasty output to HTML
        #~tasty-lens               #: Tasty support for testing lenses
        doctest                    #: Run examples in documentation as tests
        fitspec                    #: Evolve functions from examples
        hedgehog                   #: Better than QuickCheck
        hedgehog-corpus            #: Collections of strings for testing
        hedgehog-quickcheck        #: Hedgehog/QuickCheck interop
        #hedgehog-checkers         #: Test laws with Hedgehog
        #hedgehog-checkers-lens    #: Test lens laws with Hedgehog
        #~hedgehog-gen-json        #: Generate JSON for Hedgehog tests
        QuickCheck                 #: Random property-based testing
        quickcheck-instances       #: Useful orphan instances for QuickCheck
        #~quickcheck-regex         #: Generate regex-constrained strings
        smallcheck                 #: Exhaustive property-based testing
        #~smallcheck-series        #: Useful orphan instances for SmallCheck
        #~smallcheck-lens          #: Exhaustive testing of lenses

        ### Benchmarking
        criterion #: Benchmarking library for Haskell
        #ekg      #: Get information on a Haskell application

        ### Debugging
        debug-diff #: Do a colorized diff between two Haskell values
        #~editable #: Edit data types on the command line

        ### Pretty-printing
        prettyprinter
        prettyprinter-ansi-terminal
        prettyprinter-compat-annotated-wl-pprint
        prettyprinter-compat-ansi-wl-pprint
        prettyprinter-compat-wl-pprint
        # prettyprinter-convert-ansi-wl-pprint

        ### Compilers
        abt                  #: Abstract binding trees
        bound                #: Easy to use name binding
        #~llvm               #: Bindings to the LLVM compiler toolkit
        #~llvm-general       #: General purpose LLVM bindings
        #~llvm-general-pure  #: Pure Haskell LLVM functionality (no FFI)
        language-c           #: C parser and pretty-printer library
        language-boogie      #: Boogie parser and pretty-printer library
        #language-dot        #: Graphviz DOT parser and pretty-printer library
        #language-javascript #: Javascript parser and pretty-printer library
        #language-lua        #: Lua parser and pretty-printer library
        language-nix         #: Nix parser and pretty-printer library
        hnix                 #: Nix parser and pretty-printer library
        nix-derivation       #: Nix drv file parser
        #~unbound            #: Support for programming with names and binders
        unification-fd       #: Simple generic unification algorithms
        #~RepLib             #: Generic programming for structural polymorphism
        term-rewriting       #: Yet another term-rewriting library
        smtlib2              #: Communicate with an SMT solver
        #smtlib2-pipe        #: Communicate with an SMT solver
        #~smtlib2-quickcheck #: Communicate with an SMT solver
        #smtlib2-debug       #: Communicate with an SMT solver
        #smtlib2-timing      #: Communicate with an SMT solver

        ### FPGA
        #clash-lib           #: A functional hardware description language
        #clash-prelude       #: A functional hardware description language
        #clash-vhdl          #: VHDL backend for Clash
        #clash-verilog       #: Verilog backend for Clash
        #clash-systemverilog #: SystemVerilog backend for Clash

        ### Game Engine
        helm #: FRP game engine

        ### Music
        #~mezzo #: Type-safe music composition

        ### Geometry
        grid      #: Grids and lattices
        wavefront #: Wavefront OBJ parser

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

        ### Logging
        fast-logger  #: A fast logging system
        monad-logger #: A monad transformer approach for logging
        datadog      #: A DataDog client written in Haskell

        ### GObject Introspection
        #~haskell-gi        #: Automatically generate GI bindings
        #~gi-atk            #: GI bindings for ATK
        #~gi-cairo          #: GI bindings for Cairo
        #~gi-gdkpixbuf      #: GI bindings for GDK PixBuf
        #~gi-gio            #: GI bindings for GIO
        #~gi-gobject        #: GI bindings for GObject
        #~gi-gtk            #: GI bindings for GTK 3
        #~gi-javascriptcore #: GI bindings for JavaScriptCore
        #~gi-gdk            #: GI bindings for GDK
        #~gi-glib           #: GI bindings for GLib
        #~gi-pango          #: GI bindings for Pango
        #~gi-soup           #: GI bindings for libsoup
        #~gi-secret         #: GI bindings for libsecret
        #~gi-webkit2        #: GI bindings for WebKit2

        ### Miscellaneous
        data-default     #: Default values for data types
        optional-args    #: A type for specifying optional function arguments
        #~DataTreeView   #: A GTK widget for viewing generic instances of Data
        #~dynamic-plot   #: Plot continuous/infinite data structures efficiently
        mecha            #: Constructive solid modeling
        #patches-vector  #: An algebraic notion of a patch
        diff-parse       #: Parse diff files
        chesshs          #: Parse chess PGN notation
        #~fficxx         #: C++ FFI generator
        #~fficxx-runtime #: C++ FFI generator
        flow             #: Useful composition operators
        reinterpret-cast #: Memory reinterpretation casts
        #~quota          #: Usage quota monad
        #barrier         #: Generate `shields.io`-style badges
        spdx             #: SPDX license language
        data-reify       #: Reify a recursive data structure into a graph
        simplessh        #: Simple wrapper around libssh2
        libssh2          #: Bindings to libssh2
        libssh2-conduit  #: Conduit wrapper around libssh2
        lrucaching       #: LRU cache
        BoundedChan      #: Bounded channel
        bloomfilter      #: Bloom filter
        concurrent-extra #: Extra tools for concurrency
        lens-simple      #: Simplified import of lens combinators

        ## -------------------------- Data structures --------------------------

        ### General
        streams              #: Stream comonads
        containers           #: General containers
        unordered-containers #: High-performance unordered containers
        impure-containers    #: Mutable, impure containers
        ListLike             #: A typeclass for list-like types
        fingertree           #: Finger trees, interval maps, and priority queues
        data-partition       #: Disjoint set (union-find) data structure
        disjoint-sets-st     #: Imperative ST/IO based disjoint sets
        disjoint-containers  #: Containers based on disjoint sets
        psqueues             #: Pure priority search queues
        #~btree              #: B-trees on the compact heap
        bktrees              #: Burkhard-Keller trees
        #~critbit            #: Crit-bit trees
        bv                   #: Bit vectors
        union-find           #: A basic union-find data structure
        equivalence          #: A union-find data structure on top of STT
        judy                 #: Extremely fast mutable associative arrays
        unordered-graphs     #: Graphs using `unordered-containers`
        algebraic-graphs     #: Build graphs using simple combinators
        graphs               #: A simple monadic graph library
        graphite             #: A library for graphs and networks
        graph-core           #: A fast, persistent graph implementation
        #~igraph             #: Bindings to the `igraph` C library
        #bytestring-trie     #: A trie for bytestrings

        ### Arrays
        matrix                  #: Matrices based on Data.Vector
        accelerate              #: A high-performance embedded array language
        #accelerate-io          #: Accelerate <~> other array types
        #accelerate-llvm        #: LLVM IR generation for Accelerate
        #accelerate-llvm-native #: Multicore CPU backend for Accelerate
        #accelerate-blas        #: Accelerate BLAS bindings
        #~accelerate-bignum     #: Bignum support for Accelerate
        #linear-accelerate      #: Use `linear` with Accelerate
        #lens-accelerate        #: Lenses for Accelerate arrays
        #gloss-accelerate        #: Use Accelerate arrays with Gloss
        #gloss-raster-accelerate #: Render raster images with Accelerate/Gloss
        #colour-accelerate       #: RGBA colors with Accelerate
        #mwc-random-accelerate   #: Random arrays with Accelerate
        repa                    #: Regular parallel arrays
        repa-io                 #: Regular parallel arrays -- IO
        repa-algorithms         #: Regular parallel arrays -- Algorithms
        vector                  #: Mutable and immutable Int-indexed arrays
        vector-algorithms       #: Efficient algorithms for vector arrays
        vector-instances        #: Orphan instances for the vector package
        vector-fftw             #: FFT on 1D vectors

        ## ----------------------------- Algorithms ----------------------------

        ### Search
        #~search      #: Infinite search in finite time with Hilbert's epsilon
        astar         #: Data-structure polymorphic A* search
        binary-search #: Binary and exponential searches
        lca           #: Lowest common ancestor search in O(log(n)) time

        ## -------------------------------- Web --------------------------------

        ### IPC
        zeromq4-haskell #: Low latency message queue
        protobuf        #: C++-compatible "type-safe" binary serialization
        dbus            #: DBus client and server

        ### Web clients
        curl         #: Bindings to libcurl
        gravatar     #: Helpers for accessing Gravatar
        wreq         #: Simple web requests
        http-client  #: HTTP client
        http-conduit #: Conduit adapter for http-client
        http2        #: Haskell HTTP2 library

        ### Web servers
        servant              #: Combinators for defining webservices APIs
        servant-server       #: Create servers from servant specifications
        servant-client       #: Autogenerate Haskell to query servant APIs
        servant-blaze        #: Servant support for blaze-html
        #servant-js          #: Autogenerate JavaScript to query servant APIs
        #~servant-pandoc     #: Create servant API documentation with Pandoc
        #~servant-purescript #: Generate PureScript types from your Servant API
        #servant-elm         #: Generate Elm types from your Servant API
        #servant-swagger     #: Generate WebAPI description of your Servant API
        #scotty              #: A web microframework
        websockets           #: WebSocket-capable servers
        wuss                 #: WebSocket client library
        engine-io            #: An implementation of Engine.IO
        socket-io            #: A Socket.IO server built on top of engine-io
        yesod                #: A web framework
        warp                 #: A high-performance web server
        irc-conduit          #: IRC library
        lambdabot-core       #: LambdaBot core

        ### Databases
        persistent            #: Type-safe, multi-backend data serialization
        persistent-postgresql #: PostgreSQL backend for persistent
        persistent-sqlite     #: SQLite backend for persistent
        #esqueleto            #: A type-safe EDSL for SQL queries
        postgresql-simple     #: Simple Haskell interface to PostgreSQL
        acid-state            #: In-memory database with strong ACID guarantees
        vcache                #: Purports to be a better version of acid-state
        #sqlite               #: Bindings to SQLite3
        lmdb                  #: Bindings to LMDB
        lmdb-simple           #: Simple bindings to LMDB
        leveldb-haskell       #: Bindings to LevelDB

        ### Miscellaneous
        #hjsmin #: Javascript minification
        hamlet  #: HTML templating

        ## ---------------------------- Mathematics ----------------------------

        ### Linear algebra
        hmatrix       #: Linear algebra based on BLAS and LAPACK
        hmatrix-gsl   #: Linear algebra based on GSL
        linear        #: Low-dimensional pure Haskell linear algebra
        vector-space  #: Vector spaces and affine spaces
        boundingboxes #: Bounding boxes
        eigen         #: Sparse and dense linear algebra

        ### Miscellaneous
        ad                 #: Automatic differentiation
        cryptohash         #: Cryptographic hash functions
        cryptohash-conduit #: Conduit adapters for cryptohash
        blake2             #: Bindings to Blake2 hash algorithm
        dimensional        #: Numbers with physical dimensions
        #~dimensional-tf   #: Same as dimensional, but based on type families
        intervals          #: Interval arithmetic
        sbv                #: SMT based verification

        ## ----------------------------- Graphics ------------------------------

        ### GUI
        threepenny-gui #: FRP GUI using locally-served HTML
        #libnotify     #: Bindings to the libnotify API

        ### Chart
        Chart       #: Generate 2D charts and plots
        Chart-gtk   #: GTK backend for Chart
        Chart-cairo #: Cairo backend for Chart

        ### Diagrams
        diagrams
        diagrams-svg
        diagrams-cairo
        diagrams-gtk
        #~diagrams-graphviz
        diagrams-rasterific
        #rasterific-svg

        ### Functional Reactive Programming
        #~varying              #: FRP framework
        #~reflex               #: FRP framework
        reactive-banana        #: FRP framework
        #~reactive-banana-sdl2 #: SDL 2 for reactive-banana
        #frpnow                #: FRP framework
        #frpnow-gtk            #: GTK for frpnow

        ### Bindings
        cairo        #: Cairo bindings
        gtk          #: GTK 3 bindings
        gtk3         #: GTK 3 bindings
        sdl2         #: SDL 2 bindings
        #~sdl2-cairo #: SDL 2 + Cairo helpers
      ];
    };

    idrisPkgs = self.buildEnv {
      name = "idrisPkgs";
      paths = [
        (with { ip = self.idrisPackages; }; ip.with-packages [
          ip.base
          ip.prelude
          ip.effects
          ip.contrib
          ip.pruviloj
          # ip.derive
          ip.wl-pprint
        ])
      ];
    };

    javaPkgs = {
      inherit (self)
        # idea.idea-community
        gradle
        #groovy
        maven
        nailgunClient
        oraclejdk9
        pmd
        sbt;
      inherit (self.idea)
        idea-community;
    };

    mediaPkgs = {
      inherit (self)
        ffmpeg-full
        gimp
        #gtick
        imagemagick
        lilypond
        mid2key
        moc
        mplayer
        mpv
        #obs-studio
        quodlibet
        rtmpdump
        timidity
        vlc
        youtube-dl
        mocp-xmobar
        zscreen;
    };

    miscPkgs = {
      inherit (self)
        # ihaskell-taktoa
        # kframework
        # matlab
        atk
        jmtpfs
        libmtp;
    };

    nixPkgs = {
      inherit (self)
        nix
        nix-prefetch-scripts
        nix-repl
        nixbang
        nox
        patchelf
        nixpkgs-lint
        nixpkgs-manual;
    };

    nodePkgs = {
      inherit (self) nodejs;
      inherit (self.nodePackages) bower;
    };

    ocamlPkgs = self.ocamlEnv {
      name = "ocamlPkgs";
      paths = with self.ocamlPackages_latest; [
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

    perlPkgs = {
      inherit (self)
        pcre
        rakudo;

      inherit (self.perlPackages)
        GetoptDeclare
        TextDiff
        XMLLibXML
        XMLSAX
        libxml_perl;
    };

    pythonPkgs = self.pythonEnv {
      name = "pythonPkgs";
      paths = ps: [
        ps.python
        ps.fonttools
        ps.ipython
        ps.pygments
        ps.ptpython
        ps.jsonpatch
        ps.pep8
        ps.flake8
        ps.autopep8
        self.mypy
      ];
    };

    rustPkgs = {
      inherit (self)
        rustup
        rustfmt
        rustracer
        rustracerd;
    };

    smlPkgs = {
      inherit (self)
        mlton
        polyml
        smlnj
        smackage;
    };

    texPkgs = self.buildEnv {
      name = "texPkgs";
      paths = [
        (self.texlive.combine {
          inherit (self.texlive) scheme-full;
          ## FIXME: figure out why (pkg.tlType == "doc") causes a stack overflow
          #pkgFilter = pkg: pkg.tlType == "run" || pkg.tlType == "bin" || pkg.tlType == "doc";
        })
        self.ghostscriptX
        self.lmodern
        self.texinfoInteractive
        self.languagetool
      ];
      ignoreCollisions = true;
    };

    vcsPkgs = {
      inherit (self)
        bazaar
        cvs
        cvsps
        cvs2svn
        cvs_fast_export
        git-lfs
        gitFull
        git-credential-gnome-keyring
        git-credential-libsecret
        mercurial
        subversion;
    };

    # This package set should be installed with
    #     `nix-env -iA unstable.unstablePkgs`
    # (assuming that you have a nixpkgs unstable channel called "unstable")
    unstablePkgs = {
      inherit (self)
        ;
    };

    userPkgs = {
      inherit (self)
        cliPkgs
        devPkgs
        emacsPkgs
        fontPkgs
        gamePkgs
        goPkgs
        guiPkgs
        #guilePkgs
        haskellPkgs
        javaPkgs
        idrisPkgs
        mediaPkgs
        miscPkgs
        nixPkgs
        nodePkgs
        ocamlPkgs
        perlPkgs
        pythonPkgs
        smlPkgs
        texPkgs
        vcsPkgs;
    };
  };
}
