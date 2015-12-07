{ stdenv, fetchFromGitHub, goPackages }:

goPackages.buildGoPackage rec {
  name = "pup-0.3.9";

  goPackagePath = "github.com/EricChiang/pup";

  src = fetchFromGitHub {
    owner = "EricChiang";
    repo = "pup";
    rev = "9693b292601dd24dab3c04bc628f9ae3fa72f831";
    sha256 = "04j3fy1vk6xap8ad7k3c05h9b5mg2n1vy9vcyg9rs02cb13d3sy0";
  };

  buildInputs = with goPackages; [ color go-colorable go-isatty net text ];

  preConfigure = ''
    rm -rf Godeps
  '';
  
  meta = with stdenv.lib; {
    homepage = https://github.com/ericchiang/pup;
    license = licenses.mit;
    description = "Parsing HTML at the command line";
    maintainers = with maintainers; [ taktoa ];
  };
}
