{ stdenv, fetchFromGitHub, cmake, pkgconfig,
  opencl-clhpp, ocl-icd, fftw, fftwFloat, blas, liblapack, boost, mesa, freeimage, python
}:

with {
  clfftSource = fetchFromGitHub {
    owner  = "arrayfire";
    repo   = "clFFT";
    rev    = "16925fb93338b3cac66490b5cf764953d6a5dac7";
    sha256 = "0y35nrdz7w4n1l17myhkni3hwm37z775xn6f76xmf1ph7dbkslsc";
    fetchSubmodules = true;
  };

  clblasSource = fetchFromGitHub {
    owner  = "arrayfire";
    repo   = "clBLAS";
    rev    = "1f3de2ae5582972f665c685b18ef0df43c1792bb";
    sha256 = "154mz52r5hm0jrp5fqrirzzbki14c1jkacj75flplnykbl36ibjs";
    fetchSubmodules = true;
  };
};

stdenv.mkDerivation {
  name = "arrayfire-3.6.1";

  src = fetchFromGitHub {
    owner  = "arrayfire";
    repo   = "arrayfire";
    rev    = "b443e146b6747c73caaaae4d65dd6b3a32936745";
    sha256 = "1f6zq0n0675wgs5dbiasz6dv9qrpg20jdrb1fk14hyyz0mbg8yhr";
    fetchSubmodules = true;
  };

  cmakeFlags = [ ];
  
  patches = [ ./no-download.patch ];
  
  postPatch = ''
    mkdir -p ./build/third_party/clFFT/src
    cp -Rv --no-preserve=mode,ownership ${clfftSource}/ ./build/third_party/clFFT/src/clFFT-ext/
    mkdir -p ./build/third_party/clBLAS/src
    cp -Rv --no-preserve=mode,ownership ${clblasSource}/ ./build/third_party/clBLAS/src/clBLAS-ext/
  '';

  buildInputs = [
    cmake pkgconfig
    opencl-clhpp ocl-icd fftw fftwFloat blas liblapack mesa freeimage
    boost.out boost.dev python
  ];
}
