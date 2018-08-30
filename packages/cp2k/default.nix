{ stdenv, fetchFromGitHub, pkgs }:

# FIXME: switch to ssmp build
# FIXME: investigate arch/Linux-x86-64-gfortran_opencl_nvidia.sopt
# FIXME: https://linlin.bitbucket.io/pexsi/
# FIXME: http://elpa.mpcdf.mpg.de/software
# FIXME: http://www.tddft.org/programs/libxc/
# FIXME: https://sourceforge.net/projects/libint

stdenv.mkDerivation rec {
  name = "cp2k-2018-07-25";

  src = fetchFromGitHub {
    owner  = "cp2k";
    repo   = "cp2k";
    rev    = "e505045e20412f9ee2466267f02cafead6c5c818";
    sha256 = "11dzrq3l0rb4nlh6xjkn3n9ylq51a106ar4hzqin1d2qj1f2px0q";
  };

  buildInputs = [
    pkgs.gfortran
    pkgs.python27
    pkgs.blas
    pkgs.liblapack
  ];

  hardeningDisable = ["format"];

  #F77 = "gfortran";

  #nixGLIBC = stdenv.cc.libc.static;
  #nixXSMM = pkgs.libxsmm;
  #nixBLAS = pkgs.blas;
  #nixLAPACK = pkgs.liblapack;

  patches = [ ./fix-makefile.patch ];

  enableParallelBuilding = true;

  buildConfigFile = pkgs.writeTextFile {
    name = "cp2k-config";
    text = ''
      CC          = gcc
      CPP         =
      FC          = gfortran
      LD          = gfortran
      AR          = ar -r
      DFLAGS      = -D__F2008 -D__FFTW3
      CPPFLAGS    =
      FCFLAGS     = $(DFLAGS) -O2 -ffast-math -ffree-form \
                    -ffree-line-length-none -ftree-vectorize -funroll-loops \
                    -fopenmp -mtune=native -std=f2008 \
                    -I${pkgs.fftw.dev}/include
      LDFLAGS     = $(FCFLAGS) -L${stdenv.cc.libc.static}/lib
      LIBS        = ${pkgs.liblapack}/lib/liblapack.a \
                    ${pkgs.blas}/lib/libblas.a \
                    -L${pkgs.fftw.out}/lib \
                    -lfftw3 -lfftw3_threads \
                    -ldl -lpthread
    '';
  };

  preConfigure = ''
    cd cp2k
    cat ${buildConfigFile} > arch/Linux-x86-64-gfortran.ssmp
    cd makefiles
  '';

  buildPhase = ''
    runHook preBuild
    mkdir -pv "$out/lib" "$out/lib64"
    make -j "$NIX_BUILD_CORES" ARCH="Linux-x86-64-gfortran" VERSION="ssmp"
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    rmdir -v "$out/lib64"
    mkdir -pv "$out/bin" "$out/lib"
    cp -v ../exe/Linux-x86-64-gfortran/* "$out/bin"
    cp -v ../lib/Linux-x86-64-gfortran/ssmp/*.a "$out/lib"
    runHook postInstall
  '';

  dontStrip = true;
}
