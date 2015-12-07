{ stdenv, fetchurl, buildPerlPackage }:

buildPerlPackage rec {
  name = "Text-Balanced-2.03";
  src = fetchurl {
    url = "mirror://cpan/authors/id/S/SH/SHAY/${name}.tar.gz";
    sha256 = "1j4jjw6bg6ik8cn1mimw54rvg4h0qf4hm9k63y9572sny3w56xq5";
  };

  meta = {
    homepage = http://search.cpan.org/~shay/Text-Balanced-2.03/lib/Text/Balanced.pm;
    description = "Extract delimited text sequences from strings";
    license = with stdenv.lib.licenses; [ artistic1 ];
  };
}
