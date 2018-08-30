{ stdenv
, autoconf
, automake
, clang
, ctags
, desktop_file_utils
, enchant
, fetchgit
, fetchurl
, flex
, fuse
, gnome3
, gobjectIntrospection
, intltool
, itstool
, json_glib
, libgit2
, libgsystem
, librsvg
, libssh2
, libtool
, libxml2
, llvm
, mm-common
, ninja
, ostree
, pkgconfig
, polkit
, python3Packages
, sysprof
, wrapGAppsHook
, yacc
}:

with {
  gspell = gnome3.gspell.overrideAttrs (old: {
    name = "gspell-1.6.0";
    src = fetchurl {
      url = "mirror://gnome/sources/gspell/1.6/gspell-1.6.0.tar.xz";
      sha256 = "0bc73zlm6x93cvxrqwqrx8b3x2na5m3lxl7fppjcsifs9fmkvmxm";
    };
  });
};

stdenv.mkDerivation rec {
  name = "gnome-builder-${version}";
  version = "3.25.2-a11c9dfa";

  src = fetchgit {
    url    = "https://git.gnome.org/browse/gnome-builder";
    rev    = "a11c9dfad6d39d5686ad8cb3885f898696e218d6";
    sha256 = "0p08zr798fh7lycfybzvyx63m55z13afs1adrsmn7vhrbn0az934";
  };

  buildInputs = [
    libxml2 desktop_file_utils llvm clang libgit2 gobjectIntrospection librsvg
    json_glib mm-common enchant libtool fuse libgsystem ostree polkit ctags
    libssh2 python3Packages.meson sysprof gspell
  ] ++ (with gnome3; [
     glib glib.dev gtk gtksourceview libpeas devhelp libgit2-glib
     webkitgtk gsettings_desktop_schemas dconf
  ]);

  propagatedBuildInputs = with python3Packages; [
    python pygobject3 lxml jedi docutils six chardet urllib3 sphinx_rtd_theme
    pbr funcsigs mock imagesize markupsafe jinja2 pygments snowballstemmer
    requests2 alabaster pytz Babel sphinx
  ];

  nativeBuildInputs = [
    pkgconfig python3Packages.meson ninja autoconf automake wrapGAppsHook
    yacc flex intltool itstool
  ];

  propagatedUserEnvPkgs = [ ctags ];

  enableParallelBuilding = true;

  wrapPrefixVariables = "PYTHONPATH";

  preConfigure = ''
    ./autogen.sh
    PYTHONPATH="$PYTHONPATH:$out/${python3Packages.python.sitePackages}"
  '';
}
