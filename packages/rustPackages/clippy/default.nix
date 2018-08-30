{ stdenv, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  name = "clippy-${version}";
  version = "0.0.166";

  src = fetchFromGitHub {
    owner  = "rust-lang-nursery";
    repo   = "rust-clippy";
    rev    = "v${version}";
    sha256 = "0d83lydcyws1bs935qjvzfh595m21q3nl2rlbc4jhwgdj1x3m44y";
  };

  patches = [ ./0001.patch ];
  
  depsSha256 = "1nnb2lpzjf6hv1a7cw3cbkc22fb54rsp6h87wzmqi4hsy1csff7a";

  meta = with stdenv.lib; {
    description = "A linter for common Rust mistakes";
    homepage    = "https://github.com/rust-lang-nursery/rust-clippy";
    license     = [ licenses.mpl20 ];
    maintainers = [ maintainers.taktoa ];
    platforms   = platforms.all;
  };
}
