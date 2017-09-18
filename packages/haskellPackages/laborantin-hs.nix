{ mkDerivation, aeson, async, base, bytestring, containers
, directory, fetchgit, filepath, hslogger, mtl, old-locale
, optparse-applicative, parsec, random, split, stdenv, text, time
, transformers, uuid
}:
mkDerivation {
  pname = "laborantin-hs";
  version = "0.1.6.0";
  src = fetchgit {
    url = "https://github.com/taktoa/laborantin-hs.git";
    sha256 = "0rn99amdvia4bwn3xm1jymbvbphjcd2cnbpbh5v4s33hifs260cv";
    rev = "a3666020b970555be49df6b964bbe53a9b8a70f3";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base bytestring containers directory filepath hslogger
    mtl old-locale optparse-applicative parsec random split text time
    transformers uuid
  ];
  executableHaskellDepends = [
    aeson base bytestring containers directory hslogger mtl
    optparse-applicative random split text transformers uuid
  ];
  homepage = "https://github.com/lucasdicioccio/laborantin-hs";
  description = "an experiment management framework";
  license = stdenv.lib.licenses.asl20;
}
