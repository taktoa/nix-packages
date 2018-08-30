{ stdenv, fetchFromGitHub, cmake, pkgconfig, poppler_0_61, xlibs, pcre, python
, glib, fontforge-gtk, libspiro, cairo, pango, openjdk8
}:

stdenv.mkDerivation rec {
  name = "pdf2htmlEX-2017-01-16";

  src = fetchFromGitHub {
    repo   = "pdf2htmlEX";
    owner  = "coolwanglu";
    rev    = "f12fc155158fd3b217da748f7ed7595fa6f6935c";
    sha256 = "0g0921z3saqf0r57h4jgyc5ggnf2wrw54czjm080m76avdrmsvxf";
    # rev    = "a296d3babc529ca2165fe267dd29ec67a2af8aae";
    # sha256 = "1nh0ab8f11fsyi4ldknlkmdzcfvm1dfh8b9bmprjgq6q0vjj7f78";
  };

  patches = [ ./add-glib-cmake.patch ];

  cmakeFlags = [ "-DENABLE_SVG=ON" ];

  enableParallelBuilding = true;

  buildInputs = [
    cmake pkgconfig
    (poppler_0_61.override { withData = true; })
    xlibs.libpthreadstubs
    xlibs.libXdmcp
    pcre python glib
    fontforge-gtk
    libspiro
    cairo pango
    openjdk8
  ];
}
