{ pkgs, pythonPackages }:

with builtins;

with pythonPackages;

with { inherit (pkgs) lib; };

let removeNulls = lib.filterAttrs (n: v: v != null);
    srcHelper = url: sha256: curlOpts: name:
      assert url != null;
      assert sha256 != null;
      pkgs.fetchurl (removeNulls { inherit url sha256 name curlOpts; });

    mkPython =
      { packageName            # < A package name.
      , version                # < A package version.
      , srcURL          ? null # < A url to download from.
      , srcSHA          ? null # < A SHA256 checksum for the download.
      , srcName         ? null # < A name for the downloaded file.
      , srcCurlOpts     ? null # < A curl options for the download.
      , src             ? null # < A source to use (overrides other options).
      , buildDeps       ? []   # < Build dependencies to add.
      , propDeps        ? []   # < Propagated dependencies to add.
      , nativeBuildDeps ? []   # < Native build dependencies to add.
      , nativePropDeps  ? []   # < Native propagated dependencies to add.
      # The following attributes are equivalent to those in meta:
      , homepage        ? null # < A homepage of the project.
      , description     ? null # < A description.
      , longDescription ? null # < A longer description.
      , maintainers     ? null # < A list of maintainers.
      , license         ? null # < A license.
      , platforms       ? null # < A list of supported platforms.
      , ... # Any other options will be passed to buildPythonPackage directly
      } @ args:

      buildPythonPackage (removeNulls ({
        name = "${packageName}-${version}";

        src = if isNull src
              then srcHelper srcURL srcSHA srcCurlOpts srcName
              else src;

        buildInputs           = buildDeps;
        propagatedBuildInputs = propDeps;

        nativeBuildInputs           = nativeBuildDeps;
        propagatedNativeBuildInputs = nativePropDeps;

        meta = removeNulls {
          inherit homepage description longDescription
                  license maintainers platforms;
        };
      } // args));
   isNonEmptyString = x: stringLength x > 0;
   strHead = x: (assert isNonEmptyString x; substring 0 1 x);
   pypiURL = name: version:
     assert isNonEmptyString name;
     assert isNonEmptyString version;
     "mirror://pypi/${strHead name}/${name}/${name}-${version}.tar.gz";

in pythonPackages // (rec {
  # bobbuilder = pkgs.callPackage ./bobbuilder {};

  gst-gtklaunch = mkPython (rec {
    packageName = "gst-gtklaunch";
    version = "20160115";

    src = pkgs.fetchFromGitHub {
      owner  = "UbiCastTeam";
      repo   = "gst-gtklaunch-1.0";
      rev    = "f53b1eb2a5ee089eef641d885103308411712f0e";
      sha256 = "1ik4n20splppq0zjgi3ixmab7vq9yy7m6cih08jw5bf334lnznvd";
    };

    propDeps = with pkgs; [
      gtk3
      pygobject3
      graphviz
      gobjectIntrospection
      gst_all_1.gstreamer
      gst_all_1.gst-plugins-base
      gst_all_1.gst-plugins-good
      gst_all_1.gst-plugins-ugly
      gst_all_1.gst-plugins-bad
    ];

    makeWrapperArgs = [
      "--prefix GI_TYPELIB_PATH : \"$GI_TYPELIB_PATH\""
      "--prefix GST_PLUGIN_SYSTEM_PATH_1_0 : \"$GST_PLUGIN_SYSTEM_PATH_1_0\""
      "--prefix PATH : \"${pkgs.graphviz}/bin\""
      "--prefix PATH : \"${pkgs.python27Packages.xdot}/bin\""
    ];

    homepage     = "https://github.com/UbiCastTeam/gst-gtklaunch-1.0";
    description  = "A utility for testing GStreamer pipelines and elements";
    license      = with lib.licenses; [ lgpl21.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  python-djvulibre = mkPython (rec {
    packageName  = "python-djvulibre";
    version      = "0.8";
    srcURL       = pypiURL packageName version;
    srcSHA       = "06zklmrjh8ci54pc1xqmsxyasivqzznwjj896g7fhh557wag6swx";
    propDeps     = with pkgs; [ pkgconfig cython pkgs.djvulibre ];
    homepage     = "https://jwilk.net/software/python-djvulibre";
    description  = "Python bindings for libdjvulibre";
    license      = with lib.licenses; [ gpl2.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  PyICU = mkPython (rec {
    packageName  = "PyICU";
    version      = "1.9.5";
    srcURL       = pypiURL packageName version;
    srcSHA       = "16rmxy9y0qhqqna2v49i7nzwm09as699rbyvh4raw7w602w55c3k";
    propDeps     = with pkgs; [ icu ];
    homepage     = "https://github.com/ovalhub/pyicu";
    description  = "Python bindings for the ICU library";
    license      = with lib.licenses; [ mit.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  ocrodjvu = mkPython (rec {
    packageName  = "ocrodjvu";
    version      = "0.10.1";
    srcURL       = pypiURL packageName version;
    srcSHA       = "1k6ha8x3abwdgqixlcn7a1hd6l7jmxxrc8w4bh06byfvgi61nkih";
    propDeps     = with pkgs; [
                     python-djvulibre PyICU lxml html5lib pillow nose
                     libxml2 glibcLocales
                   ];
    homepage     = "https://jwilk.net/software/ocrodjvu";
    description  = "A program that allows you to perform OCR on DjVu files";
    license      = with lib.licenses; [ gpl2.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  typed-ast = mkPython (rec {
    packageName  = "typed-ast";
    version      = "0.5.3";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0ybssbjbmx311w9jyix1ig9kkhn85n1yy0br1sa8ipp9ajgs8dcn";
    propDeps     = with pkgs; [];
    homepage     = "https://github.com/dropbox/typed_ast";
    description  = "A typed AST for Python";
    license      = with lib.licenses; [ asl20.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  mypy-lang = mkPython (rec {
    packageName  = "mypy-lang";
    version      = "0.4.1";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0xqvp88fmjbykjdcp0a2smlnmhsqz8m6x96drc34v9bkqms29vhw";
    propDeps     = with pkgs; [ typed-ast ];
    homepage     = "http://mypy-lang.org";
    description  = "Experimental static types for Python";
    license      = with lib.licenses; [ mit.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  piazza-api = mkPython (rec {
    packageName  = "piazza-api";
    version      = "0.5.2";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0w3pkxx4b8rh82qqzl9nag4r8dmc5nbngf3afjlml5dmbgjpv23z";
    propDeps     = with pkgs; [
                     blockdiag docutils reportlab
                     pep8 nose pip pillow requests
                   ];
    homepage     = "https://github.com/hfaran/piazza-api";
    description  = "An unofficial client for Piazza's internal API";
    licenses     = with lib.licenses; [ mit.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  scdl = mkPython (rec {
    packageName  = "scdl";
    version      = "1.4.1";
    srcSHA       = "005him6q85q3026xrsdkzawwl3n1fcchi481fj2daivrl9wrrpjb";
    propDeps     = with pkgs; [];
    homepage     = "https://github.com/flyingrub/scdl";
    description  = "SoundCloud music downloader.";
    license      = with lib.licenses; [ gpl2.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  ptpython = mkPython (rec {
    packageName  = "ptpython";
    version      = "0.34";
    srcURL       = pypiURL packageName version;
    srcSHA       = "1mmbiyzf0n8hm7z2a562x7w5cbl6jc0zsk6vp40q1z4cyblv1k13";
    propDeps     = with pkgs; [ jedi docopt pygments prompt_toolkit ];
    homepage     = "https://github.com/jonathanslenders/ptpython";
    description  = "A more advanced Python REPL.";
    license      = with lib.licenses; [ bsd3.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
    doCheck      = false;
  });

  xmlutils = mkPython (rec {
    packageName  = "xmlutils";
    version      = "1.3";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0z03bai6a9gfl6hy8cracb88i51ghczn8xdxsxj7ayc7kjskm2id";
    propDeps     = with pkgs; [];
    homepage     = "https://nadh.in/code/xmlutils.py";
    description  = "Tools for converting XML to JSON, CSV, and other formats.";
    license      = with lib.licenses; [ mit.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  jsonwidget = mkPython (rec {
    packageName  = "jsonwidget";
    version      = "0.1.7";
    srcURL       = pypiURL packageName version;
    srcSHA       = "1i8jm0sijlivak4rmhdan51w2mhz3h55xg7jcvlsz1zc8hz5mkw3";
    propDeps     = with pkgs; [ simpleparse urwid ];
    homepage     = "http://robla.net/jsonwidget";
    description  = "A general-purpose JSON validation and manipulation, and form-building library.";
    license      = with lib.licenses; [ lgpl21.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });

  pocketsphinx-python = mkPython (rec {
    packageName  = "pocketsphinx";
    version      = "0.1.3";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0v9l43s6s256qy4bs31akvmqkkrxdkk8mld40s3vfnn8xynml4mc";
    propDeps     = with pkgs; [ swig libpulseaudio pocketsphinx ];
    doCheck      = false;
  });

  SpeechRecognition = mkPython (rec {
    packageName  = "SpeechRecognition";
    version      = "3.4.6";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0cdci4nxyyfg2jrzhrnm3hvqcb1w8w3gym6dr9nl1rh2y4ssngir";
    propDeps     = with pkgs; [ pyaudio flac pocketsphinx-python ];
    homepage     = "https://github.com/Uberi/speech_recognition";
    description  = "Speech recognition library.";
    license      = with lib.licenses; [ bsd3.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
    doCheck      = false;
  });

  wllvm = mkPython (rec {
    packageName  = "wllvm";
    version      = "1.0.17";
    srcURL       = pypiURL packageName version;
    srcSHA       = "0yjqn63fn28pg7xz6l7zrq2f5izqw8ari51y6zkxdqwq5vrmhxy6";
    propDeps     = [];
    homepage     = "https://github.com/travitch/whole-program-llvm";
    description  = "Run LLVM on a whole program.";
    license      = with lib.licenses; [ mit.spdxId ];
    maintainers  = with lib.maintainers; [ taktoa ];
    platforms    = with lib.platforms; all;
  });
})
