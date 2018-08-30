{ pkgs, # FIXME: remove
  stdenv,
  fetchFromGitHub,
  python35Packages,
  agdaSrc     ? null,
  agdaVersion ? null
}:

with rec {
  ifThenElse = { bool, thenValue, elseValue }: (
    if bool then thenValue else elseValue);

  defaultSrcArgs = {
    owner  = "agda";
    repo   = "agda";
    rev    = "3b39f0f865273553ab0d59d3314b13c3acad3d0d";
    sha256 = "1b7hqscrh9n3z7hkrznmaa7hz0aqzf3sk5cj19fybnw9vd7wd6rc";
  };

  src = (
    if agdaSrc == null
    then fetchFromGitHub defaultSrcArgs
    else agdaSrc);

  version = ifThenElse {
    bool = isNull agdaSrc && isNull agdaVersion;
    thenValue = src.rev;
    elseValue = ifThenElse {
      bool = isNull version;
      thenValue = src.rev or throw "you need to specify a version";
      elseValue = version;
    };
  };
};

assert builtins.isString version;

stdenv.mkDerivation rec {
  name = "agda-user-manual-" + version;
  inherit src;

  buildInputs = [
    python35Packages.sphinx
    python35Packages.sphinx_rtd_theme
  ];

  configurePhase = ''
    cd doc/user-manual
  '';

  # Note that `singlehtml` is not really a single HTML file (since it has other
  # resources like images and CSS) and it lacks features compared to the `html`
  # target, so we don't build it.

  # FIXME: remove
  buildPhase = ''
    ${buildEPUBPhase}
  '';

  # buildPhase = ''
  #   ${buildEPUBPhase}
  #   ${buildHTMLPhase}
  #   ${buildJSONPhase}
  #   ${buildPDFPhase}
  #   ${buildEPUBPhase}
  #   ${buildManPhase}
  #   ${buildTexinfoPhase}
  #   ${buildInfoPhase}
  # '';

  # checkPhase = ''
  #   make doctest
  # '';

  # FIXME: remove
  installPhase = ''
    AGDA_DOC="$out/share/doc/agda"
    AGDA_USER_MANUAL="$AGDA_DOC/user-manual"

    mkdir -pv "$AGDA_USER_MANUAL"

    ${installEPUBPhase}
  '';

  # installPhase = ''
  #   AGDA_DOC="$out/share/doc/agda"
  #   AGDA_USER_MANUAL="$AGDA_DOC/user-manual"
  #
  #   mkdir -pv "$AGDA_USER_MANUAL"
  #
  #   ${installEPUBPhase}
  #   ${installHTMLPhase}
  #   ${installJSONPhase}
  #   ${installPDFPhase}
  #   ${installEPUBPhase}
  #   ${installManPhase}
  #   ${installTexinfoPhase}
  #   ${installInfoPhase}
  # '';

  # ----------------------------------------------------------------------------

  # Build the HTML documentation
  buildHTMLPhase = ''
    make html
    # FIXME: check build code
  '';

  # Install the HTML documentation
  installHTMLPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/html"
    # FIXME: add install code
  '';

  # Build the CHM documentation
  buildCHMPhase = ''
    make htmlhelp
    # FIXME: check build code
  '';

  # Install the CHM documentation
  installCHMPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/chm"
    # FIXME: add install code
  '';

  # Build the JSON documentation
  buildJSONPhase = ''
    make json
    # FIXME: check build code
  '';

  # Install the JSON documentation
  installJSONPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/json"
    # FIXME: add install code
  '';

  # Build the PDF documentation
  buildPDFPhase = ''
    make latexpdf
    # FIXME: check build code
  '';

  # Install the PDF documentation
  installPDFPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/pdf"
    # FIXME: add install code
  '';

  # Build the ePUB documentation
  buildEPUBPhase = ''
    make epub || true

    find ./_build/epub/ -print0 \
        | parallel -0 -m -j "$NIX_BUILD_CORES" 'touch --date="@347173201" {}'

    make epub

    mkdir epub-temp
    cd epub-temp
    unzip ../_build/epub/Agda.epub
    find ./_build/epub/ -print0 \
        | parallel -0 -m -j "$NIX_BUILD_CORES" 'touch --date="@347173201" {}'
    zip -r ../Agda-fixed.epub .
    cd ..
    rm -v _build/epub/Agda.epub
    mv -v Agda-fixed.epub _build/epub/Agda.epub
    rm -rf epub-temp
  '';

  # Install the ePUB documentation
  installEPUBPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/epub"
    cp -v "./_build/epub/Agda.epub" "$AGDA_USER_MANUAL/epub/Agda.epub"
  '';

  # Build the Man documentation
  buildManPhase = ''
    make man
    # FIXME: check build code
  '';

  # Install the Man documentation
  installManPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/man"
    # FIXME: add install code
  '';

  # Build the GNU Texinfo documentation
  buildTexinfoPhase = ''
    make texinfo
    # FIXME: check build code
  '';

  # Install the GNU Texinfo documentation
  installTexinfoPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/texinfo"
    # FIXME: add install code
  '';

  # Build the GNU Info documentation
  buildInfoPhase = ''
    make info
    # FIXME: check build code
  '';

  # Install the GNU Info documentation
  installInfoPhase = ''
    mkdir -pv "$AGDA_USER_MANUAL/info"
    # FIXME: add install code
  '';
}
