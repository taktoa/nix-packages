{ mkDerivation, aeson, annotated-wl-pprint, ansi-terminal
, ansi-wl-pprint, array, async, base, base64-bytestring, binary
, blaze-html, blaze-markup, bytestring, cheapskate, containers
, deepseq, directory, filepath, fingertree, fsnotify, haskeline
, ieee754, mtl, network, optparse-applicative, parsers, pretty
, process, regex-tdfa, safe, split, stdenv, tagged, tasty
, tasty-golden, tasty-rerun, terminal-size, text, time
, transformers, transformers-compat, trifecta, uniplate, unix
, unordered-containers, utf8-string, vector
, vector-binary-instances, zip-archive
}:
mkDerivation {
  pname = "idris";
  version = "0.99";
  sha256 = "1sd4vy5rx0mp32xj99qijhknkgw4d2rxvz6wiy3pym6kaqmc497i";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson annotated-wl-pprint ansi-terminal ansi-wl-pprint array async
    base base64-bytestring binary blaze-html blaze-markup bytestring
    cheapskate containers deepseq directory filepath fingertree
    fsnotify haskeline ieee754 mtl network optparse-applicative parsers
    pretty process regex-tdfa safe split terminal-size text time
    transformers transformers-compat trifecta uniplate unix
    unordered-containers utf8-string vector vector-binary-instances
    zip-archive
  ];
  executableHaskellDepends = [
    base directory filepath haskeline transformers
  ];
  testHaskellDepends = [
    base bytestring containers directory filepath haskeline
    optparse-applicative process tagged tasty tasty-golden tasty-rerun
    time transformers
  ];
  homepage = "http://www.idris-lang.org/";
  description = "Functional Programming Language with Dependent Types";
  license = stdenv.lib.licenses.bsd3;
}
