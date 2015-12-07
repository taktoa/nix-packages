#{ stdenv, fetchurl, unzip }:
with import <nixpkgs> {};

# http://sourceforge.net/projects/gmat/files/GMAT/GMAT-R2014a/GMAT-datafiles-R2014a-2.zip/download
# http://sourceforge.net/projects/gmat/files/GMAT/GMAT-R2014a/GMAT-src-R2014a-2.zip/download
let gmat_wx = wxGTK29;

#wxGTK.override {
#                withMesa = true;
#                mesa = mesa;
#              };
in
stdenv.mkDerivation rec {
  name = "gmat-20142";
  buildInputs = [ unzip gtk glib libdevil gmat_wx cmake wget coreutils ncurses gfortran gcc ];

  src = fetchurl {
    url = mirror://sourceforge/gmat/GMAT/GMAT-R2014a/GMAT-src-R2014a-2.zip;
    sha256 = "18ggqa5kshfqsjn09kldf6gnr1fb10yzbgvs8mylp1qd7iyvwxw8";
  };

  dataFiles = fetchurl {
    url = mirror://sourceforge/gmat/GMAT/GMAT-R2014a/GMAT-datafiles-R2014a-2.zip;
    sha256 = "0jnhj95y1k166zs3fm0snfqdzaww02jpdhx4v810jyb3iwggb491";
  };

  cspice32 = fetchurl {
    url = ftp://naif.jpl.nasa.gov/pub/naif/toolkit/C/PC_Linux_GCC_32bit/packages/cspice.tar.Z;
    sha256 = "1knpqy6rg289ncdhqkfjj77zgq7mnchv4iw7nbmirn9xzbq16gbr";
  };

  cspice64 = fetchurl {
    url = ftp://naif.jpl.nasa.gov/pub/naif/toolkit/C/PC_Linux_GCC_64bit/packages/cspice.tar.Z;
    sha256 = "0f02ga5d7akn9f6137rrhwcparn7b76dklin2wza41w4fcl4p2bj";
  };

  sofa = fetchurl {
    url = http://www.iausofa.org/2012_0301_C/sofa_c_a.zip;
    sha256 = "1jp9nxb0rpzcwxpxmj6sxna5vi8sfz50nikbmrn0kvy8dk1qic3c";
  };

  f2c = fetchurl {
    url = http://netlib.org/f2c/libf2c.zip;
    sha256 = "0rb75m46wzpvjjh1mv7xb2k8560vszi204kbsc6a13s2ig2jkzsx";
  };

  tsplot = fetchsvn {
    url = svn://svn.code.sf.net/p/tsplot/code/trunk;
    sha256 = "03pc2jy1f6jkx75b76n9v2ji7fb5140a0ysyvw8iq4xwc4zg52gc";
  };

  pcre = fetchsvn {
    url = svn://vcs.exim.org/pcre/code/tags/pcre-8.31;
    sha256 = "0fvph3rycc3xccsd3ggiflh8swf7p2pmhkydddg7s3zaa6ms9jaj";
  };

  cmakeFlags = "-D64_BIT=true";
  
  patchPhase = ''
      GMAT=$(pwd)
      cd depends
      mkdir wxWidgets
      cp -R ${gmat_wx} wxWidgets/wxWidgets-2.8.12
      mkdir cspice
      cd cspice
      cp ${cspice32} ./cspice.tar.Z
      gunzip cspice.tar.Z
      tar xf cspice.tar
      mv cspice cspice32
      rm cspice.tar
      cp ${cspice64} ./cspice.tar.Z
      gunzip cspice.tar.Z
      tar xf cspice.tar
      mv cspice cspice64
      rm cspice.tar
      cd ..
      unzip -q ${sofa}
      mkdir -p f2c/src
      cd f2c/src
      unzip -q ${f2c}
      cd ../..
      cp -R ${tsplot} tsPlot
      bash configure.sh -p $GMAT || true
      cd ../src
      sed -i "s:^.*view/Editor.cpp.*$::g" gui/CMakeLists.txt
      cp -R ../build/linux64 build
  '';

  enableParallelBuilding = true;

  buildPhase = ''
      make -j 8
      exit -1
  '';

#  dontUseCmakeConfigure = true;
  
#  dontBuild = true;  
  
  meta = {
    description = "General mission analysis tool";
    homepage = http://gmat.gsfc.nasa.gov/;
    platforms = stdenv.lib.platforms.all;
  };
}
