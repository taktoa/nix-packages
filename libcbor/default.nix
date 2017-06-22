{ clangStdenv, fetchFromGitHub, cmake, pkgconfig, cmocka }:

clangStdenv.mkDerivation {
  name = "libcbor-0.5.0";

  src = fetchFromGitHub {
    owner = "PJK";
    repo = "libcbor";
    rev = "076b491e70cdf6557299727be69f5c44eaa4d7c6";
    sha256 = "0qdl4l8zq42h4cn4ljwk464s9sklk3ciyjr2238iaznp935dbfzs";
  };

  buildInputs = [ cmake pkgconfig cmocka ];

  # For some reason we have linker errors
  meta = { broken = true; };
}
