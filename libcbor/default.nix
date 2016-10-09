{ stdenv, fetchFromGitHub, cmake, pkgconfig, cmocka }:

stdenv.mkDerivation {
  name = "libcbor-0.4.0";

  src = fetchFromGitHub {
    owner = "PJK";
    repo = "libcbor";
    rev = "f925df97d55faac89f756aa21d996eb86bbb0994";
    sha256 = "0as04pszi25bhs82v67b0q0k5ya3cr83xwqj3rmskrk1g37y4ah2";
  };

  buildInputs = [ cmake pkgconfig cmocka ];

  # For some reason we have linker errors
  meta = { broken = true; };
}
