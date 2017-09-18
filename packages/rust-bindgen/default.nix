{ stdenv, fetchFromGitHub, rustPlatform, clang }:

rustPlatform.buildRustPackage rec {
  name = "rust-bindgen-${version}";
  version = "0.15.0";

  depsSha256 = "03jap7myf85xgx9270sws8x57nl04a1wx8szrk9qx24s9vnnjcnh";

  src = fetchFromGitHub {
    owner = "taktoa";
    repo = "rust-bindgen";
    rev = "9ce12313f98005dade84252bb327e960dac30003";
    sha256 = "1nqj6x4dfydlf8bc50csdcgna3gw5jr0c6fy9vk6rq1l9xlwz37q";
  };

  buildInputs = [ clang ];

  meta = with stdenv.lib; {
    description = "A binding generator for Rust.";
    homepage = https://github.com/crabtw/rust-bindgen;
    license = stdenv.lib.licenses.bsd3;
    maintainers = [ maintainers.taktoa ];
  };
}
