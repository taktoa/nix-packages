{ stdenv, fetchFromGitHub, goPackages }:

goPackages.buildGoPackage rec {
  name = "color-0.1";

  goPackagePath = "github.com/fatih/color";

  src = fetchFromGitHub {
    owner = "fatih";
    repo = "color";
    rev = "1b35f289c47d5c73c398cea8e006b7bcb6234a96";
    sha256 = "1k2jfin2prmy8w8if7nhn9y9ji2k6pgsg6pg462idar0s0p2xhmc";
  };

  buildInputs = with goPackages; [ ansicolor ];

  meta = with stdenv.lib; {
    homepage = https://godoc.org/github.com/fatih/color;
    license = licenses.mit;
    description = "ANSI terminal color package for Go";
    maintainers = with maintainers; [ taktoa ];
  };
}
