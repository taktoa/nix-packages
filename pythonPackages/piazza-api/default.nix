{ stdenv, fetchurl, python35Packages }:

python35Packages.buildPythonPackage rec {
  name = "piazza-api-0.5.1";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/p/piazza-api/${name}.tar.gz";
    sha256 = "1vr4hnkr0gcvvpaycd8q3vcx029b2f5yv8swhdr8kwspaqb0dvfa";
  };

  buildInputs = with python35Packages; [
    blockdiag
    docutils
    reportlab
    pep8
    nose
    pip
    pillow
  ];
  
  meta = with stdenv.lib; {
    description = "An unofficial client for Piazza's internal API";
    homepage    = "https://github.com/hfaran/piazza-api";
    license     = licenses.mit;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}
