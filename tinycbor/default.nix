{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "tinycbor-20160711";

  src = fetchFromGitHub {
    owner = "01org";
    repo = "tinycbor";
    rev = "e73e4d87bee54472250ec6d6390acdf7f5b40d9e";
    sha256 = "1m3zl7gdcpb6xjsr789kkf6g3fc1i9fg6xjw1jllssykmwjy57hy";
  };

  installPhase = ''
      make install "prefix=$out"
  '';
}
