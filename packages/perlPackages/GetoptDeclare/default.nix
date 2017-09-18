{ stdenv, fetchurl, buildPerlPackage, perlPackages }:

buildPerlPackage rec {
  name = "Getopt-Declare-1.14";
  src = fetchurl {
    url = "mirror://cpan/authors/id/F/FA/FANGLY/${name}.tar.gz";
    sha256 = "0sskf4n2sb0wnaz6457bp9qvnhmw53k2inpklnfn6ibs2mmblcqk";
  };
  propagatedBuildInputs = [ perlPackages.TextBalanced ];
  meta = {
    homepage = http://cpansearch.perl.org/src/FANGLY/Getopt-Declare-1.14/README;
    description = "Declaratively Expressed Command-Line Arguments via Regular Expressions";
    license = with stdenv.lib.licenses; [ artistic1 ];
  };
}
