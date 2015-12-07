with import <nixpkgs> {};
{ stdenv, fetchurl, buildPythonPackage, pythonPackages, pyzmq, tornado
, pyqt4 ? null
, notebookSupport ? true   # ipython notebook
, qtconsoleSupport ? true  # ipython qtconsole
, pylabSupport ? true      # ipython --pylab    (backend: agg - no gui, just file)
, pylabQtSupport ? true    # ipython --pylab=qt (backend: Qt4Agg - plot to window)
}:


# ipython qtconsole works with both pyside and pyqt4. But ipython --pylab=qt
# only works with pyqt4 (at least this is true for ipython 0.13.1). So just use
# pyqt4 for both.

assert qtconsoleSupport == true -> pyqt4 != null;
assert pylabQtSupport == true -> pyqt4 != null;

buildPythonPackage rec {
  name = "ipython3-3.1.0";
  fetchName = "ipython-3.1.0";
  namePrefix = "";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/i/ipython/${fetchName}.tar.gz";
    sha256 = "092nilrkr76l1mklnslgbw1cz7z1xabp1hz5s7cb30kgy39r482k";
  };

  propagatedBuildInputs = with pythonPackages; ([
    readline
    sqlite3  # required for history support
  ] ++ stdenv.lib.optionals notebookSupport [
    tornado
    pyzmq
    jinja2
    jsonschema
  ] ++ stdenv.lib.optionals qtconsoleSupport [
    pygments
    pyzmq
    pyqt4
  ] ++ stdenv.lib.optionals pylabSupport [
    matplotlib
  ] ++ stdenv.lib.optionals pylabQtSupport [
    matplotlib
    pyqt4
  ]);

  doCheck = false;

  meta = {
    homepage = http://ipython.scipy.org/;
    description = "An interactive computing environment for Python";
    license = stdenv.lib.licenses.bsd3;
    longDescription = ''
      The goal of IPython is to create a comprehensive environment
      for interactive and exploratory computing. It consists of an
      enhanced interactive Python shell and an architecture for
      interactive parallel computing.
    '';
    maintainers = [ stdenv.lib.maintainers.bjornfor ];
  };
}
