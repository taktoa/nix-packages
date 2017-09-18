# Options
{ mkDerivation
, src
, majorVersion
, minorVersion
, name                     ? "guile-${majorVersion}.${minorVersion}"
, patches                  ? []
, buildInputs              ? []
, nativeBuildInputs        ? []
, propagatedBuildInputs    ? []
, configureFlags           ? []
, preUnpack                ? ""
, postUnpack               ? ""
, prePatch                 ? ""
, postPatch                ? ""
, preConfigure             ? ""
, postConfigure            ? ""
, preBuild                 ? ""
, postBuild                ? ""
, preInstall               ? ""
, postInstall              ? ""
, crossAttrs               ? {}
, selfNativeBuildInput     ? true
, enableParallelBuilding   ? false
, doCheck                  ? true
, otherAttrs               ? {}
}:

{ libtool, pkgconfig, gawk, makeWrapper         # Build dependencies
, readline, gmp, boehmgc, libunistring, libffi  # Library dependencies
}:

let defaultBuildInputs           = [];
    defaultNativeBuildInputs     = [ makeWrapper gawk ];
    defaultPropagatedBuildInputs = [];
in mkDerivation ({
  inherit src name patches;
  inherit selfNativeBuildInput
          enableParallelBuilding;

  buildInputs           = defaultBuildInputs           ++ buildInputs;
  nativeBuildInputs     = defaultNativeBuildInputs     ++ nativeBuildInputs;
  propagatedBuildInputs = defaultPropagatedBuildInputs ++ propagatedBuildInputs;

  postInstall = ''
    wrapProgram $out/bin/guile-snarf --prefix PATH : "${gawk}/bin"
    ${postInstall}
  '';

  setupHook = builtins.toPath "${./.}/${majorVersion}/setup-hook.sh";

  meta = with stdenv.lib; {
    description = "An embeddable Scheme implementation";
    homepage    = http://www.gnu.org/software/guile/;
    license     = licenses.lgpl3Plus;
    maintainers = with maintainers; [ ludo lovek323 taktoa ];
    platforms   = platforms.all;

    longDescription = ''
        GNU Guile is an implementation of the Scheme programming language.
        In addition to implementing R5RS Scheme and a large subset of R6RS,
        Guile includes many SRFIs, a proper module system, full access to POSIX
        system calls, networking support, multithreading, dynamic linking, and a
        foreign function interface.
    '';
  };
} // otherAttrs)
