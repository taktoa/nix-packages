{ stdenv, fetchFromGitHub, cmake, pkgconfig, poppler, xlibs, pcre, python
, glib, fontforge-gtk, cairo, pango, openjdk8
}:

stdenv.mkDerivation rec {
  name = "pdf2htmlEX-0.14.6";

  src = fetchFromGitHub {
    repo   = "pdf2htmlEX";
    owner  = "coolwanglu";
    rev    = "a296d3babc529ca2165fe267dd29ec67a2af8aae";
    sha256 = "1nh0ab8f11fsyi4ldknlkmdzcfvm1dfh8b9bmprjgq6q0vjj7f78";
  };

  patches = [ ./add-glib-cmake.patch ];

  cmakeFlags = [ "-DENABLE_SVG=ON" ];

  enableParallelBuilding = true;

  buildInputs = [
    cmake pkgconfig
    (poppler.override { withData = true; })
    xlibs.libpthreadstubs
    xlibs.libXdmcp
    pcre python glib
    fontforge-gtk
    cairo pango
    openjdk8
  ];
}
