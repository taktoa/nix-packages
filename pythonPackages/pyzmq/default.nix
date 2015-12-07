{ stdenv, fetchurl, buildPythonPackage, zeromq3 }:

buildPythonPackage rec {
  name = "pyzmq-14.5.0";

  propagatedBuildInputs = [ zeromq3 ];

  src = fetchurl {
    url = "http://pypi.python.org/packages/source/p/pyzmq/pyzmq-14.5.0.tar.gz";
    md5 = "8d3351a8ca2ca2a272a3f96bcb963e41";
  };

  doCheck = false;
}
