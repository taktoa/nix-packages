#{ stdenv }:

with import <nixpkgs> {};

#stdenv.mkDerivation rec {
python3Packages.buildPythonPackage rec {
  name = "bobbuilder-${version}";
  version = "0.0.1";

  src = /home/remy/Documents/NotWork/Projects/Python/bobbuilder;

  buildInputs = [];

  meta = with stdenv.lib; {
    inherit version;
    # FIXME: homepage = "";
    # FIXME: downloadPage = "";
    # FIXME: description = "";
    # FIXME: longDescription = "";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ taktoa ];
    platforms = platforms.all;
  };
}
