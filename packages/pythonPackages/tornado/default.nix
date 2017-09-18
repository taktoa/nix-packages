{ stdenv, fetchurl, buildPythonPackage, pythonPackages }:

buildPythonPackage rec {
  name = "tornado-4.1";

  propagatedBuildInputs = with pythonPackages; [
    backports_ssl_match_hostname_3_4_0_2
  ];

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/t/tornado/tornado-4.1.tar.gz";
    md5 = "a06ea343375f2247344257ef691641f9";
  };

  doCheck = false;
}
