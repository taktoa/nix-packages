{ mkDerivation, base, Cabal, containers, directory, fetchgit
, filepath, haskell-src-exts, process, setlocale, stdenv, uniplate
}:
mkDerivation {
  pname = "hgettext";
  version = "0.1.30";
  src = fetchgit {
    url = "https://github.com/trofi/hgettext.git";
    sha256 = "1kpcfc7n0gqc4ll119g4lb47jp5qcpdj6q154p7zd98a54csivws";
    rev = "5bf5932d6a40f5b830ffdbaa2cda2948eef52732";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base Cabal containers directory filepath process setlocale
  ];
  executableHaskellDepends = [ base haskell-src-exts uniplate ];
  homepage = "https://github.com/vasylp/hgettext";
  description = "Bindings to libintl.h (gettext, bindtextdomain)";
  license = stdenv.lib.licenses.bsd3;
}
